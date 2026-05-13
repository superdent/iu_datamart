from flask import Flask, session
from db import get_db, close_db

from app.blueprints.benutzer import benutzer_bp
from app.blueprints.katalog import katalog_bp
from app.blueprints.ausleihe import ausleihe_bp
from app.blueprints.bewertungen import bewertungen_bp

MOCK_ADMIN = {
    "nutzer_id": 30,
    "vorname": "Dirk",
    "nachname": "Koehler",
    "rolle": "ADMIN"
}


def create_app():
    app = Flask(__name__, template_folder="../templates")
    app.secret_key = "bookshare-dev-secret"

    @app.before_request
    def set_mock_user():
        session.setdefault("nutzer_id", MOCK_ADMIN["nutzer_id"])
        session.setdefault("vorname",   MOCK_ADMIN["vorname"])
        session.setdefault("nachname",  MOCK_ADMIN["nachname"])
        session.setdefault("rolle",     MOCK_ADMIN["rolle"])

    @app.teardown_appcontext
    def teardown_db(e=None):
        close_db()

    app.register_blueprint(benutzer_bp)
    app.register_blueprint(katalog_bp)
    app.register_blueprint(ausleihe_bp)
    app.register_blueprint(bewertungen_bp)

    @app.route("/")
    def menu():
        from flask import render_template
        return render_template("menu.html")

    @app.route("/switch-user/<int:nutzer_id>")
    def switch_user(nutzer_id):
        from flask import redirect, url_for
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

        from flask import redirect, url_for
        return redirect(url_for("menu"))

    return app