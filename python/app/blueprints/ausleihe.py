from flask import Blueprint, render_template, request, redirect, url_for, session
from db import get_db

ausleihe_bp = Blueprint("ausleihe", __name__)


@ausleihe_bp.route("/ausleihe")
def ausleihe_index():
    return redirect(url_for("ausleihe.ausleihe_meine"))


@ausleihe_bp.route("/ausleihe/anfrage/<int:exemplar_id>", methods=["GET", "POST"])
def ausleihe_anfrage(exemplar_id):
    db = get_db()
    cursor = db.cursor()

    cursor.execute("""
        SELECT e.exemplar_id, e.zustand, e.max_leihdauer_tage, e.postversand_moeglich,
               e.besitzer_id,
               n.vorname AS besitzer_vorname, n.nachname AS besitzer_nachname,
               b.titel, b.buch_id
        FROM exemplar e
        JOIN nutzer n ON e.besitzer_id = n.nutzer_id
        JOIN buch b ON e.buch_id = b.buch_id
        WHERE e.exemplar_id = :id
    """, {"id": exemplar_id})
    row = cursor.fetchone()
    if not row:
        cursor.close()
        return "Exemplar nicht gefunden", 404

    cols = [col[0].lower() for col in cursor.description]
    exemplar = dict(zip(cols, row))

    if request.method == "POST":
        nachricht = request.form.get("nachricht", "")
        leiher_id = session["nutzer_id"]
        verleiher_id = exemplar["besitzer_id"]

        cursor.execute("""
            SELECT COUNT(*) FROM ausleihanfrage
            WHERE exemplar_id = :eid
              AND leiher_id = :lid
              AND status = 'OFFEN'
        """, {"eid": exemplar_id, "lid": leiher_id})
        bereits_offen = cursor.fetchone()[0]

        if bereits_offen:
            cursor.close()
            return render_template("ausleihe_anfrage.html",
                                   exemplar=exemplar,
                                   fehler="Du hast bereits eine offene Anfrage für dieses Exemplar.")

        cursor.execute("""
            INSERT INTO ausleihanfrage
                (exemplar_id, leiher_id, verleiher_id, nachricht)
            VALUES
                (:eid, :lid, :vid, :msg)
        """, {
            "eid": exemplar_id,
            "lid": leiher_id,
            "vid": verleiher_id,
            "msg": nachricht or None
        })
        db.commit()
        cursor.close()
        return redirect(url_for("ausleihe.ausleihe_meine"))

    cursor.close()
    return render_template("ausleihe_anfrage.html", exemplar=exemplar, fehler=None)


@ausleihe_bp.route("/ausleihe/meine")
def ausleihe_meine():
    db = get_db()
    cursor = db.cursor()
    nutzer_id = session["nutzer_id"]

    cursor.execute("""
        SELECT aa.anfrage_id, aa.status, aa.anfragedatum, aa.nachricht,
               b.titel, b.buch_id,
               n.vorname AS verleiher_vorname, n.nachname AS verleiher_nachname,
               e.zustand, e.exemplar_id
        FROM ausleihanfrage aa
        JOIN exemplar e ON aa.exemplar_id = e.exemplar_id
        JOIN buch b ON e.buch_id = b.buch_id
        JOIN nutzer n ON aa.verleiher_id = n.nutzer_id
        WHERE aa.leiher_id = :id
        ORDER BY aa.anfragedatum DESC
    """, {"id": nutzer_id})
    cols = [col[0].lower() for col in cursor.description]
    als_leiher = [dict(zip(cols, row)) for row in cursor.fetchall()]

    cursor.execute("""
        SELECT aa.anfrage_id, aa.status, aa.anfragedatum, aa.nachricht,
               b.titel, b.buch_id,
               n.vorname AS leiher_vorname, n.nachname AS leiher_nachname,
               e.zustand, e.exemplar_id
        FROM ausleihanfrage aa
        JOIN exemplar e ON aa.exemplar_id = e.exemplar_id
        JOIN buch b ON e.buch_id = b.buch_id
        JOIN nutzer n ON aa.leiher_id = n.nutzer_id
        WHERE aa.verleiher_id = :id
        ORDER BY aa.anfragedatum DESC
    """, {"id": nutzer_id})
    cols2 = [col[0].lower() for col in cursor.description]
    als_verleiher = [dict(zip(cols2, row)) for row in cursor.fetchall()]

    cursor.close()
    return render_template("ausleihe_meine.html",
                           als_leiher=als_leiher,
                           als_verleiher=als_verleiher)


