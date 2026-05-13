from flask import Blueprint, render_template
from db import get_db

benutzer_bp = Blueprint("benutzer", __name__)


@benutzer_bp.route("/benutzer")
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


@benutzer_bp.route("/benutzer/neu")
def benutzer_neu():
    return "Neuer Benutzer – noch nicht implementiert"


@benutzer_bp.route("/benutzer/<int:nutzer_id>/edit")
def benutzer_edit(nutzer_id):
    return f"Benutzer {nutzer_id} editieren – noch nicht implementiert"


@benutzer_bp.route("/benutzer/<int:nutzer_id>/delete")
def benutzer_delete(nutzer_id):
    return f"Benutzer {nutzer_id} löschen – noch nicht implementiert"
