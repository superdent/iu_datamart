-- Buch
SELECT	b.titel,
	a.vorname || ' ' || a.nachname	AS autor,
	g.bezeichnung			AS genre,
	b.sprache,
	b.erscheinungsjahr
FROM	buch b
JOIN	buch_autor ba	ON ba.buch_id  = b.buch_id
JOIN	autor a		ON a.autor_id  = ba.autor_id
JOIN	buch_genre bg	ON bg.buch_id  = b.buch_id
JOIN	genre g		ON g.genre_id  = bg.genre_id
WHERE	ba.autor_id = (
	SELECT	MIN(ba2.autor_id)
	FROM	buch_autor ba2
	WHERE	ba2.buch_id = b.buch_id
)
AND	bg.genre_id = (
	SELECT	MIN(bg2.genre_id)
	FROM	buch_genre bg2
	WHERE	bg2.buch_id = b.buch_id
)
ORDER BY	b.titel;

-- Autor
SELECT	a.vorname || ' ' || a.nachname	AS autor,
	COUNT(ba.buch_id)		AS anzahl_buecher
FROM	autor a
LEFT JOIN	buch_autor ba	ON ba.autor_id = a.autor_id
WHERE a.land like 'United Kingdo%'
GROUP BY	a.vorname, a.nachname
ORDER BY	anzahl_buecher DESC;

-- Buch_autor
SELECT	b.titel,
	COUNT(ba.autor_id)	AS anzahl_autoren
FROM	buch_autor ba
JOIN	buch b	ON b.buch_id = ba.buch_id
GROUP BY	b.titel
HAVING	COUNT(ba.autor_id) > 1
ORDER BY	anzahl_autoren DESC;

-- Genre
SELECT g.bezeichnung, COUNT(bg.buch_id) AS anzahl_buecher
FROM genre g
LEFT JOIN buch_genre bg ON bg.genre_id = g.genre_id
GROUP BY g.bezeichnung
ORDER BY anzahl_buecher DESC;

-- Buch_genre
SELECT anzahl_genres, COUNT(*) AS anzahl_buecher
FROM (
    SELECT buch_id, COUNT(genre_id) AS anzahl_genres
    FROM buch_genre
    GROUP BY buch_id
)
GROUP BY anzahl_genres
ORDER BY anzahl_genres;

-- Duplikat_meldung
SELECT  dm.meldung_id,
        dm.meldedatum,
        b1.titel    AS original,
        b2.titel    AS duplikat,
        n.vorname || ' ' || n.nachname AS gemeldet_von
FROM    duplikat_meldung dm
JOIN    buch b1     ON b1.buch_id = dm.buch_id_original
JOIN    buch b2     ON b2.buch_id = dm.buch_id_duplikat
JOIN    nutzer n    ON n.nutzer_id = dm.melder_id
WHERE   dm.status = 'OFFEN'
ORDER BY dm.meldedatum;

-- Exemplar
SELECT b.titel, u.vorname, u.nachname, e.max_leihdauer_tage, e.zustand
FROM exemplar e
JOIN buch b ON b.buch_id = e.buch_id
JOIN buch_genre bg ON bg.buch_id = b.buch_id
JOIN genre g ON g.genre_id = bg.genre_id
JOIN nutzer u ON u.nutzer_id = e.besitzer_id
WHERE g.bezeichnung = 'Romance'
AND e.postversand_moeglich = 1
ORDER BY b.titel, e.zustand, e.max_leihdauer_tage;

-- Ausleihanfrage
SELECT a.anfrage_id, a.anfragedatum, b.titel,
       n.vorname || ' ' || n.nachname AS leiher,
       a.status
FROM ausleihanfrage a
JOIN exemplar e ON e.exemplar_id = a.exemplar_id
JOIN buch b ON b.buch_id = e.buch_id
JOIN nutzer n ON n.nutzer_id = a.leiher_id
WHERE a.verleiher_id = 25
ORDER BY a.anfragedatum;