@ausleihe_bp.route("/ausleihe/anfrage/<int:anfrage_id>/bestaetigen")
def ausleihe_bestaetigen(anfrage_id):
    db = get_db()
    cursor = db.cursor()

    cursor.execute("""
        SELECT aa.anfrage_id, aa.exemplar_id, aa.verleiher_id, aa.status,
               e.zustand
        FROM ausleihanfrage aa
        JOIN exemplar e ON aa.exemplar_id = e.exemplar_id
        WHERE aa.anfrage_id = :id
    """, {"id": anfrage_id})
    row = cursor.fetchone()
    if not row:
        cursor.close()
        return "Anfrage nicht gefunden", 404

    cols = [col[0].lower() for col in cursor.description]
    anfrage = dict(zip(cols, row))

    if anfrage["verleiher_id"] != session["nutzer_id"]:
        cursor.close()
        return "Nicht berechtigt", 403
    if anfrage["status"] != "OFFEN":
        cursor.close()
        return redirect(url_for("ausleihe.ausleihe_meine"))

    cursor.execute("""
        UPDATE ausleihanfrage SET status = 'BESTAETIGT'
        WHERE anfrage_id = :id
    """, {"id": anfrage_id})

    cursor.execute("""
        INSERT INTO ausleihe (anfrage_id, geplantes_rueckgabedatum, zustand_bei_uebergabe, status)
        VALUES (:aid, SYSDATE + 60, :zustand, 'LAUFEND')
    """, {"aid": anfrage_id, "zustand": anfrage["zustand"]})

    db.commit()
    cursor.close()
    return redirect(url_for("ausleihe.ausleihe_meine"))


@ausleihe_bp.route("/ausleihe/anfrage/<int:anfrage_id>/ablehnen")
def ausleihe_ablehnen(anfrage_id):
    db = get_db()
    cursor = db.cursor()

    cursor.execute("""
        SELECT verleiher_id, status FROM ausleihanfrage WHERE anfrage_id = :id
    """, {"id": anfrage_id})
    row = cursor.fetchone()
    if not row:
        cursor.close()
        return "Anfrage nicht gefunden", 404

    verleiher_id, status = row
    if verleiher_id != session["nutzer_id"]:
        cursor.close()
        return "Nicht berechtigt", 403
    if status != "OFFEN":
        cursor.close()
        return redirect(url_for("ausleihe.ausleihe_meine"))

    cursor.execute("""
        UPDATE ausleihanfrage SET status = 'ABGELEHNT'
        WHERE anfrage_id = :id
    """, {"id": anfrage_id})
    db.commit()
    cursor.close()
    return redirect(url_for("ausleihe.ausleihe_meine"))


@ausleihe_bp.route("/ausleihe/anfrage/<int:anfrage_id>/detail")
def ausleihe_detail(anfrage_id):
    db = get_db()
    cursor = db.cursor()

    cursor.execute("""
        SELECT aa.anfrage_id, aa.status, aa.anfragedatum, aa.nachricht,
               aa.leiher_id, aa.verleiher_id,
               b.titel, b.buch_id,
               e.exemplar_id, e.zustand, e.max_leihdauer_tage, e.postversand_moeglich,
               nl.vorname AS leiher_vorname, nl.nachname AS leiher_nachname,
               nv.vorname AS verleiher_vorname, nv.nachname AS verleiher_nachname,
               a.strasse, a.hausnummer, a.plz, a.stadt
        FROM ausleihanfrage aa
        JOIN exemplar e ON aa.exemplar_id = e.exemplar_id
        JOIN buch b ON e.buch_id = b.buch_id
        JOIN nutzer nl ON aa.leiher_id = nl.nutzer_id
        JOIN nutzer nv ON aa.verleiher_id = nv.nutzer_id
        LEFT JOIN adresse a ON e.abholort_id = a.adresse_id
        WHERE aa.anfrage_id = :id
    """, {"id": anfrage_id})
    row = cursor.fetchone()
    if not row:
        cursor.close()
        return "Anfrage nicht gefunden", 404

    cols = [col[0].lower() for col in cursor.description]
    anfrage = dict(zip(cols, row))

    # Ausleihe-Daten falls vorhanden
    cursor.execute("""
        SELECT ausleihe_id, ausleihdatum, geplantes_rueckgabedatum, status,
               tatsaechliches_rueckgabedatum
        FROM ausleihe WHERE anfrage_id = :id
    """, {"id": anfrage_id})
    row2 = cursor.fetchone()
    ausleihe = None
    if row2:
        cols2 = [col[0].lower() for col in cursor.description]
        ausleihe = dict(zip(cols2, row2))

    # Nachrichtenverlauf laden
    cursor.execute("""
        SELECT an.inhalt, an.gesendet_am, an.gelesen,
               n.vorname, n.nachname, an.sender_id
        FROM anfrage_nachricht an
        JOIN nutzer n ON an.sender_id = n.nutzer_id
        WHERE an.anfrage_id = :id
        ORDER BY an.gesendet_am ASC
    """, {"id": anfrage_id})
    cols3 = [col[0].lower() for col in cursor.description]
    nachrichten = [dict(zip(cols3, row)) for row in cursor.fetchall()]

    cursor.close()
    return render_template("ausleihe_detail.html", anfrage=anfrage, ausleihe=ausleihe, nachrichten=nachrichten)


