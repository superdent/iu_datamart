-- =============================================================
-- Script 02: Tabellen anlegen
-- Ausfuehren als bookshare
-- =============================================================


-- =============================================================
-- PART 1: CLEANUP (in Abhaengigkeitsreihenfolge droppen)
-- =============================================================

BEGIN EXECUTE IMMEDIATE 'DROP TABLE bewertung CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE rueckgabe CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE ausleihe CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE ausleihanfrage CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE exemplar CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE duplikat_meldung CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE buch_genre CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE buch_autor CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE genre CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE autor CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE buch CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE nutzer_rolle CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE rolle CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE adresse CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE nutzer CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/

-- Sequences droppen
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_nutzer'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_adresse'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_rolle'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_buch'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_autor'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_genre'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_exemplar'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_ausleihanfrage'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_ausleihe'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_rueckgabe'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_bewertung'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP SEQUENCE seq_duplikat_meldung'; EXCEPTION WHEN OTHERS THEN NULL; END;
/


-- =============================================================
-- PART 2: SEQUENCES
-- =============================================================

CREATE SEQUENCE seq_nutzer           START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_adresse          START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_rolle            START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_buch             START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_autor            START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_genre            START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_exemplar         START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_ausleihanfrage   START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_ausleihe         START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_rueckgabe        START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_bewertung        START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_duplikat_meldung START WITH 1 INCREMENT BY 1 NOCACHE;


-- =============================================================
-- PART 3: TABELLEN
-- =============================================================

-- -------------------------------------------------------------
-- NUTZER
-- Registrierte Plattformnutzer
-- -------------------------------------------------------------
CREATE TABLE nutzer (
    nutzer_id           NUMBER          DEFAULT seq_nutzer.NEXTVAL PRIMARY KEY,
    vorname             VARCHAR2(100)   NOT NULL,
    nachname            VARCHAR2(100)   NOT NULL,
    email               VARCHAR2(255)   NOT NULL UNIQUE,
    passwort_hash       VARCHAR2(255)   NOT NULL,
    email_bestaetigt    NUMBER(1)       DEFAULT 0 NOT NULL CHECK (email_bestaetigt IN (0,1)),
    suspended           NUMBER(1)       DEFAULT 0 NOT NULL CHECK (suspended IN (0,1)),
    deleted             NUMBER(1)       DEFAULT 0 NOT NULL CHECK (deleted IN (0,1)),
    created_at          DATE            DEFAULT SYSDATE NOT NULL,
    last_login          DATE,
    profilbild          BLOB
);

-- -------------------------------------------------------------
-- ADRESSE
-- Adressen eines Nutzers; FK auf Nutzer
-- IST_RECHNUNGSADRESSE und IST_STANDARD sind unabhaengige Flags
-- Geodaten fuer raeumliche Suche nach Exemplaren in der Naehe
-- -------------------------------------------------------------
CREATE TABLE adresse (
    adresse_id              NUMBER          DEFAULT seq_adresse.NEXTVAL PRIMARY KEY,
    nutzer_id               NUMBER          NOT NULL REFERENCES nutzer(nutzer_id),
    strasse                 VARCHAR2(100)   NOT NULL,
    hausnummer              VARCHAR2(10)    NOT NULL,
    plz                     VARCHAR2(10)    NOT NULL,
    stadt                   VARCHAR2(100)   NOT NULL,
    land                    VARCHAR2(100)   DEFAULT 'Deutschland' NOT NULL,
    breitengrad             NUMBER(9,6),    -- Latitude
    laengengrad             NUMBER(9,6),    -- Longitude
    ist_rechnungsadresse    NUMBER(1)       DEFAULT 0 NOT NULL CHECK (ist_rechnungsadresse IN (0,1)),
    ist_standard            NUMBER(1)       DEFAULT 0 NOT NULL CHECK (ist_standard IN (0,1))
);

-- -------------------------------------------------------------
-- ROLLE
-- Berechtigungsrollen im System
-- Erwartete Werte: LEIHER, VERLEIHER, PFLEGER, ADMIN
-- -------------------------------------------------------------
CREATE TABLE rolle (
    rolle_id    NUMBER          DEFAULT seq_rolle.NEXTVAL PRIMARY KEY,
    rollenname  VARCHAR2(50)    NOT NULL UNIQUE
);

-- -------------------------------------------------------------
-- NUTZER_ROLLE
-- n:m Zuordnung Nutzer zu Rollen
-- -------------------------------------------------------------
CREATE TABLE nutzer_rolle (
    nutzer_id   NUMBER  NOT NULL REFERENCES nutzer(nutzer_id),
    rolle_id    NUMBER  NOT NULL REFERENCES rolle(rolle_id),
    vergeben_am DATE    DEFAULT SYSDATE NOT NULL,
    CONSTRAINT pk_nutzer_rolle PRIMARY KEY (nutzer_id, rolle_id)
);

