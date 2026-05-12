from flask import Flask, render_template, session, redirect, url_for
from db import get_db, close_db

app = Flask(__name__)
app.secret_key = "bookshare-dev-secret"

MOCK_ADMIN = {
    "nutzer_id": 30,
    "vorname": "Dirk",
    "nachname": "Koehler",
    "rolle": "ADMIN"
}

@app.before_request
def set_mock_user():
    session.setdefault("nutzer_id", MOCK_ADMIN["nutzer_id"])
    session.setdefault("vorname", MOCK_ADMIN["vorname"])
    session.setdefault("nachname", MOCK_ADMIN["nachname"])
    session.setdefault("rolle", MOCK_ADMIN["rolle"])


@app.teardown_appcontext
def teardown_db(e=None):
    close_db()


@app.route("/")
def menu():
    return render_template("menu.html")


@app.route("/switch-user/<int:nutzer_id>")
def switch_user(nutzer_id):
    db = get_db()
    cursor = db.cursor()
    cursor.execute("""
        SELECT n.nutzer_id, n.vorname, n.nachname,
               LISTAGG(r.rollenname, ', ') WITHIN GROUP (ORDER BY r.rollenname) AS rollen
        FROM nutzer n
        LEFT JOIN nutzer_rolle nr ON n.nutzer_id = nr.nutzer_id
        LEFT JOIN rolle r ON nr.rolle_id = r.rolle_id
        WHERE n.nutzer_id = :id AND n.deleted = 0
        GROUP BY n.nutzer_id, n.vorname, n.nachname
    """, {"id": nutzer_id})
    row = cursor.fetchone()
    cursor.close()

    if row:
        session["nutzer_id"] = row[0]
        session["vorname"]   = row[1]
        session["nachname"]  = row[2]
        session["rolle"]     = row[3]

    return redirect(url_for("menu"))


# ------------------------------------------------------------------
# BENUTZER
# ------------------------------------------------------------------

@app.route("/benutzer")
def benutzer_liste():
    db = get_db()
    cursor = db.cursor()
    cursor.execute("""
        SELECT n.nutzer_id, n.vorname, n.nachname, n.email, n.suspended,
               LISTAGG(r.rollenname, ', ') WITHIN GROUP (ORDER BY r.rollenname) AS rollen
        FROM nutzer n
        LEFT JOIN nutzer_rolle nr ON n.nutzer_id = nr.nutzer_id
        LEFT JOIN rolle r ON nr.rolle_id = r.rolle_id
        WHERE n.deleted = 0
        GROUP BY n.nutzer_id, n.vorname, n.nachname, n.email, n.suspended
        ORDER BY n.nachname, n.vorname
    """)
    cols = [col[0].lower() for col in cursor.description]
    nutzer_liste = [dict(zip(cols, row)) for row in cursor.fetchall()]
    cursor.close()
    return render_template("benutzer.html", nutzer_liste=nutzer_liste)


@app.route("/benutzer/neu")
def benutzer_neu():
    return "Neuer Benutzer – noch nicht implementiert"


@app.route("/benutzer/<int:nutzer_id>/edit")
def benutzer_edit(nutzer_id):
    return f"Benutzer {nutzer_id} editieren – noch nicht implementiert"


@app.route("/benutzer/<int:nutzer_id>/delete")
def benutzer_delete(nutzer_id):
    return f"Benutzer {nutzer_id} löschen – noch nicht implementiert"


# ------------------------------------------------------------------
# KATALOG
# ------------------------------------------------------------------

@app.route("/katalog")
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


@app.route("/katalog/neu")
def katalog_neu():
    return "Neues Buch – noch nicht implementiert"


@app.route("/katalog/<int:buch_id>")
def katalog_detail(buch_id):
    db = get_db()
    cursor = db.cursor()

    # Buchinfo
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

    # Exemplare
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


@app.route("/katalog/<int:buch_id>/edit")
def katalog_edit(buch_id):
    return f"Buch {buch_id} editieren – noch nicht implementiert"


@app.route("/katalog/<int:buch_id>/delete")
def katalog_delete(buch_id):
    return f"Buch {buch_id} löschen – noch nicht implementiert"


# ------------------------------------------------------------------
# AUSLEIHE
# ------------------------------------------------------------------

@app.route("/ausleihe")
def ausleihe():
    return "Ausleihprozess – noch nicht implementiert"


# ------------------------------------------------------------------
# BEWERTUNGEN
# ------------------------------------------------------------------

@app.route("/bewertungen")
def bewertungen():
    return "Bewertungen – noch nicht implementiert"


if __name__ == "__main__":
    app.run(debug=True)