@ausleihe_bp.route("/ausleihe/anfrage/<int:anfrage_id>/nachricht", methods=["POST"])
def ausleihe_nachricht_senden(anfrage_id):
    db = get_db()
    cursor = db.cursor()

    # Prüfen ob der Nutzer an der Anfrage beteiligt ist
    cursor.execute("""
        SELECT leiher_id, verleiher_id FROM ausleihanfrage WHERE anfrage_id = :id
    """, {"id": anfrage_id})
    row = cursor.fetchone()
    if not row:
        cursor.close()
        return "Anfrage nicht gefunden", 404

    leiher_id, verleiher_id = row
    nutzer_id = session["nutzer_id"]
    if nutzer_id not in (leiher_id, verleiher_id):
        cursor.close()
        return "Nicht berechtigt", 403

    inhalt = request.form.get("inhalt", "").strip()
    if inhalt:
        cursor.execute("""
            INSERT INTO anfrage_nachricht (anfrage_id, sender_id, inhalt)
            VALUES (:aid, :sid, :inhalt)
        """, {"aid": anfrage_id, "sid": nutzer_id, "inhalt": inhalt})
        db.commit()

    cursor.close()
    return redirect(url_for("ausleihe.ausleihe_detail", anfrage_id=anfrage_id))


@ausleihe_bp.route("/ausleihe/<int:ausleihe_id>/uebergeben")
def ausleihe_uebergeben(ausleihe_id):
    db = get_db()
    cursor = db.cursor()

    cursor.execute("""
        SELECT al.ausleihe_id, al.status, aa.verleiher_id, aa.anfrage_id
        FROM ausleihe al
        JOIN ausleihanfrage aa ON al.anfrage_id = aa.anfrage_id
        WHERE al.ausleihe_id = :id
    """, {"id": ausleihe_id})
    row = cursor.fetchone()
    if not row:
        cursor.close()
        return "Ausleihe nicht gefunden", 404

    ausleihe_id_db, status, verleiher_id, anfrage_id = row
    if verleiher_id != session["nutzer_id"]:
        cursor.close()
        return "Nicht berechtigt", 403
    if status != "LAUFEND":
        cursor.close()
        return redirect(url_for("ausleihe.ausleihe_detail", anfrage_id=anfrage_id))

    cursor.execute("""
        UPDATE ausleihe SET status = 'UEBERGEBEN' WHERE ausleihe_id = :id
    """, {"id": ausleihe_id})
    db.commit()
    cursor.close()
    return redirect(url_for("ausleihe.ausleihe_detail", anfrage_id=anfrage_id))


@ausleihe_bp.route("/ausleihe/<int:ausleihe_id>/zurueckgeben")
def ausleihe_zurueckgeben(ausleihe_id):
    db = get_db()
    cursor = db.cursor()

    cursor.execute("""
        SELECT al.ausleihe_id, al.status, aa.leiher_id, aa.verleiher_id,
               aa.anfrage_id, aa.exemplar_id
        FROM ausleihe al
        JOIN ausleihanfrage aa ON al.anfrage_id = aa.anfrage_id
        WHERE al.ausleihe_id = :id
    """, {"id": ausleihe_id})
    row = cursor.fetchone()
    if not row:
        cursor.close()
        return "Ausleihe nicht gefunden", 404

    cols = [col[0].lower() for col in cursor.description]
    al = dict(zip(cols, row))

    if al["leiher_id"] != session["nutzer_id"]:
        cursor.close()
        return "Nicht berechtigt", 403
    if al["status"] != "UEBERGEBEN":
        cursor.close()
        return redirect(url_for("ausleihe.ausleihe_detail", anfrage_id=al["anfrage_id"]))

    # Ausleihe abschliessen
    cursor.execute("""
        UPDATE ausleihe SET status = 'ABGESCHLOSSEN', tatsaechliches_rueckgabedatum = SYSDATE
        WHERE ausleihe_id = :id
    """, {"id": ausleihe_id})

    # Rückgabe dokumentieren – Zustand bei Rückgabe = Zustand bei Übergabe (Vereinfachung)
    cursor.execute("""
        SELECT zustand_bei_uebergabe FROM ausleihe WHERE ausleihe_id = :id
    """, {"id": ausleihe_id})
    zustand = cursor.fetchone()[0]

    cursor.execute("""
        INSERT INTO rueckgabe (ausleihe_id, exemplar_id, zustand_bei_rueckgabe)
        VALUES (:aid, :eid, :zustand)
    """, {"aid": ausleihe_id, "eid": al["exemplar_id"], "zustand": zustand})

    db.commit()
    cursor.close()
    return redirect(url_for("ausleihe.ausleihe_detail", anfrage_id=al["anfrage_id"]))