-- -------------------------------------------------------------
-- AUTOR
-- Verfasser eines Buches
-- land und beschreibung zur Disambiguierung gleichnamiger Autoren
-- -------------------------------------------------------------
CREATE TABLE autor (
    autor_id        NUMBER          DEFAULT seq_autor.NEXTVAL PRIMARY KEY,
    vorname         VARCHAR2(100),
    nachname        VARCHAR2(100)   NOT NULL,
    land            VARCHAR2(100),
    beschreibung    VARCHAR2(1000)
);

-- -------------------------------------------------------------
-- GENRE
-- Inhaltliche Kategorie eines Buches
-- -------------------------------------------------------------
CREATE TABLE genre (
    genre_id    NUMBER          DEFAULT seq_genre.NEXTVAL PRIMARY KEY,
    bezeichnung VARCHAR2(100)   NOT NULL UNIQUE
);

-- -------------------------------------------------------------
-- BUCH
-- Abstrakte Buchbeschreibung (Katalogeintrag)
-- -------------------------------------------------------------
CREATE TABLE buch (
    buch_id             NUMBER          DEFAULT seq_buch.NEXTVAL PRIMARY KEY,
    isbn                VARCHAR2(20)    UNIQUE,
    titel               VARCHAR2(500)   NOT NULL,
    erscheinungsjahr    NUMBER(4),
    sprache             VARCHAR2(50)    DEFAULT 'Deutsch' NOT NULL,
    freigabe_status     VARCHAR2(20)    DEFAULT 'ENTWURF' NOT NULL
);

-- -------------------------------------------------------------
-- BUCH_AUTOR
-- n:m Zuordnung Buch zu Autoren
-- -------------------------------------------------------------
CREATE TABLE buch_autor (
    buch_id     NUMBER  NOT NULL REFERENCES buch(buch_id),
    autor_id    NUMBER  NOT NULL REFERENCES autor(autor_id),
    CONSTRAINT pk_buch_autor PRIMARY KEY (buch_id, autor_id)
);

-- -------------------------------------------------------------
-- BUCH_GENRE
-- n:m Zuordnung Buch zu Genres
-- -------------------------------------------------------------
CREATE TABLE buch_genre (
    buch_id     NUMBER  NOT NULL REFERENCES buch(buch_id),
    genre_id    NUMBER  NOT NULL REFERENCES genre(genre_id),
    CONSTRAINT pk_buch_genre PRIMARY KEY (buch_id, genre_id)
);

-- -------------------------------------------------------------
-- EXEMPLAR
-- Physisches Buchexemplar eines Nutzers
-- abholort_id zeigt auf eine der Adressen des Besitzers
-- -------------------------------------------------------------
CREATE TABLE exemplar (
    exemplar_id             NUMBER          DEFAULT seq_exemplar.NEXTVAL PRIMARY KEY,
    buch_id                 NUMBER          NOT NULL REFERENCES buch(buch_id),
    besitzer_id             NUMBER          NOT NULL REFERENCES nutzer(nutzer_id),
    abholort_id             NUMBER          REFERENCES adresse(adresse_id),
    zustand                 VARCHAR2(20)    NOT NULL CHECK (zustand IN ('NEU','GUT','AKZEPTABEL','SCHLECHT')),
    bemerkung               VARCHAR2(1000),
    gesperrt                NUMBER(1)       DEFAULT 0 NOT NULL CHECK (gesperrt IN (0,1)),
    gesperrt_von_admin      NUMBER(1)       DEFAULT 0 NOT NULL CHECK (gesperrt_von_admin IN (0,1)),
    postversand_moeglich    NUMBER(1)       DEFAULT 0 NOT NULL CHECK (postversand_moeglich IN (0,1)),
    max_leihdauer_tage      NUMBER(3),
    created_at              DATE            DEFAULT SYSDATE NOT NULL
);

-- -------------------------------------------------------------
-- AUSLEIHANFRAGE
-- Anfrage eines Leihers an den Verleiher
-- Dreifachbeziehung: Nutzer (Leiher) + Exemplar + Nutzer (Verleiher)
-- -------------------------------------------------------------
CREATE TABLE ausleihanfrage (
    anfrage_id      NUMBER          DEFAULT seq_ausleihanfrage.NEXTVAL PRIMARY KEY,
    exemplar_id     NUMBER          NOT NULL REFERENCES exemplar(exemplar_id),
    leiher_id       NUMBER          NOT NULL REFERENCES nutzer(nutzer_id),
    verleiher_id    NUMBER          NOT NULL REFERENCES nutzer(nutzer_id),
    anfragedatum    DATE            DEFAULT SYSDATE NOT NULL,
    status          VARCHAR2(20)    DEFAULT 'OFFEN' NOT NULL
                        CHECK (status IN ('OFFEN','BESTAETIGT','ABGELEHNT','STORNIERT')),
    nachricht       VARCHAR2(1000)
);

