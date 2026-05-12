from flask import Flask, render_template, session
from db import get_db, close_db

app = Flask(__name__)
app.secret_key = "bookshare-dev-secret"

# Hartcodierter Admin-Nutzer fuer Entwicklung (Dirk Koehler, nutzer_id=30)
MOCK_USER = {
    "nutzer_id": 30,
    "vorname": "Dirk",
    "nachname": "Koehler",
    "rolle": "ADMIN"
}

@app.before_request
def set_mock_user():
    session.setdefault("nutzer_id", MOCK_USER["nutzer_id"])
    session.setdefault("vorname", MOCK_USER["vorname"])
    session.setdefault("nachname", MOCK_USER["nachname"])
    session.setdefault("rolle", MOCK_USER["rolle"])


@app.teardown_appcontext
def teardown_db(e=None):
    close_db()


@app.route("/")
def menu():
    return render_template("menu.html")


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


if __name__ == "__main__":
    app.run(debug=True)
