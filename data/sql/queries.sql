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
