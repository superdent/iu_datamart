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

## Entwurfsentscheidungen
### DBMS, Werkzeuge
- Oracle 23ai Free als DBMS (Gründe: Container ohne Installation, Enterprise-Funktionsumfang, Tool-Unterstützung)
- Betrieb als Container unter Podman
- SQL Developer zum Ausführen und Testen, DBeaver für das ER-Diagramm

### Schema-Grundsätze
- Primärschlüssel über Sequences statt Identity oder natürlicher Schlüssel, Startwert 1000 für den Testdatenraum
- n:m über Kreuztabellen mit zusammengesetztem Schlüssel
- Wertebereiche als CHECK-Constraints auf Datenbankebene, zusätzlich zur Validierung in der Anwendung, wegen Integrität bei Anwendungsfehlern und externen Importen
- DEFAULT-Werte für Flags, Zeitstempel und Standardland
- Statuswerte als VARCHAR2 mit fester Wertemenge
- DDL mit vorangestellten DROP-Statements, um die Datenbank während der Entwicklung schnell neu aufzusetzen
- Vier Bereiche weitgehend getrennt modelliert, spätere Aufteilung in eigene Dienste möglich
- Keine Trigger oder Stored Procedures, Geschäftslogik bleibt in der Anwendung
- Keine zusätzlichen Indizes, Primärschlüssel und UNIQUE werden automatisch indiziert, nicht-eindeutige Fremdschlüssel wären Kandidaten mit geringem Nutzen bei dieser Datenmenge

### Benutzerverwaltung
- Adresse als eigene Tabelle, mehrere je Nutzer, mit Geokoordinaten und Rechnungs- sowie Standard-Flag
- email als eindeutiger Login
- passwort_hash als gesalzener Argon2id-Hash, von der Anwendung gebildet, die Datenbank speichert nur das Ergebnis, theoretisch an einen Identity-Provider auslagerbar
- Soft-Flags suspended und deleted statt physischem Löschen
- profilbild als BLOB in der Datenbank, statt im Dateisystem (Referenzielle Integrität)
- Rollen über rolle und nutzer_rolle, ein Nutzer kann mehrere Rollen tragen
- Rechtevergabe je Rolle in die Anwendung verlagert, nicht ins Modell
- Fachliche Rollen wie Bewerter und Melder aus dem Vorgang abgeleitet, nicht als eigene Rolle
- Rolle-Tabelle mit nur vier Einträgen, als einzige Abweichung von der Zehn-Einträge-Regel

### Katalog
- Trennung Buch und Exemplar, Konsequenz: dasselbe Buch mehrfach ohne Duplikate, eindeutige Verfügbarkeitssuche
- Autor unabhängig von Büchern, mit Land und Beschreibung zur Unterscheidung bei gleichen Autorennamen
- Genre eigene Tabelle, bezeichnung eindeutig
- isbn optional, aber eindeutig
- freigabe_status am Buch als Lebenszyklus
- max_leihdauer_tage je Exemplar statt je Buch oder global, die Entscheidung trifft der Verleiher
- postversand_moeglich als Option je Exemplar
- gesperrt am Exemplar für die Admin-Sperre
- Duplikatmeldung als eigener Vorgang für den Pfleger, mit Verweis auf Original und Duplikat

### Ausleihprozess
- Prozess in eigene Tabellen je Schritt zerlegt statt einer Vorgangstabelle mit Status
- Anfrage als Dreifachbeziehung Exemplar, Leiher, Verleiher
- Ausleihe 1:1 zur Anfrage
- geplantes gegen tatsächliches Rückgabedatum getrennt
- Zustand bei Übergabe und bei Rückgabe getrennt erfasst
- Abbruch im Ausleihe-Satz statt eigener Tabelle
- anfrage_nachricht als Chat je Anfrage mit gelesen-Flag

### Bewertungen
- Bewertung an eine abgeschlossene Ausleihe gebunden
- Entweder Buch oder Nutzer bewertet, per CHECK erzwungen
- Bewerter und Bewerteter direkt gespeichert für einfache Abfragen

### Abfragen, Testdaten, Validierung
- Jede Abfrage ein eigenständiger Usecase, mit CTEs und Subqueries
- Räumliche Suche über Geokoordinaten, Distanz per Haversine in SQL statt Geodatentyp
- Testdaten aus Open Library API und Wikidata, aufbereitet per Python
- Ungleiche Verteilung von Adressen und Nutzern ohne Exemplare für realistische Sonderfälle
- Flask-MVP mit Blueprint-Struktur und oracledb zur Prüfung des Schemas im Zusammenspiel
- Drei-Phasen-Vorgehen mit Abgabe über GitHub samt README und Installationsanleitung

## Ausblick
- Historisierung statusführender Tabellen über Flashback Data Archive, ohne Trigger
