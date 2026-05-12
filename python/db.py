import oracledb
from flask import g

DB_USER = "bookshare"
DB_PASSWORD = "manager"
DB_DSN = "localhost/FREEPDB1"


def get_db():
    if "db" not in g:
        g.db = oracledb.connect(user=DB_USER, password=DB_PASSWORD, dsn=DB_DSN)
    return g.db


def close_db(e=None):
    db = g.pop("db", None)
    if db is not None:
        db.close()
