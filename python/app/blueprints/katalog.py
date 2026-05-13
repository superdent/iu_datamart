from flask import Blueprint, render_template
from db import get_db

katalog_bp = Blueprint("katalog", __name__)


@katalog_bp.route("/katalog")
def katalog_liste():
    db = get_db()
    cursor = db.cursor()
    cursor.execute("""
        SELECT b.buch_id, b.titel, b.erscheinungsjahr, b.sprache, b.freigabe_status,
               LISTAGG(DISTINCT a.vorname || ' ' || a.nachname, ', ')
                   WITHIN GROUP (ORDER BY a.nachname) AS autoren,
               LISTAGG(DISTINCT g.bezeichnung, ', ')
                   WITHIN GROUP (ORDER BY g.bezeichnung) AS genres,
               COUNT(DISTINCT e.exemplar_id) AS anzahl_exemplare
        FROM buch b
        LEFT JOIN buch_autor ba ON b.buch_id = ba.buch_id
        LEFT JOIN autor a ON ba.autor_id = a.autor_id
        LEFT JOIN buch_genre bg ON b.buch_id = bg.buch_id
        LEFT JOIN genre g ON bg.genre_id = g.genre_id
        LEFT JOIN exemplar e ON b.buch_id = e.buch_id
        GROUP BY b.buch_id, b.titel, b.erscheinungsjahr, b.sprache, b.freigabe_status
        ORDER BY b.titel
    """)
    cols = [col[0].lower() for col in cursor.description]
    buch_liste = [dict(zip(cols, row)) for row in cursor.fetchall()]
    cursor.close()
    return render_template("katalog.html", buch_liste=buch_liste)


@katalog_bp.route("/katalog/neu")
def katalog_neu():
    return "Neues Buch – noch nicht implementiert"


@katalog_bp.route("/katalog/<int:buch_id>")
def katalog_detail(buch_id):
    db = get_db()
    cursor = db.cursor()

    cursor.execute("""
        SELECT b.buch_id, b.titel, b.erscheinungsjahr, b.sprache, b.freigabe_status, b.isbn,
               LISTAGG(DISTINCT a.vorname || ' ' || a.nachname, ', ')
                   WITHIN GROUP (ORDER BY a.nachname) AS autoren,
               LISTAGG(DISTINCT g.bezeichnung, ', ')
                   WITHIN GROUP (ORDER BY g.bezeichnung) AS genres
        FROM buch b
        LEFT JOIN buch_autor ba ON b.buch_id = ba.buch_id
        LEFT JOIN autor a ON ba.autor_id = a.autor_id
        LEFT JOIN buch_genre bg ON b.buch_id = bg.buch_id
        LEFT JOIN genre g ON bg.genre_id = g.genre_id
        WHERE b.buch_id = :id
        GROUP BY b.buch_id, b.titel, b.erscheinungsjahr, b.sprache, b.freigabe_status, b.isbn
    """, {"id": buch_id})
    row = cursor.fetchone()
    if not row:
        return "Buch nicht gefunden", 404
    cols = [col[0].lower() for col in cursor.description]
    buch = dict(zip(cols, row))

    cursor.execute("""
        SELECT e.exemplar_id, e.zustand, e.max_leihdauer_tage, e.postversand_moeglich,
               n.vorname AS besitzer_vorname, n.nachname AS besitzer_nachname,
               a.strasse, a.hausnummer, a.plz, a.stadt
        FROM exemplar e
        JOIN nutzer n ON e.besitzer_id = n.nutzer_id
        JOIN adresse a ON e.abholort_id = a.adresse_id
        WHERE e.buch_id = :id
        ORDER BY e.zustand
    """, {"id": buch_id})
    cols2 = [col[0].lower() for col in cursor.description]
    exemplare = [dict(zip(cols2, row)) for row in cursor.fetchall()]
    cursor.close()

    return render_template("katalog_detail.html", buch=buch, exemplare=exemplare)


@katalog_bp.route("/katalog/<int:buch_id>/edit")
def katalog_edit(buch_id):
    return f"Buch {buch_id} editieren – noch nicht implementiert"


@katalog_bp.route("/katalog/<int:buch_id>/delete")
def katalog_delete(buch_id):
    return f"Buch {buch_id} löschen – noch nicht implementiert"
