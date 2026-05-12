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
