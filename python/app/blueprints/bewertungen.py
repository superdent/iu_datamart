from flask import Blueprint, render_template, request, redirect, url_for, session
from db import get_db

bewertungen_bp = Blueprint("bewertungen", __name__)


@bewertungen_bp.route("/bewertungen")
def bewertungen():
    db = get_db()
    cursor = db.cursor()
    nutzer_id = session["nutzer_id"]

    # Alle abgeschlossenen Ausleihen des Nutzers (als Leiher oder Verleiher)
    # plus Info ob Bewertungen schon abgegeben wurden
    cursor.execute("""
        SELECT al.ausleihe_id, al.ausleihdatum, al.tatsaechliches_rueckgabedatum,
               b.titel, b.buch_id,
               aa.leiher_id, aa.verleiher_id,
               nl.vorname AS leiher_vorname, nl.nachname AS leiher_nachname,
               nv.vorname AS verleiher_vorname, nv.nachname AS verleiher_nachname,
               (SELECT COUNT(*) FROM bewertung bw
                WHERE bw.ausleihe_id = al.ausleihe_id
                  AND bw.bewerter_id = :uid1) AS bereits_bewertet
        FROM ausleihe al
        JOIN ausleihanfrage aa ON al.anfrage_id = aa.anfrage_id
        JOIN exemplar e ON aa.exemplar_id = e.exemplar_id
        JOIN buch b ON e.buch_id = b.buch_id
        JOIN nutzer nl ON aa.leiher_id = nl.nutzer_id
        JOIN nutzer nv ON aa.verleiher_id = nv.nutzer_id
        WHERE al.status = 'ABGESCHLOSSEN'
          AND (aa.leiher_id = :uid2 OR aa.verleiher_id = :uid3)
        ORDER BY al.tatsaechliches_rueckgabedatum DESC
    """, {"uid1": nutzer_id, "uid2": nutzer_id, "uid3": nutzer_id})
    cols = [col[0].lower() for col in cursor.description]
    ausleihen = [dict(zip(cols, row)) for row in cursor.fetchall()]
    cursor.close()

    return render_template("bewertungen.html", ausleihen=ausleihen)


@bewertungen_bp.route("/bewertungen/ausleihe/<int:ausleihe_id>", methods=["GET", "POST"])
def bewertung_erstellen(ausleihe_id):
    db = get_db()
    cursor = db.cursor()
    nutzer_id = session["nutzer_id"]

    # Ausleihe laden
    cursor.execute("""
        SELECT al.ausleihe_id, al.status,
               aa.leiher_id, aa.verleiher_id, aa.anfrage_id,
               b.titel, b.buch_id,
               nl.vorname AS leiher_vorname, nl.nachname AS leiher_nachname,
               nv.vorname AS verleiher_vorname, nv.nachname AS verleiher_nachname
        FROM ausleihe al
        JOIN ausleihanfrage aa ON al.anfrage_id = aa.anfrage_id
        JOIN exemplar e ON aa.exemplar_id = e.exemplar_id
        JOIN buch b ON e.buch_id = b.buch_id
        JOIN nutzer nl ON aa.leiher_id = nl.nutzer_id
        JOIN nutzer nv ON aa.verleiher_id = nv.nutzer_id
        WHERE al.ausleihe_id = :id
    """, {"id": ausleihe_id})
    row = cursor.fetchone()
    if not row:
        cursor.close()
        return "Ausleihe nicht gefunden", 404

    cols = [col[0].lower() for col in cursor.description]
    ausleihe = dict(zip(cols, row))

    if ausleihe["status"] != "ABGESCHLOSSEN":
        cursor.close()
        return redirect(url_for("bewertungen.bewertungen"))

    if nutzer_id not in (ausleihe["leiher_id"], ausleihe["verleiher_id"]):
        cursor.close()
        return "Nicht berechtigt", 403

    # Bereits abgegebene Bewertungen laden
    cursor.execute("""
        SELECT bewerteter_nutzer_id, buch_id, sterne, kommentar
        FROM bewertung WHERE ausleihe_id = :ausleihe_id AND bewerter_id = :bewerter_id
    """, {"ausleihe_id": ausleihe_id, "bewerter_id": nutzer_id})
    cols2 = [col[0].lower() for col in cursor.description]
    bestehende = [dict(zip(cols2, r)) for r in cursor.fetchall()]
    bereits_nutzer = any(b["bewerteter_nutzer_id"] is not None for b in bestehende)
    bereits_buch = any(b["buch_id"] is not None for b in bestehende)

    fehler = None

    if request.method == "POST":
        # Nutzerbewertung
        if not bereits_nutzer:
            sterne_nutzer = request.form.get("sterne_nutzer")
            kommentar_nutzer = request.form.get("kommentar_nutzer", "").strip()
            if sterne_nutzer:
                bewerteter_id = ausleihe["verleiher_id"] if nutzer_id == ausleihe["leiher_id"] else ausleihe["leiher_id"]
                cursor.execute("""
                    INSERT INTO bewertung (ausleihe_id, bewerter_id, bewerteter_nutzer_id, sterne, kommentar)
                    VALUES (:aid, :bid, :nid, :s, :k)
                """, {
                    "aid": ausleihe_id, "bid": nutzer_id, "nid": bewerteter_id,
                    "s": int(sterne_nutzer), "k": kommentar_nutzer or None
                })

        # Buchbewertung
        if not bereits_buch:
            sterne_buch = request.form.get("sterne_buch")
            kommentar_buch = request.form.get("kommentar_buch", "").strip()
            if sterne_buch:
                cursor.execute("""
                    INSERT INTO bewertung (ausleihe_id, bewerter_id, buch_id, sterne, kommentar)
                    VALUES (:aid, :bid, :buchid, :s, :k)
                """, {
                    "aid": ausleihe_id, "bid": nutzer_id, "buchid": ausleihe["buch_id"],
                    "s": int(sterne_buch), "k": kommentar_buch or None
                })

        db.commit()
        cursor.close()
        return redirect(url_for("bewertungen.bewertungen"))

    cursor.close()
    return render_template("bewertung_erstellen.html",
                           ausleihe=ausleihe,
                           bereits_nutzer=bereits_nutzer,
                           bereits_buch=bereits_buch,
                           fehler=fehler)