-- Ausleihe
SELECT a.ausleihe_id, b.titel,
       n.vorname || ' ' || n.nachname AS leiher,
       a.geplantes_rueckgabedatum,
       SYSDATE - a.geplantes_rueckgabedatum AS tage_ueberfaellig
FROM ausleihe a
JOIN ausleihanfrage an ON an.anfrage_id = a.anfrage_id
JOIN exemplar e ON e.exemplar_id = an.exemplar_id
JOIN buch b ON b.buch_id = e.buch_id
JOIN nutzer n ON n.nutzer_id = an.leiher_id
WHERE a.status = 'LAUFEND'
AND a.geplantes_rueckgabedatum < SYSDATE
ORDER BY tage_ueberfaellig DESC;

-- Rueckgabe
SELECT r.rueckgabedatum, r.zustand_bei_rueckgabe,
       n.vorname || ' ' || n.nachname AS leiher
FROM rueckgabe r
JOIN ausleihe a ON a.ausleihe_id = r.ausleihe_id
JOIN ausleihanfrage an ON an.anfrage_id = a.anfrage_id
JOIN nutzer n ON n.nutzer_id = an.leiher_id
WHERE r.exemplar_id = 5
ORDER BY r.rueckgabedatum;

-- Anfrage_nachricht
SELECT n.nachricht_id, n.gesendet_am, n.inhalt,
       s.vorname || ' ' || s.nachname AS absender,
       n.anfrage_id
FROM anfrage_nachricht n
JOIN nutzer s ON s.nutzer_id = n.sender_id
WHERE n.gelesen = 0
AND n.anfrage_id IN (
    SELECT anfrage_id FROM ausleihanfrage
    WHERE verleiher_id = 25 OR leiher_id = 25
)
ORDER BY n.gesendet_am;

-- Bewertung
SELECT b.titel, AVG(bw.sterne) AS durchschnitt, COUNT(*) AS anzahl_bewertungen
FROM bewertung bw
JOIN buch b ON b.buch_id = bw.buch_id
WHERE bw.buch_id = 5
GROUP BY b.titel;

-- Nutzer
Select * from nutzer where nutzer_id < 11;

-- Adresse
WITH ergebnis AS (
    SELECT b.titel,
           n.vorname || ' ' || n.nachname AS besitzer,
           a.stadt,
           a.strasse || ' ' || a.hausnummer AS abholort,
           ROUND(6371 * ACOS(
               COS(51.5142 * 3.14159/180) * COS(a.breitengrad * 3.14159/180)
               * COS((a.laengengrad - 7.4684) * 3.14159/180)
               + SIN(51.5142 * 3.14159/180) * SIN(a.breitengrad * 3.14159/180)
           ), 1) AS entfernung_km
    FROM   exemplar e
    JOIN   adresse a ON a.adresse_id = e.abholort_id
    JOIN   buch b    ON b.buch_id    = e.buch_id
    JOIN   nutzer n  ON n.nutzer_id  = e.besitzer_id
    WHERE  e.gesperrt = 0
    AND    a.breitengrad IS NOT NULL
)
SELECT *
FROM   ergebnis
WHERE  entfernung_km <= 35
ORDER BY entfernung_km;

-- Rolle
SELECT	r.rollenname,
	COUNT(nr.nutzer_id)	AS anzahl_nutzer
FROM	rolle r
LEFT JOIN	nutzer_rolle nr	ON nr.rolle_id = r.rolle_id
GROUP BY	r.rollenname
ORDER BY	anzahl_nutzer DESC;

-- Nutzer_rolle
SELECT n.vorname || ' ' || n.nachname AS nutzer,
       COUNT(nr.rolle_id) AS anzahl_rollen
FROM   nutzer_rolle nr
JOIN   nutzer n ON n.nutzer_id = nr.nutzer_id
GROUP BY n.vorname, n.nachname
HAVING COUNT(nr.rolle_id) > 1
ORDER BY anzahl_rollen DESC;