-- -------------------------------------------------------------
-- AUSLEIHE
-- Aktive oder abgeschlossene Ausleihe
-- zustand_bei_uebergabe dokumentiert den Zustand zum Ausleihzeitpunkt
-- -------------------------------------------------------------
CREATE TABLE ausleihe (
    ausleihe_id                     NUMBER          DEFAULT seq_ausleihe.NEXTVAL PRIMARY KEY,
    anfrage_id                      NUMBER          NOT NULL UNIQUE REFERENCES ausleihanfrage(anfrage_id),
    ausleihdatum                    DATE            DEFAULT SYSDATE NOT NULL,
    geplantes_rueckgabedatum        DATE            NOT NULL,
    tatsaechliches_rueckgabedatum   DATE,
    zustand_bei_uebergabe           VARCHAR2(20)    NOT NULL CHECK (zustand_bei_uebergabe IN ('NEU','GUT','AKZEPTABEL','SCHLECHT'))
);

-- -------------------------------------------------------------
-- RUECKGABE
-- Sachliche Zustandsdokumentation bei Rueckgabe durch den Verleiher
-- Dreifachbeziehung: Ausleihe + Exemplar + Nutzer (Verleiher)
-- -------------------------------------------------------------
CREATE TABLE rueckgabe (
    rueckgabe_id            NUMBER          DEFAULT seq_rueckgabe.NEXTVAL PRIMARY KEY,
    ausleihe_id             NUMBER          NOT NULL UNIQUE REFERENCES ausleihe(ausleihe_id),
    exemplar_id             NUMBER          NOT NULL REFERENCES exemplar(exemplar_id),
    rueckgabedatum          DATE            DEFAULT SYSDATE NOT NULL,
    zustand_bei_rueckgabe   VARCHAR2(20)    NOT NULL CHECK (zustand_bei_rueckgabe IN ('NEU','GUT','AKZEPTABEL','SCHLECHT'))
);

-- -------------------------------------------------------------
-- BEWERTUNG
-- Bewertung im Kontext einer Ausleihe
-- bewerter_id und bewerteter_id direkt gespeichert fuer einfache Abfragen
-- Dreifachbeziehung: Nutzer (Bewerter) + Nutzer/Buch (Bewertet) + Ausleihe
-- -------------------------------------------------------------
CREATE TABLE bewertung (
    bewertung_id            NUMBER          DEFAULT seq_bewertung.NEXTVAL PRIMARY KEY,
    ausleihe_id             NUMBER          NOT NULL REFERENCES ausleihe(ausleihe_id),
    bewerter_id             NUMBER          NOT NULL REFERENCES nutzer(nutzer_id),
    bewerteter_nutzer_id    NUMBER          REFERENCES nutzer(nutzer_id),   -- nullable: Nutzerbewertung
    buch_id                 NUMBER          REFERENCES buch(buch_id),       -- nullable: Buchbewertung
    sterne                  NUMBER(1)       NOT NULL CHECK (sterne BETWEEN 1 AND 5),
    kommentar               VARCHAR2(2000),
    datum                   DATE            DEFAULT SYSDATE NOT NULL,
    -- Entweder Buch oder Nutzer wird bewertet, nicht beides
    CONSTRAINT chk_bewertung_ziel CHECK (
        (buch_id IS NOT NULL AND bewerteter_nutzer_id IS NULL) OR
        (buch_id IS NULL AND bewerteter_nutzer_id IS NOT NULL)
    )
);

-- -------------------------------------------------------------
-- DUPLIKAT_MELDUNG
-- Meldung eines Nutzers ueber doppelte Bucheintraege
-- Der Pfleger bearbeitet und fuehrt ggf. zusammen
-- -------------------------------------------------------------
CREATE TABLE duplikat_meldung (
    meldung_id          NUMBER          DEFAULT seq_duplikat_meldung.NEXTVAL PRIMARY KEY,
    melder_id           NUMBER          NOT NULL REFERENCES nutzer(nutzer_id),
    buch_id_original    NUMBER          NOT NULL REFERENCES buch(buch_id),
    buch_id_duplikat    NUMBER          NOT NULL REFERENCES buch(buch_id),
    status              VARCHAR2(20)    DEFAULT 'OFFEN' NOT NULL
                            CHECK (status IN ('OFFEN','BEARBEITET','ABGELEHNT')),
    bearbeiter_id       NUMBER          REFERENCES nutzer(nutzer_id),
    meldedatum          DATE            DEFAULT SYSDATE NOT NULL,
    bearbeitungsdatum   DATE
);

COMMIT;