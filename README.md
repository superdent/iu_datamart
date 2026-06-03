# Buchtausch-App – Datenbankprojekt

Portfolioprojekt im Rahmen des Moduls DLBDSPBDM01_D an der IU Internationale Hochschule.

Ziel war die Konzeption und Implementierung einer relationalen Datenbank für eine Buchtausch-App, in der Nutzer Bücher zum Verleih anbieten und ausleihen können.

---

## Technologie-Stack

- Oracle Database 23ai Free (containerisiert via Podman)
- SQL Developer (DDL/DML-Ausführung)
- DBeaver Enterprise (ER-Diagramme)
- Python / Flask (MVP zur Schema-Validierung)

---

## Repository-Struktur

```
datamart/
├── abgabe/
│   ├── 01_Konzeptionsphase/        Abgabe-PDF Phase 1
│   ├── 02_Erarbeitungs-Reflexionsphase/   Abgabe-PDF Phase 2
│   └── 03_Finalisierungsphase/     Abgabe-PDFs Phase 3, SQL-Dateien
├── data/
│   ├── sql/                        SQL-Skripte (Arbeitsstand)
│   │   ├── create_user.sql         Datenbankbenutzer anlegen
│   │   ├── create_tables.sql       DDL: Tabellen, Sequenzen, Constraints
│   │   ├── dummy_data.sql          Testdaten (mind. 10 Einträge pro Tabelle)
│   │   └── queries.sql             Beispielabfragen
│   └── work/                       Hilfsdateien zur Datengenerierung
├── dokumentation/                  Arbeitsdokumente (Word)
|   ├── diagrams/                   ER-Diagramme (DBeaver-Export)
└── python/                         Flask-MVP zur Schema-Validierung
    ├── app/
    │   ├── blueprints/             Modulare Routenstruktur (Katalog, Ausleihe, Bewertungen, Benutzer)
    │   └── templates/              HTML-Templates
    ├── tools/                      Hilfsskripte zur Datengenerierung
    ├── db.py                       Datenbankverbindung (oracledb)
    ├── run.py                      Startpunkt der Anwendung
    └── requirements.txt            Python-Abhängigkeiten
```

---

## Installationsanleitung

### Voraussetzungen

- Oracle Database 23ai Free (lokal oder via Podman)
- SQL Developer oder ein vergleichbares SQL-Werkzeug
- Ein Datenbankbenutzer mit ausreichenden Rechten (CREATE TABLE, CREATE SEQUENCE, INSERT)

### Reihenfolge der SQL-Skripte

Die Skripte müssen in der folgenden Reihenfolge ausgeführt werden:

1. `data/sql/create_user.sql` – legt den Datenbankbenutzer an (als SYSDBA ausführen)
2. `data/sql/create_tables.sql` – erstellt alle Tabellen und Sequenzen (als bookshare ausführen)
3. `data/sql/dummy_data.sql` – befüllt die Tabellen mit Testdaten
4. `data/sql/queries.sql` – Beispielabfragen zur Überprüfung

### Flask-MVP (optional)
Benötigt Python 3.12.6.
```
cd python
pip install -r requirements.txt
python run.py
```

Die Anwendung erwartet eine laufende Oracle-Instanz. Verbindungsparameter werden in `db.py` konfiguriert.
