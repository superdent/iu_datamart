-- =============================================================
-- Script 03: Dummy-Daten einfügen
-- Ausfuehren als bookshare
-- Reihenfolge: nutzer -> adresse -> rolle -> nutzer_rolle ->
--              autor -> genre -> buch -> buch_autor ->
--              buch_genre -> exemplar
-- =============================================================


-- =============================================================
-- PART 1: NUTZER (30 Einträge)
-- =============================================================

INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Anna',      'Müller',     'anna.mueller@example.de',     'hash_001', '0211 123456',  '+49 211 123456',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Ben',       'Schmidt',    'ben.schmidt@example.de',      'hash_002', '030 987654',   '+49 30 987654',   1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Clara',     'Schneider',  'clara.schneider@example.de',  'hash_003', '089 456789',   NULL,              1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('David',     'Fischer',    'david.fischer@example.de',    'hash_004', NULL,           '+49 40 112233',   1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Eva',       'Weber',      'eva.weber@example.de',        'hash_005', '0221 334455',  '+49 221 334455',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Felix',     'Meyer',      'felix.meyer@example.de',      'hash_006', '0711 667788',  NULL,              1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Greta',     'Wagner',     'greta.wagner@example.de',     'hash_007', '0351 998877',  '+49 351 998877',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Hans',      'Becker',     'hans.becker@example.de',      'hash_008', NULL,           '+49 69 445566',   1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Ina',       'Schulz',     'ina.schulz@example.de',       'hash_009', '0931 556677',  '+49 931 556677',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Jan',       'Hoffmann',   'jan.hoffmann@example.de',     'hash_010', '0341 778899',  NULL,              1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Karin',     'Schäfer',    'karin.schaefer@example.de',   'hash_011', NULL,           '+49 511 334455',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Lars',      'Koch',       'lars.koch@example.de',        'hash_012', '040 223344',   '+49 40 223344',   1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Maria',     'Bauer',      'maria.bauer@example.de',      'hash_013', '0201 445566',  '+49 201 445566',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Nico',      'Richter',    'nico.richter@example.de',     'hash_014', '069 667788',   NULL,              1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Olga',      'Klein',      'olga.klein@example.de',       'hash_015', NULL,           '+49 89 778899',   1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Paul',      'Wolf',       'paul.wolf@example.de',        'hash_016', '0231 889900',  '+49 231 889900',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Queenie',   'Schröder',   'queenie.schroeder@example.de','hash_017', '0911 001122',  NULL,              1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Robert',    'Neumann',    'robert.neumann@example.de',   'hash_018', NULL,           '+49 30 112233',   1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Sara',      'Schwarz',    'sara.schwarz@example.de',     'hash_019', '0721 223344',  '+49 721 223344',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Thomas',    'Zimmermann', 'thomas.zimmermann@example.de','hash_020', '0511 334455',  '+49 511 334455',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Ursula',    'Braun',      'ursula.braun@example.de',     'hash_021', '0391 445566',  NULL,              1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Viktor',    'Krüger',     'viktor.krueger@example.de',   'hash_022', '0421 556677',  '+49 421 556677',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Wendy',     'Hartmann',   'wendy.hartmann@example.de',   'hash_023', NULL,           '+49 211 667788',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Xaver',     'Lange',      'xaver.lange@example.de',      'hash_024', '0681 778899',  '+49 681 778899',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Yvonne',    'Schmitt',    'yvonne.schmitt@example.de',   'hash_025', '0761 889900',  NULL,              1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Zacharias', 'Werner',     'zacharias.werner@example.de', 'hash_026', '0821 990011',  '+49 821 990011',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Alma',      'Peters',     'alma.peters@example.de',      'hash_027', '0471 112233',  '+49 471 112233',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Bruno',     'Krause',     'bruno.krause@example.de',     'hash_028', NULL,           '+49 531 223344',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Celine',    'Lehmann',    'celine.lehmann@example.de',   'hash_029', '0551 334455',  '+49 551 334455',  1);
INSERT INTO nutzer (vorname, nachname, email, passwort_hash, telefon, whatsapp, email_bestaetigt) VALUES ('Dirk',      'Köhler',     'dirk.koehler@example.de',     'hash_030', '02133 445566', '+49 2133 445566', 1);

COMMIT;


-- =============================================================
-- PART 2: ADRESSEN
-- Verteilung: nutzer_id 1-15 je 1 Adresse (15)
--             nutzer_id 16-23 je 2 Adressen (16)
--             nutzer_id 24: 3, 25: 4, 26: 5, 27: 6 Adressen
--             nutzer_id 28-30: keine Exemplare (aber Adressen ok)
-- =============================================================

-- 1 Adresse je (nutzer 1-15)
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (1,  'Hauptstraße',      '12',  '10115', 'Berlin',       1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (2,  'Bahnhofstraße',    '3',   '20095', 'Hamburg',      1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (3,  'Gartenweg',        '7a',  '80331', 'München',      1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (4,  'Lindenallee',      '22',  '50667', 'Köln',         1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (5,  'Schillerstraße',   '5',   '60311', 'Frankfurt',    1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (6,  'Rosenweg',         '11',  '70173', 'Stuttgart',    1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (7,  'Kirchgasse',       '8',   '40213', 'Düsseldorf',   1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (8,  'Poststraße',       '14',  '04109', 'Leipzig',      1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (9,  'Mozartstraße',     '2',   '01067', 'Dresden',      1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (10, 'Beethovenstraße',  '19',  '30159', 'Hannover',     1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (11, 'Friedrichstraße',  '31',  '28195', 'Bremen',       1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (12, 'Bergstraße',       '6',   '44135', 'Dortmund',     1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (13, 'Parkweg',          '17',  '45127', 'Essen',        1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (14, 'Waldstraße',       '4',   '90402', 'Nürnberg',     1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (15, 'Seestraße',        '9',   '86150', 'Augsburg',     1);

-- 2 Adressen je (nutzer 16-23)
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (16, 'Tulpenweg',        '3',   '47051', 'Duisburg',     1, 0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (16, 'Mühlenstraße',     '7',   '47051', 'Duisburg',     0, 1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (17, 'Kastanienallee',   '12',  '45879', 'Gelsenkirchen',1, 0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (17, 'Industriestraße',  '5',   '45879', 'Gelsenkirchen',0, 1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (18, 'Ahornstraße',      '21',  '53111', 'Bonn',         1, 0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (18, 'Rheinufer',        '1',   '53111', 'Bonn',         0, 1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (19, 'Blumenstraße',     '8',   '68159', 'Mannheim',     1, 0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (19, 'Marktplatz',       '2',   '68159', 'Mannheim',     0, 1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (20, 'Uhlandstraße',     '15',  '76133', 'Karlsruhe',    1, 0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (20, 'Kaiserstraße',     '33',  '76133', 'Karlsruhe',    0, 1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (21, 'Fichtenweg',       '6',   '79098', 'Freiburg',     1, 0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (21, 'Bertoldstraße',    '10',  '79098', 'Freiburg',     0, 1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (22, 'Schloßstraße',     '4',   '39104', 'Magdeburg',    1, 0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (22, 'Breiter Weg',      '18',  '39104', 'Magdeburg',    0, 1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (23, 'Domplatz',         '1',   '06108', 'Halle',        1, 0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard, ist_rechnungsadresse) VALUES (23, 'Große Steinstraße','9',   '06108', 'Halle',        0, 1);

-- Nutzer 24: 3 Adressen
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (24, 'Neumarkt',         '5',   '99084', 'Erfurt',       1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (24, 'Anger',            '11',  '99084', 'Erfurt',       0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (24, 'Juri-Gagarin-Ring','3',   '99084', 'Erfurt',       0);

-- Nutzer 25: 4 Adressen
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (25, 'Kröpeliner Straße','20',  '18055', 'Rostock',      1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (25, 'Steinstraße',      '7',   '18055', 'Rostock',      0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (25, 'Doberaner Platz',  '2',   '18055', 'Rostock',      0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (25, 'Barnstorfer Weg',  '14',  '18057', 'Rostock',      0);

-- Nutzer 26: 5 Adressen
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (26, 'Holstenstraße',    '6',   '24103', 'Kiel',         1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (26, 'Sophienblatt',     '3',   '24103', 'Kiel',         0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (26, 'Kaistraße',        '9',   '24103', 'Kiel',         0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (26, 'Ringstraße',       '12',  '24103', 'Kiel',         0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (26, 'Waisenhofstraße',  '1',   '24103', 'Kiel',         0);

-- Nutzer 27: 6 Adressen
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (27, 'Breite Straße',    '8',   '23552', 'Lübeck',       1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (27, 'Königstraße',      '15',  '23552', 'Lübeck',       0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (27, 'Hüxstraße',        '4',   '23552', 'Lübeck',       0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (27, 'Sandstraße',       '22',  '23552', 'Lübeck',       0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (27, 'Wahmstraße',       '6',   '23552', 'Lübeck',       0);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (27, 'Fleischhauerstraße','19', '23552', 'Lübeck',       0);

-- Nutzer 28-30 (keine Exemplare, aber Adressen)
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (28, 'Marktstraße',      '3',   '41061', 'Mönchengladbach', 1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (29, 'Elisabethstraße',  '7',   '52062', 'Aachen',       1);
INSERT INTO adresse (nutzer_id, strasse, hausnummer, plz, stadt, ist_standard) VALUES (30, 'Rheinstraße',      '11',  '47798', 'Krefeld',      1);

COMMIT;


-- =============================================================
-- PART 3: ROLLEN
-- =============================================================

INSERT INTO rolle (rollenname) VALUES ('LEIHER');
INSERT INTO rolle (rollenname) VALUES ('VERLEIHER');
INSERT INTO rolle (rollenname) VALUES ('PFLEGER');
INSERT INTO rolle (rollenname) VALUES ('ADMIN');

COMMIT;


-- =============================================================
-- PART 4: NUTZER_ROLLE
-- Nutzer 1-27: LEIHER + VERLEIHER
-- Nutzer 28-30: nur LEIHER (keine Exemplare)
-- Nutzer 30: auch ADMIN
-- Nutzer 29: auch PFLEGER
-- =============================================================

-- LEIHER + VERLEIHER für nutzer 1-27
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (1,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (1,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (2,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (2,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (3,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (3,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (4,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (4,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (5,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (5,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (6,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (6,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (7,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (7,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (8,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (8,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (9,  1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (9,  2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (10, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (10, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (11, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (11, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (12, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (12, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (13, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (13, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (14, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (14, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (15, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (15, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (16, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (16, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (17, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (17, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (18, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (18, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (19, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (19, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (20, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (20, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (21, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (21, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (22, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (22, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (23, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (23, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (24, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (24, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (25, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (25, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (26, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (26, 2);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (27, 1); INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (27, 2);

-- Nur LEIHER für nutzer 28-30
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (28, 1);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (29, 1);
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (30, 1);

-- Sonderrollen
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (29, 3); -- PFLEGER
INSERT INTO nutzer_rolle (nutzer_id, rolle_id) VALUES (30, 4); -- ADMIN

COMMIT;


-- =============================================================
-- PART 5: AUTOREN (300 Einträge)
-- =============================================================

INSERT INTO autor (vorname, nachname, land) VALUES ('Frank',       'Schätzing',      'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Cornelia',    'Funke',          'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Daniel',      'Kehlmann',       'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Bernhard',    'Schlink',        'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Sebastian',   'Fitzek',         'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ken',         'Follett',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('J.K.',        'Rowling',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('George',      'Orwell',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('J.R.R.',      'Tolkien',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Agatha',      'Christie',       'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Stephen',     'King',           'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ernest',      'Hemingway',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Mark',        'Twain',          'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('F. Scott',    'Fitzgerald',     'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('John',        'Steinbeck',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Harper',      'Lee',            'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Toni',        'Morrison',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Herman',      'Melville',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Edgar',       'Allan Poe',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('William',     'Faulkner',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Gabriel',     'García Márquez', 'Kolumbien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Mario',       'Vargas Llosa',   'Peru');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jorge Luis',  'Borges',         'Argentinien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Pablo',       'Neruda',         'Chile');
INSERT INTO autor (vorname, nachname, land) VALUES ('Isabel',      'Allende',        'Chile');
INSERT INTO autor (vorname, nachname, land) VALUES ('Leo',         'Tolstoi',        'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Fjodor',      'Dostojewski',    'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Anton',       'Tschechow',      'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Michail',     'Bulgakow',       'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Boris',       'Pasternak',      'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Albert',      'Camus',          'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jean-Paul',   'Sartre',         'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Victor',      'Hugo',           'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Gustave',     'Flaubert',       'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Marcel',      'Proust',         'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Émile',       'Zola',           'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('',    'Stendhal',               'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Franz',       'Kafka',          'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Stefan',      'Zweig',          'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Arthur',      'Schnitzler',     'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Umberto',     'Eco',            'Italien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Italo',       'Calvino',        'Italien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Elena',       'Ferrante',       'Italien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Dante',       'Alighieri',      'Italien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Giovanni',    'Boccaccio',      'Italien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Miguel',      'de Cervantes',   'Spanien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Federico',    'García Lorca',   'Spanien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Haruki',      'Murakami',       'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Yasunari',    'Kawabata',       'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Kenzaburo',   'Oe',             'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Naguib',      'Mahfouz',        'Ägypten');
INSERT INTO autor (vorname, nachname, land) VALUES ('Chinua',      'Achebe',         'Nigeria');
INSERT INTO autor (vorname, nachname, land) VALUES ('Wole',        'Soyinka',        'Nigeria');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ngugi',       'wa Thiong''o',   'Kenia');
INSERT INTO autor (vorname, nachname, land) VALUES ('Orhan',       'Pamuk',          'Türkei');
INSERT INTO autor (vorname, nachname, land) VALUES ('Patrick',     'Süskind',        'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Günter',      'Grass',          'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Heinrich',    'Böll',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Thomas',      'Mann',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Hermann',     'Hesse',          'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Bertolt',     'Brecht',         'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Friedrich',   'Schiller',       'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Johann Wolfgang', 'von Goethe', 'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Friedrich',   'Nietzsche',      'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Arthur',      'Schopenhauer',   'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Immanuel',    'Kant',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Max',         'Weber',          'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Karl',        'Marx',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Sigmund',     'Freud',          'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Carl Gustav', 'Jung',           'Schweiz');
INSERT INTO autor (vorname, nachname, land) VALUES ('Charles',     'Darwin',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Bertrand',    'Russell',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Aldous',      'Huxley',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Virginia',    'Woolf',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('James',       'Joyce',          'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Oscar',       'Wilde',          'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Samuel',      'Beckett',        'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('William',     'Butler Yeats',   'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jonathan',    'Swift',          'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Charles',     'Dickens',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jane',        'Austen',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Emily',       'Brontë',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Charlotte',   'Brontë',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Thomas',      'Hardy',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('H.G.',        'Wells',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Arthur Conan','Doyle',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Bram',        'Stoker',         'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Mary',        'Shelley',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('William',     'Shakespeare',    'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Geoffrey',    'Chaucer',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('John',        'Milton',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Percy',       'Bysshe Shelley', 'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Lord',        'Byron',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('John',        'Keats',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('William',     'Wordsworth',     'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Samuel Taylor','Coleridge',     'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Alexander',   'Puschkin',       'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Nikolai',     'Gogol',          'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ivan',        'Turgenev',       'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ivan',        'Goncharov',      'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Maxim',       'Gorki',          'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Mikhail',     'Sholokhov',      'Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Alexandre',   'Dumas',          'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Honoré de',   'Balzac',         'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Guy de',      'Maupassant',     'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jules',       'Verne',          'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('',    'Voltaire',               'Frankreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jean-Jacques','Rousseau',       'Schweiz');
INSERT INTO autor (vorname, nachname, land) VALUES ('Friedrich',   'Dürrenmatt',     'Schweiz');
INSERT INTO autor (vorname, nachname, land) VALUES ('Max',         'Frisch',         'Schweiz');
INSERT INTO autor (vorname, nachname, land) VALUES ('Robert',      'Musil',          'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Joseph',      'Roth',           'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Elfriede',    'Jelinek',        'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Peter',       'Handke',         'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ingeborg',    'Bachmann',       'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Nelly',       'Sachs',          'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Anna',        'Seghers',        'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Christa',     'Wolf',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Uwe',         'Johnson',        'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Martin',      'Walser',         'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Siegfried',   'Lenz',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Wolfgang',    'Koeppen',        'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Alfred',      'Döblin',         'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Lion',        'Feuchtwanger',   'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Klaus',       'Mann',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Erich Maria', 'Remarque',       'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Heinrich',    'Mann',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jakob',       'Wassermann',     'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ernst',       'Jünger',         'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Carl',        'Zuckmayer',      'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Max',         'Brod',           'Tschechien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Rainer Maria','Rilke',          'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Hugo von',    'Hofmannsthal',   'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Karl',        'Kraus',          'Österreich');
INSERT INTO autor (vorname, nachname, land) VALUES ('Joseph',      'Conrad',         'Polen/GB');
INSERT INTO autor (vorname, nachname, land) VALUES ('Henryk',      'Sienkiewicz',    'Polen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Wislawa',     'Szymborska',     'Polen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Czeslaw',     'Milosz',         'Polen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Stanislaw',   'Lem',            'Polen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Milan',       'Kundera',        'Tschechien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jaroslav',    'Hašek',          'Tschechien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Bohumil',     'Hrabal',         'Tschechien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Halldór',     'Laxness',        'Island');
INSERT INTO autor (vorname, nachname, land) VALUES ('August',      'Strindberg',     'Schweden');
INSERT INTO autor (vorname, nachname, land) VALUES ('Selma',       'Lagerlöf',       'Schweden');
INSERT INTO autor (vorname, nachname, land) VALUES ('Astrid',      'Lindgren',       'Schweden');
INSERT INTO autor (vorname, nachname, land) VALUES ('Stieg',       'Larsson',        'Schweden');
INSERT INTO autor (vorname, nachname, land) VALUES ('Henning',     'Mankell',        'Schweden');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jo',          'Nesbø',          'Norwegen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Knut',        'Hamsun',         'Norwegen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Henrik',      'Ibsen',          'Norwegen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Sigrid',      'Undset',         'Norwegen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Hans Christian','Andersen',     'Dänemark');
INSERT INTO autor (vorname, nachname, land) VALUES ('Søren',       'Kierkegaard',    'Dänemark');
INSERT INTO autor (vorname, nachname, land) VALUES ('Karen',       'Blixen',         'Dänemark');
INSERT INTO autor (vorname, nachname, land) VALUES ('Nikos',       'Kazantzakis',    'Griechenland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Giorgos',     'Seferis',        'Griechenland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Rabindranath','Tagore',         'Indien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Salman',      'Rushdie',        'Indien/GB');
INSERT INTO autor (vorname, nachname, land) VALUES ('Arundhati',   'Roy',            'Indien');
INSERT INTO autor (vorname, nachname, land) VALUES ('R.K.',        'Narayan',        'Indien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Lu',          'Xun',            'China');
INSERT INTO autor (vorname, nachname, land) VALUES ('Mo',          'Yan',            'China');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ba',          'Jin',            'China');
INSERT INTO autor (vorname, nachname, land) VALUES ('Cao',         'Xueqin',         'China');
INSERT INTO autor (vorname, nachname, land) VALUES ('Soseki',      'Natsume',        'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ryunosuke',   'Akutagawa',      'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Junichiro',   'Tanizaki',       'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Yukio',       'Mishima',        'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Banana',      'Yoshimoto',      'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Kobo',        'Abe',            'Japan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Kazuo',       'Ishiguro',       'Japan/GB');
INSERT INTO autor (vorname, nachname, land) VALUES ('Nguyen',      'Du',             'Vietnam');
INSERT INTO autor (vorname, nachname, land) VALUES ('Pramoedya',   'Ananta Toer',    'Indonesien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Witi',        'Ihimaera',       'Neuseeland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Patrick',     'White',          'Australien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Tim',         'Winton',         'Australien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Peter',       'Carey',          'Australien');
INSERT INTO autor (vorname, nachname, land) VALUES ('J.M.',        'Coetzee',        'Südafrika');
INSERT INTO autor (vorname, nachname, land) VALUES ('Nadine',      'Gordimer',       'Südafrika');
INSERT INTO autor (vorname, nachname, land) VALUES ('Alan',        'Paton',          'Südafrika');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ben',         'Okri',           'Nigeria');
INSERT INTO autor (vorname, nachname, land) VALUES ('Chimamanda',  'Ngozi Adichie',  'Nigeria');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ama Ata',     'Aidoo',          'Ghana');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ousmane',     'Sembène',        'Senegal');
INSERT INTO autor (vorname, nachname, land) VALUES ('Tayeb',       'Salih',          'Sudan');
INSERT INTO autor (vorname, nachname, land) VALUES ('Nawal',       'El Saadawi',     'Ägypten');
INSERT INTO autor (vorname, nachname, land) VALUES ('Mahmoud',     'Darwish',        'Palästina');
INSERT INTO autor (vorname, nachname, land) VALUES ('Amos',        'Oz',             'Israel');
INSERT INTO autor (vorname, nachname, land) VALUES ('S.Y.',        'Agnon',          'Israel');
INSERT INTO autor (vorname, nachname, land) VALUES ('Aharon',      'Appelfeld',      'Israel');
INSERT INTO autor (vorname, nachname, land) VALUES ('David',       'Grossman',       'Israel');
INSERT INTO autor (vorname, nachname, land) VALUES ('Elif',        'Şafak',          'Türkei');
INSERT INTO autor (vorname, nachname, land) VALUES ('Yaşar',       'Kemal',          'Türkei');
INSERT INTO autor (vorname, nachname, land) VALUES ('Halide Edib', 'Adıvar',         'Türkei');
INSERT INTO autor (vorname, nachname, land) VALUES ('Sadegh',      'Hedayat',        'Iran');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ahmad',       'Shamlu',         'Iran');
INSERT INTO autor (vorname, nachname, land) VALUES ('Marjane',     'Satrapi',        'Iran');
INSERT INTO autor (vorname, nachname, land) VALUES ('Khaled',      'Hosseini',       'Afghanistan/USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Roald',       'Dahl',           'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ian',         'McEwan',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Julian',      'Barnes',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Martin',      'Amis',           'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Nick',        'Hornby',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Zadie',       'Smith',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Hilary',      'Mantel',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Donna',       'Tartt',          'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Cormac',      'McCarthy',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Philip',      'Roth',           'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('John',        'Updike',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Saul',        'Bellow',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Don',         'DeLillo',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Thomas',      'Pynchon',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('David Foster','Wallace',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jonathan',    'Franzen',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jeffrey',     'Eugenides',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Junot',       'Díaz',           'Dominikan. Rep.');
INSERT INTO autor (vorname, nachname, land) VALUES ('Sandra',      'Cisneros',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Zora Neale',  'Hurston',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ralph',       'Ellison',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('James',       'Baldwin',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Richard',     'Wright',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Alice',       'Walker',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Maya',        'Angelou',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Langston',    'Hughes',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Kurt',        'Vonnegut',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Joseph',      'Heller',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Jack',        'Kerouac',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Raymond',     'Carver',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Flannery',    'O''Connor',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Carson',      'McCullers',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Truman',      'Capote',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Sylvia',      'Plath',          'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Anne',        'Sexton',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Allen',       'Ginsberg',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Walt',        'Whitman',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Emily',       'Dickinson',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Henry David', 'Thoreau',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ralph Waldo', 'Emerson',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Nathaniel',   'Hawthorne',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Washington',  'Irving',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('James Fenimore','Cooper',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Octavia',     'Butler',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ursula K.',   'Le Guin',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Philip K.',   'Dick',           'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Isaac',       'Asimov',         'USA/Russland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ray',         'Bradbury',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Arthur C.',   'Clarke',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Douglas',     'Adams',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Terry',       'Pratchett',      'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Neil',        'Gaiman',         'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Iain M.',     'Banks',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('China',       'Miéville',       'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Patrick',     'Rothfuss',       'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Brandon',     'Sanderson',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('George R.R.', 'Martin',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Robert',      'Jordan',         'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Robin',       'Hobb',           'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Andrzej',     'Sapkowski',      'Polen');
INSERT INTO autor (vorname, nachname, land) VALUES ('Michael',     'Ende',           'Deutschland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Joanne K.',   'Rowling',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Stephenie',   'Meyer',          'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Suzanne',     'Collins',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Veronica',    'Roth',           'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Cassandra',   'Clare',          'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Rick',        'Riordan',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Lemony',      'Snicket',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Roald',       'Dahl',           'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('C.S.',        'Lewis',          'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Philip',      'Pullman',        'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Eoin',        'Colfer',         'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Colm',        'Tóibín',         'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Sebastian',   'Barry',          'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('John',        'Banville',       'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Anne',        'Enright',        'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Sally',       'Rooney',         'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Emma',        'Donoghue',       'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Edna',        'O''Brien',       'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('William',     'Trevor',         'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('Flann',       'O''Brien',       'Irland');
INSERT INTO autor (vorname, nachname, land) VALUES ('David',        'Mitchell',      'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('John',         'le Carré',      'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Ian',          'Fleming',       'Großbritannien');
INSERT INTO autor (vorname, nachname, land) VALUES ('Mario',        'Puzo',          'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('William Peter','Blatty',        'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Michael',      'Crichton',      'USA');
INSERT INTO autor (vorname, nachname, land) VALUES ('Delia',        'Owens',         'USA');

COMMIT;


-- =============================================================
-- PART 6: GENRES (20 Einträge)
-- =============================================================

INSERT INTO genre (bezeichnung) VALUES ('Roman');
INSERT INTO genre (bezeichnung) VALUES ('Krimi');
INSERT INTO genre (bezeichnung) VALUES ('Thriller');
INSERT INTO genre (bezeichnung) VALUES ('Science-Fiction');
INSERT INTO genre (bezeichnung) VALUES ('Fantasy');
INSERT INTO genre (bezeichnung) VALUES ('Horror');
INSERT INTO genre (bezeichnung) VALUES ('Historischer Roman');
INSERT INTO genre (bezeichnung) VALUES ('Liebesroman');
INSERT INTO genre (bezeichnung) VALUES ('Biografie');
INSERT INTO genre (bezeichnung) VALUES ('Sachbuch');
INSERT INTO genre (bezeichnung) VALUES ('Philosophie');
INSERT INTO genre (bezeichnung) VALUES ('Klassiker');
INSERT INTO genre (bezeichnung) VALUES ('Jugendbuch');
INSERT INTO genre (bezeichnung) VALUES ('Kinderbuch');
INSERT INTO genre (bezeichnung) VALUES ('Lyrik');
INSERT INTO genre (bezeichnung) VALUES ('Drama');
INSERT INTO genre (bezeichnung) VALUES ('Kurzgeschichten');
INSERT INTO genre (bezeichnung) VALUES ('Abenteuer');
INSERT INTO genre (bezeichnung) VALUES ('Dystopie');
INSERT INTO genre (bezeichnung) VALUES ('Autobiografie');

COMMIT;


-- =============================================================
-- PART 7: BÜCHER (400 Einträge, Auswahl bekannter Werke)
-- buch_id wird über Sequence vergeben (1..400)
-- =============================================================

INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-462-03359-3', 'Der Schwarm',                          2004, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-7915-0003-3', 'Tintenherz',                           2003, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-498-03551-0', 'Die Vermessung der Welt',              2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-257-06318-3', 'Der Vorleser',                        1995, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-426-50375-5', 'Das Kind',                            2008, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-333-48517-9', 'Die Säulen der Erde',                 1989, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-551-35401-5', 'Harry Potter und der Stein der Weisen',1997, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-548-20055-7', '1984',                                1949, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-608-96204-9', 'Der Herr der Ringe',                  1954, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-455-00143-7', 'Mord im Orientexpress',               1934, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-385-12167-5', 'Es',                                  1986, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-684-80122-3', 'Der alte Mann und das Meer',          1952, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-028329-7', 'Die Abenteuer des Huckleberry Finn',  1884, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-596-90402-5', 'Der große Gatsby',                   1925, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-028729-5', 'Von Mäusen und Menschen',            1937, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-06-112008-4', 'Wer die Nachtigall stört',           1960, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-1-4000-3341-6', 'Beloved',                            1987, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-243723-0', 'Moby Dick',                          1851, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-043787-0', 'Geschichten des Unerklärlichen',     1845, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-679-73224-6', 'Schall und Wahn',                    1929, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-499-22921-2', 'Hundert Jahre Einsamkeit',           1967, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-028728-8', 'Tante Julia und der Schreibkünstler',1977, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-028795-0', 'Labyrinthe',                         1962, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-518-37100-8', 'Das Haus der Geister',               1982, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-044913-2', 'Krieg und Frieden',                  1869, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-044179-2', 'Schuld und Sühne',                   1866, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-044748-0', 'Die Kirschgärten',                   1904, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-679-72063-2', 'Der Meister und Margarita',          1967, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-679-77784-1', 'Doktor Schiwago',                    1957, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-499-22412-5', 'Der Fremde',                         1942, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-679-72020-5', 'Der Ekel',                           1938, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-044330-7', 'Les Misérables',                     1862, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-044251-5', 'Madame Bovary',                      1857, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-243723-1', 'Auf der Suche nach der verlorenen Zeit',1913,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-19-953556-9', 'Germinal',                           1885, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-518-06926-9', 'Die Verwandlung',                    1915, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-458-35293-7', 'Die Schachnovelle',                  1942, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-257-06318-4', 'Leutnant Gustl',                     1900, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-423-13236-9', 'Der Name der Rose',                  1980, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-15-144945-2', 'Wenn ein Reisender in einer Winternacht',1979,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-8-807-88133-0', 'Meine geniale Freundin',             2011, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-118776-1', 'Die Göttliche Komödie',              1320, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-044262-1', 'Das Dekameron',                      1353, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-044921-7', 'Don Quijote',                        1605, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-044274-4', 'Yerma',                              1934, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-442-74450-6', 'Kafka am Strand',                    2002, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-442-74451-3', 'Schneekönigin',                      1968, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-4-06-273014-8', 'Eine persönliche Erfahrung',         1964, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-977-09-1158-7', 'Midaq Alley',                        1947, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-435-90319-2', 'Alles zerfällt',                     1958, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-521-31976-5', 'Der Löwe und das Juwel',             1959, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-14-186787-0', 'Ein Korn Weizen',                    1967, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-0-571-24190-6', 'Schnee',                             2002, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-551-31000-1', 'Das Parfum',                         1985, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-630-87428-7', 'Die Blechtrommel',                   1959, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-462-01737-1', 'Ansichten eines Clowns',             1963, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-596-29201-4', 'Buddenbrooks',                       1901, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-518-36836-7', 'Siddharta',                          1922, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-518-37236-4', 'Mutter Courage und ihre Kinder',     1939, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000001-0', 'Wilhelm Tell',                       1804, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000002-7', 'Faust I',                            1808, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000003-4', 'Also sprach Zarathustra',            1883, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000004-1', 'Die Welt als Wille und Vorstellung',1819, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000005-8', 'Kritik der reinen Vernunft',         1781, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000006-5', 'Wirtschaft und Gesellschaft',        1922, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000007-2', 'Das Kapital',                        1867, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000008-9', 'Die Traumdeutung',                   1899, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000009-6', 'Die Brüder Karamasow',               1880, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000010-2', 'Anna Karenina',                      1877, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000011-9', 'Ulysses',                            1922, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000012-6', 'Das Bildnis des Dorian Gray',        1890, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000013-3', 'Warten auf Godot',                   1952, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000014-0', 'Mrs Dalloway',                       1925, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000015-7', 'Oliver Twist',                       1837, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000016-4', 'Stolz und Vorurteil',                1813, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000017-1', 'Sturmhöhe',                          1847, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000018-8', 'Jane Eyre',                          1847, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000019-5', 'Die Zeitmaschine',                   1895, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000020-1', 'Sherlock Holmes – Gesammelte Werke', 1892, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000021-8', 'Dracula',                            1897, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000022-5', 'Frankenstein',                       1818, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000023-2', 'Hamlet',                             1603, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000024-9', 'Verlorenes Paradies',                1667, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000025-6', 'Gullivers Reisen',                   1726, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000026-3', 'Drei Musketiere',                    1844, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000027-0', 'Vater Goriot',                       1835, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000028-7', 'Eine Geschichte zweier Städte',      1859, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000029-4', 'Reise zum Mittelpunkt der Erde',     1864, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000030-0', 'Candide',                            1759, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000031-7', 'Der Richter und sein Henker',        1950, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000032-4', 'Homo Faber',                         1957, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000033-1', 'Der Mann ohne Eigenschaften',        1930, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000034-8', 'Radetzkymarsch',                     1932, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000035-5', 'Die Klavierspielerin',               1983, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000036-2', 'Wunschloses Unglück',               1972, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000037-9', 'Malina',                             1971, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000038-6', 'Kindheitsmuster',                    1976, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000039-3', 'Mutmassungen über Jakob',            1959, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000040-9', 'Ein fliehendes Pferd',               1978, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000041-6', 'Deutschstunde',                      1968, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000042-3', 'Das Treibhaus',                      1953, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000043-0', 'Berlin Alexanderplatz',              1929, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000044-7', 'Der falsche Nero',                   1936, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000045-4', 'Im Westen nichts Neues',             1929, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000046-1', 'Professor Unrat',                    1905, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000047-8', 'Der Prozess',                        1925, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000048-5', 'Amerika',                            1927, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000049-2', 'Duineser Elegien',                   1923, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000050-8', 'Jedermann',                          1911, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000051-5', 'Herr Karl',                          1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000052-2', 'Pan Tadeusz',                        1834, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000053-9', 'Quo Vadis',                          1895, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000054-6', 'Die Gedichte',                       1996, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000055-3', 'Das verlorene Ich',                  1960, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000056-0', 'Solaris',                            1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000057-7', 'Die unerträgliche Leichtigkeit des Seins',1984,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000058-4', 'Der brave Soldat Schwejk',           1921, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000059-1', 'Erzählungen von Bohumil Hrabal',     1963, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000060-7', 'Islandsaga',                         1934, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000061-4', 'Fräulein Julie',                     1888, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000062-1', 'Gösta Berlings Saga',                1891, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000063-8', 'Pippi Langstrumpf',                  1945, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000064-5', 'Verbrechen und Strafe',              2019, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000065-2', 'Der Mann, der lachte',               2015, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000066-9', 'Sult',                               1890, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000067-6', 'Peer Gynt',                          1867, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000068-3', 'Kristin Lavranstochter',             1920, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000069-0', 'Das Märchen von der kleinen Meerjungfrau',1837,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000070-6', 'Furcht und Zittern',                 1843, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000071-3', 'Jenseits von Afrika',                1937, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000072-0', 'Alexis Sorbas',                      1946, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000073-7', 'Gitanjali',                          1910, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000074-4', 'Mitternachtskinder',                 1981, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000075-1', 'Der Gott der kleinen Dinge',         1997, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000076-8', 'Swami und seine Freunde',            1935, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000077-5', 'Der wahre Geschmack des Lebens',     1923, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000078-2', 'Der rote Mohn',                      2012, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000079-9', 'Das rote Zimmer',                    1879, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000080-5', 'Träume in der Hexennacht',           1943, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000081-2', 'Der Drachentöter',                   2007, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000082-9', 'Mädchen mit dem Drachentatoo',       2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000083-6', 'Die Pyramide',                       1989, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000084-3', 'Wallander: Mörder ohne Gesicht',     1991, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000085-0', 'Schneemann',                         2007, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000086-7', 'Wachsende Erde',                     1917, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000087-4', 'Hunger',                             1890, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000088-1', 'Nora oder Ein Puppenhaus',           1879, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000089-8', 'Die Leiden des jungen Werthers',     1774, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000090-4', 'Effi Briest',                        1896, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000091-1', 'Der Steppenwolf',                    1927, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000092-8', 'Narziss und Goldmund',               1930, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000093-5', 'Das Glasperlenspiel',                1943, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000094-2', 'Demian',                             1919, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000095-9', 'Unterm Rad',                         1906, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000096-6', 'Peter Camenzind',                    1904, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000097-3', 'Der Zauberberg',                     1924, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000098-0', 'Tonio Kröger',                       1903, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000099-7', 'Der Tod in Venedig',                  1912, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000100-0', 'Doktor Faustus',                     1947, 'Deutsch', 'AKTIV');
-- Weitere 300 Bücher
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000101-7', 'Schöne neue Welt',                   1932, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000102-4', 'Die Farm der Tiere',                 1945, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000103-1', 'Brave New World Revisited',          1958, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000104-8', 'Fahrenheit 451',                     1953, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000105-5', 'Die Handmaid''s Tale',               1985, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000106-2', 'Die Straße',                         2006, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000107-9', 'Kein Land für alte Männer',          2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000108-6', 'Meridian des Blutes',                1985, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000109-3', 'Amerikanisches Idyll',               1997, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000110-9', 'Portnoys Beschwerden',               1969, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000111-6', 'Hasenherz',                          1960, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000112-3', 'Herzog',                             1964, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000113-0', 'Weißes Rauschen',                    1985, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000114-7', 'Die Enden der Parabel',              1973, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000115-4', 'Unendlicher Spaß',                   1996, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000116-1', 'Korrekturen',                        2001, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000117-8', 'Middlesex',                          2002, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000118-5', 'Das kurze wundersame Leben des Oscar Wao',2007,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000119-2', 'Südstern',                           1984, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000120-8', 'Ihre Augen schauten Gott',           1937, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000121-5', 'Der unsichtbare Mann',               1952, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000122-2', 'Giovannis Zimmer',                   1956, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000123-9', 'Sohn Amerikas',                      1940, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000124-6', 'Die Farbe Lila',                     1982, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000125-3', 'Ich weiß, warum der Käfigvogel singt',1969,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000126-0', 'Slaughterhouse-Five',                1969, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000127-7', 'Catch-22',                           1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000128-4', 'Unterwegs',                          1957, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000129-1', 'Kathedralen',                        1983, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000130-7', 'Ein gutes Mensch ist schwer zu finden',1955,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000131-4', 'Das Herz ist ein einsamer Jäger',    1940, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000132-1', 'Frühstück bei Tiffany',              1958, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000133-8', 'Die Glasglocke',                     1963, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000134-5', 'Heulsuse',                           1955, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000135-2', 'Auf der Suche nach Amerika',         1955, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000136-9', 'Walden',                             1854, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000137-6', 'Über die Pflicht zum Ungehorsam',    1849, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000138-3', 'Die Scharlachrote Buchstabe',        1850, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000139-0', 'Rip Van Winkle',                     1819, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000140-6', 'Der Wildtöter',                      1823, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000141-3', 'Kindred',                            1979, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000142-0', 'Die linke Hand der Dunkelheit',      1969, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000143-7', 'Ubik',                               1969, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000144-4', 'Foundation',                         1951, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000145-1', 'Ich, der Robot',                     1950, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000146-8', 'Das Lied von Eis und Feuer',         1996, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000147-5', 'Der Name des Windes',                2007, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000148-2', 'Elantris',                           2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000149-9', 'Das Auge der Welt',                  1990, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000150-5', 'Assassin''s Apprentice',             1995, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000151-2', 'Der Witcher',                        1993, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000152-9', 'Momo',                               1973, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000153-6', 'Die unendliche Geschichte',          1979, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000154-3', 'Twilight – Biss zum Morgengrauen',   2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000155-0', 'Die Tribute von Panem',              2008, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000156-7', 'Divergent',                          2011, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000157-4', 'City of Bones',                      2007, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000158-1', 'Percy Jackson – Diebe im Olymp',     2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000159-8', 'Lemony Snicket – Der schreckliche Anfang',2001,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000160-4', 'Charlie und die Schokoladenfabrik', 1964, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000161-1', 'Der Löwe, die Hexe und der Kleiderschrank',1950,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000162-8', 'His Dark Materials',                 1995, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000163-5', 'Artemis Fowl',                       2001, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000164-2', 'Nora Webster',                       2014, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000165-9', 'Das Leid eines wahren Mannes',       2011, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000166-6', 'Der Meister der Jahreszeiten',       2012, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000167-3', 'Die See',                            2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000168-0', 'Der Greis und das Meer',             2019, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000169-7', 'Normaler Mensch',                    2018, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000170-3', 'Gespräche mit Freunden',             2017, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000171-0', 'Zimmer Frances',                     2012, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000172-7', 'Das Haus auf Mango Street',          1984, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000173-4', 'Drachenläufer',                      2003, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000174-1', 'Tausend strahlende Sonnen',          2007, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000175-8', 'Salatage',                           2015, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000176-5', 'Lila Lila',                          2004, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000177-2', 'Der Turm',                           2008, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000178-9', 'Eulenspiegel',                       1999, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000179-6', 'Freiheit',                           2010, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000180-2', 'Die Korrekturen',                    2003, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000181-9', 'Stoner',                             1965, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000182-6', 'Butcher''s Crossing',                1960, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000183-3', 'Augustus',                           1972, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000184-0', 'Das Schweigen der Lämmer',           1988, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000185-7', 'Psycho',                             1960, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000186-4', 'Das Omen',                           1976, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000187-1', 'Der Exorzist',                       1971, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000188-8', 'Rosemarys Baby',                     1967, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000189-5', 'Der Dunkle Turm',                    1982, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000190-1', 'Shining',                            1977, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000191-8', 'Carrie',                             1974, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000192-5', 'Der Talisman',                       1984, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000193-2', 'Misery',                             1987, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000194-9', 'Friedhof der Kuscheltiere',          1983, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000195-6', 'Die Langoliers',                     1990, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000196-3', 'Needful Things',                     1991, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000197-0', 'Insomnia',                           1994, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000198-7', 'Bag of Bones',                       1998, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000199-4', 'Dreamcatcher',                       2001, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000200-7', 'Cell',                               2006, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000201-4', 'Under the Dome',                     2009, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000202-1', '11/22/63',                           2011, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000203-8', 'Mr. Mercedes',                       2014, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000204-5', 'Der Anschlag',                       2011, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000205-2', 'Das Institut',                       2019, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000206-9', 'Später',                             2021, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000207-6', 'Billy Summers',                      2021, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000208-3', 'Fairy Tale',                         2022, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000209-0', 'Holly',                              2023, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000210-6', 'Atonement',                          2001, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000211-3', 'Saturday',                           2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000212-0', 'Amsterdam',                          1998, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000213-7', 'Erfahrung',                          2000, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000214-4', 'About a Boy',                        1998, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000215-1', 'On Beauty',                          2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000216-8', 'Wolf Hall',                          2009, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000217-5', 'Der geheime Garten',                 1911, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000218-2', 'Durch die Wüste',                    1892, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000219-9', 'Der Schatz der Sierra Madre',        1927, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000220-5', 'Die Brücke von San Luis Rey',        1927, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000221-2', 'Henderson, der Regenkönig',          1959, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000222-9', 'Humboldt''s Gift',                   1975, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000223-6', 'Seize the Day',                      1956, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000224-3', 'Amerika, Amerika',                   1962, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000225-0', 'White Noise',                        1985, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000226-7', 'Libra',                              1988, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000227-4', 'Underworld',                         1997, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000228-1', 'Gravity''s Rainbow',                 1973, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000229-8', 'Die Knochenuhren',                   2014, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000230-4', 'Cloud Atlas',                        2004, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000231-1', 'Der ewige Gärtner',                  2001, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000232-8', 'Dame König As Spion',                1974, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000233-5', 'Der Spion, der aus der Kälte kam',   1963, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000234-2', 'Casino Royale',                      1953, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000235-9', 'Der Pate',                           1969, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000236-6', 'Der Exorzist',                       1971, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000237-3', 'Jurassic Park',                      1990, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000238-0', 'Timeline',                           1999, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000239-7', 'Sphere',                             1987, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000240-3', 'Andromeda',                          1969, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000241-0', 'Das Leuchten der Erinnerung',        2021, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000242-7', 'Der Gesang der Flusskrebse',         2018, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000243-4', 'Normal People',                      2018, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000244-1', 'Conversations with Friends',         2017, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000245-8', 'Beautiful World, Where Are You',     2021, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000246-5', 'Intermezzo',                         2024, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000247-2', 'Serotonin',                          2019, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000248-9', 'Elementarteilchen',                  1998, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000249-6', 'Plattform',                          2001, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000250-2', 'Unterwerfung',                       2015, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000251-9', 'Die Möglichkeit einer Insel',        2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000252-6', 'Karte und Gebiet',                   2010, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000253-3', 'Atomstation',                        1948, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000254-0', 'Das Erdbeben in Chili',              1807, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000255-7', 'Michael Kohlhaas',                   1810, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000256-4', 'Die Marquise von O.',                1808, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000257-1', 'Penthesilea',                        1808, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000258-8', 'Kabale und Liebe',                   1784, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000259-5', 'Die Räuber',                         1781, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000260-1', 'Don Carlos',                         1787, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000261-8', 'Wallenstein',                        1800, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000262-5', 'Die Jungfrau von Orleans',           1801, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000263-2', 'Iphigenie auf Tauris',               1787, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000264-9', 'Egmont',                             1788, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000265-6', 'Götz von Berlichingen',              1773, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000266-3', 'Die Wahlverwandtschaften',           1809, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000267-0', 'Wilhelm Meisters Lehrjahre',         1796, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000268-7', 'Faust II',                           1832, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000269-4', 'Die neuen Leiden des jungen W.',     1972, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000270-0', 'Jakob der Lügner',                   1969, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000271-7', 'Das siebte Kreuz',                   1942, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000272-4', 'Die Toten bleiben jung',             1949, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000273-1', 'Der geteilte Himmel',                1963, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000274-8', 'Kassandra',                          1983, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000275-5', 'Medea',                              1996, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000276-2', 'Der Tangospieler',                   1989, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000277-9', 'Abschied von den Feinden',           1995, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000278-6', 'Ein weites Feld',                    1995, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000279-3', 'Der Butt',                           1977, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000280-9', 'Hundejahre',                         1963, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000281-6', 'Katz und Maus',                      1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000282-3', 'Unkenrufe',                          1992, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000283-0', 'Im Krebsgang',                       2002, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000284-7', 'Beim Häuten der Zwiebel',            2006, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000285-4', 'Die Rättin',                         1986, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000286-1', 'Örtlich betäubt',                    1969, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000287-8', 'Tagebuch einer Schnecke',            1972, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000288-5', 'Die Ästhetik des Widerstands',       1975, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000289-2', 'Abschied',                           1968, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000290-8', 'Trilogie der Sommersonnenwende',     2003, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000291-5', 'Die Wellen',                         2023, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000292-2', 'Drei Frauen',                        2024, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000293-9', 'Feuer und Blut',                     2018, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000294-6', 'Die Welt von Eis und Feuer',         2014, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000295-3', 'Sturm der Schwerter',                2000, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000296-0', 'Tanz der Drachen',                   2011, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000297-7', 'Das Lied von Eis und Feuer 2',       1998, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000298-4', 'Steppenwolf',                        2024, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000299-1', 'Hommage an Katalonien',              1938, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000300-4', 'Die burmesischen Tage',              1934, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000301-1', 'Erledigt in Paris und London',       1933, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000302-8', 'Eine Tochter des Regiments',         2023, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000303-5', 'Das Mädchen mit dem Perlenohrring', 1999, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000304-2', 'Ahornsirup',                         2022, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000305-9', 'Der Pakt',                           2023, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000306-6', 'Nachts in Lissabon',                 1962, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000307-3', 'Der schwarze Obelisk',               1956, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000308-0', 'Drei Kameraden',                     1936, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000309-7', 'Arc de Triomphe',                    1945, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000310-3', 'Der Himmel kennt keine Günstlinge',  1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000311-0', 'Die Nacht von Lissabon',             1962, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000312-7', 'Flotsam',                            1941, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000313-4', 'Der Funke Leben',                    1952, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000314-1', 'Zeit zu leben und Zeit zu sterben',  1954, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000315-8', 'Das gelobte Land',                   1953, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000316-5', 'Station am Horizont',                1928, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000317-2', 'Liebe deinen Nächsten',              1941, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000318-9', 'Der Weg zurück',                     1931, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000319-6', 'Schatten im Paradies',               1971, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000320-2', 'Das unbekannte Werk',                2005, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000321-9', 'Effi Briest 2',                      2019, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000322-6', 'Der Schimmelreiter',                 1888, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000323-3', 'Immensee',                           1850, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000324-0', 'Hans im Glück',                      1819, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000325-7', 'Das Nürnberger Ei',                  1913, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000326-4', 'Kaspar Hauser',                      1908, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000327-1', 'Der Hauptmann von Köpenick',         1930, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000328-8', 'Des Teufels General',                1946, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000329-5', 'Der fröhliche Weinberg',             1925, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000330-1', 'Katharina Knie',                     1929, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000331-8', 'Biedermann und die Brandstifter',    1958, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000332-5', 'Andorra',                            1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000333-2', 'Stiller',                            1954, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000334-9', 'Mein Name sei Gantenbein',           1964, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000335-6', 'Montauk',                            1975, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000336-3', 'Die Physiker',                       1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000337-0', 'Der Besuch der alten Dame',          1956, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000338-7', 'Das Versprechen',                    1958, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000339-4', 'Der Verdacht',                       1952, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000340-0', 'Justiz',                             1985, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000341-7', 'Der Auftrag',                        1986, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000342-4', 'Grieche sucht Griechin',             1955, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000343-1', 'Das Versprechen 2',                  2021, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000344-8', 'Der Hesse',                          2020, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000345-5', 'Das Erbe',                           2022, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000346-2', 'Sturmflut',                          2023, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000347-9', 'Brandung',                           2021, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000348-6', 'Gezeitenrechnung',                   2020, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000349-3', 'Sommerhaus, später',                 1998, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000350-9', 'Nichts als Gespenster',              2003, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000351-6', 'Lagerfeuer',                         2003, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000352-3', 'Traumnovelle',                       1926, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000353-0', 'Reigen',                             1900, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000354-7', 'Anatol',                             1893, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000355-4', 'Professor Bernhardi',                1912, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000356-1', 'Paracelsus',                         1899, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000357-8', 'Das weite Land',                     1911, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000358-5', 'Fliederbusch',                       1917, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000359-2', 'Der einsame Weg',                    1904, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000360-8', 'Lebendige Stunden',                  1901, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000361-5', 'Casanovas Heimfahrt',                1918, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000362-2', 'Spiel im Morgengrauen',              1926, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000363-9', 'Flucht in die Dunkelheit',           1931, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000364-6', 'Der Sekundant',                      1931, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000365-3', 'Das Tagebuch der Redegonda',         1914, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000366-0', 'Der blinde Geronimo',                1900, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000367-7', 'Sterben',                            1895, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000368-4', 'Die Toten schweigen',                1897, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000369-1', 'Der Andere',                         1889, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000370-7', 'Das Märchen',                        1891, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000371-4', 'Frau Berta Garlan',                  1900, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000372-1', 'Der Weg ins Freie',                  1908, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000373-8', 'Therese',                            1928, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000374-5', 'Fräulein Else',                      1924, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000375-2', 'Beziehungen und Einsamkeiten',       1987, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000376-9', 'Spätwerk',                           2010, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000377-6', 'Novelle',                            2012, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000378-3', 'Endspiel',                           1957, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000379-0', 'Molloy',                             1951, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000380-6', 'Murphy',                             1938, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000381-3', 'Malone stirbt',                      1951, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000382-0', 'Der Namenlose',                      1953, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000383-7', 'Wie es ist',                         1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000384-4', 'Glückliche Tage',                    1961, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000385-1', 'Krapp''s letztes Band',              1958, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000386-8', 'Das Spiel ist aus',                  1947, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000387-5', 'Die Wörter',                         1964, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000388-2', 'Der Idiot',                          1869, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000389-9', 'Erniedrigte und Beleidigte',         1861, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000390-5', 'Aufzeichnungen aus dem Untergrund',  1864, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000391-2', 'Der Spieler',                        1866, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000392-9', 'Dämonen',                            1872, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000393-6', 'Der Jüngling',                       1875, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000394-3', 'Arme Leute',                         1846, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000395-0', 'Weiße Nächte',                       1848, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000396-7', 'Der ewige Gatte',                    1870, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000397-4', 'Ein sanftes Wesen',                  1876, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000398-1', 'Der Traum eines lächerlichen Mannes',1877,'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000399-8', 'Bobok',                              1873, 'Deutsch', 'AKTIV');
INSERT INTO buch (isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ('978-3-15-000400-5', 'Krokodil',                           1865, 'Deutsch', 'AKTIV');

COMMIT;


-- =============================================================
-- PART 8: BUCH_AUTOR (je Buch 1 Autor; einige mit 2 Autoren)
-- Vereinfachte Zuordnung: buch_id -> autor_id
-- =============================================================

-- Bücher 1-100 -> Autoren 1-100 (1:1 für die ersten 100)
INSERT INTO buch_autor VALUES (1,1);   INSERT INTO buch_autor VALUES (2,2);   INSERT INTO buch_autor VALUES (3,3);
INSERT INTO buch_autor VALUES (4,4);   INSERT INTO buch_autor VALUES (5,5);   INSERT INTO buch_autor VALUES (6,6);
INSERT INTO buch_autor VALUES (7,7);   INSERT INTO buch_autor VALUES (8,8);   INSERT INTO buch_autor VALUES (9,9);
INSERT INTO buch_autor VALUES (10,10); INSERT INTO buch_autor VALUES (11,11); INSERT INTO buch_autor VALUES (12,12);
INSERT INTO buch_autor VALUES (13,13); INSERT INTO buch_autor VALUES (14,14); INSERT INTO buch_autor VALUES (15,15);
INSERT INTO buch_autor VALUES (16,16); INSERT INTO buch_autor VALUES (17,17); INSERT INTO buch_autor VALUES (18,18);
INSERT INTO buch_autor VALUES (19,19); INSERT INTO buch_autor VALUES (20,20); INSERT INTO buch_autor VALUES (21,21);
INSERT INTO buch_autor VALUES (22,22); INSERT INTO buch_autor VALUES (23,23); INSERT INTO buch_autor VALUES (24,25);
INSERT INTO buch_autor VALUES (25,26); INSERT INTO buch_autor VALUES (26,27); INSERT INTO buch_autor VALUES (27,28);
INSERT INTO buch_autor VALUES (28,29); INSERT INTO buch_autor VALUES (29,30); INSERT INTO buch_autor VALUES (30,31);
INSERT INTO buch_autor VALUES (31,32); INSERT INTO buch_autor VALUES (32,33); INSERT INTO buch_autor VALUES (33,34);
INSERT INTO buch_autor VALUES (34,35); INSERT INTO buch_autor VALUES (35,36); INSERT INTO buch_autor VALUES (36,38);
INSERT INTO buch_autor VALUES (37,39); INSERT INTO buch_autor VALUES (38,40); INSERT INTO buch_autor VALUES (39,41);
INSERT INTO buch_autor VALUES (40,42); INSERT INTO buch_autor VALUES (41,43); INSERT INTO buch_autor VALUES (42,44);
INSERT INTO buch_autor VALUES (43,45); INSERT INTO buch_autor VALUES (44,46); INSERT INTO buch_autor VALUES (45,47);
INSERT INTO buch_autor VALUES (46,48); INSERT INTO buch_autor VALUES (47,49); INSERT INTO buch_autor VALUES (48,50);
INSERT INTO buch_autor VALUES (49,51); INSERT INTO buch_autor VALUES (50,52); INSERT INTO buch_autor VALUES (51,53);
INSERT INTO buch_autor VALUES (52,54); INSERT INTO buch_autor VALUES (53,55); INSERT INTO buch_autor VALUES (54,56);
INSERT INTO buch_autor VALUES (55,57); INSERT INTO buch_autor VALUES (56,58); INSERT INTO buch_autor VALUES (57,59);
INSERT INTO buch_autor VALUES (58,60); INSERT INTO buch_autor VALUES (59,61); INSERT INTO buch_autor VALUES (60,62);
INSERT INTO buch_autor VALUES (61,63); INSERT INTO buch_autor VALUES (62,64); INSERT INTO buch_autor VALUES (63,65);
INSERT INTO buch_autor VALUES (64,66); INSERT INTO buch_autor VALUES (65,67); INSERT INTO buch_autor VALUES (66,68);
INSERT INTO buch_autor VALUES (67,69); INSERT INTO buch_autor VALUES (68,70); INSERT INTO buch_autor VALUES (69,71);
INSERT INTO buch_autor VALUES (70,72); INSERT INTO buch_autor VALUES (71,73); INSERT INTO buch_autor VALUES (72,74);
INSERT INTO buch_autor VALUES (73,75); INSERT INTO buch_autor VALUES (74,76); INSERT INTO buch_autor VALUES (75,77);
INSERT INTO buch_autor VALUES (76,78); INSERT INTO buch_autor VALUES (77,79); INSERT INTO buch_autor VALUES (78,80);
INSERT INTO buch_autor VALUES (79,81); INSERT INTO buch_autor VALUES (80,82); INSERT INTO buch_autor VALUES (81,83);
INSERT INTO buch_autor VALUES (82,84); INSERT INTO buch_autor VALUES (83,85); INSERT INTO buch_autor VALUES (84,86);
INSERT INTO buch_autor VALUES (85,87); INSERT INTO buch_autor VALUES (86,88); INSERT INTO buch_autor VALUES (87,89);
INSERT INTO buch_autor VALUES (88,90); INSERT INTO buch_autor VALUES (89,91); INSERT INTO buch_autor VALUES (90,92);
INSERT INTO buch_autor VALUES (91,93); INSERT INTO buch_autor VALUES (92,94); INSERT INTO buch_autor VALUES (93,95);
INSERT INTO buch_autor VALUES (94,96); INSERT INTO buch_autor VALUES (95,97); INSERT INTO buch_autor VALUES (96,98);
INSERT INTO buch_autor VALUES (97,99); INSERT INTO buch_autor VALUES (98,100);INSERT INTO buch_autor VALUES (99,101);
INSERT INTO buch_autor VALUES (100,102);

-- Bücher 101-200 -> Autoren 1-100 (reuse)
INSERT INTO buch_autor VALUES (101,8);   INSERT INTO buch_autor VALUES (102,8);   INSERT INTO buch_autor VALUES (103,73);
INSERT INTO buch_autor VALUES (104,252);
INSERT INTO buch_autor VALUES (105,103); INSERT INTO buch_autor VALUES (106,104); INSERT INTO buch_autor VALUES (107,104);
INSERT INTO buch_autor VALUES (108,104); INSERT INTO buch_autor VALUES (109,105); INSERT INTO buch_autor VALUES (110,105);
INSERT INTO buch_autor VALUES (111,106); INSERT INTO buch_autor VALUES (112,107); INSERT INTO buch_autor VALUES (113,108);
INSERT INTO buch_autor VALUES (114,109); INSERT INTO buch_autor VALUES (115,110); INSERT INTO buch_autor VALUES (116,111);
INSERT INTO buch_autor VALUES (117,112); INSERT INTO buch_autor VALUES (118,113); INSERT INTO buch_autor VALUES (119,114);
INSERT INTO buch_autor VALUES (120,115); INSERT INTO buch_autor VALUES (121,116); INSERT INTO buch_autor VALUES (122,117);
INSERT INTO buch_autor VALUES (123,118); INSERT INTO buch_autor VALUES (124,119); INSERT INTO buch_autor VALUES (125,120);
INSERT INTO buch_autor VALUES (126,121); INSERT INTO buch_autor VALUES (127,122); INSERT INTO buch_autor VALUES (128,123);
INSERT INTO buch_autor VALUES (129,124); INSERT INTO buch_autor VALUES (130,125); INSERT INTO buch_autor VALUES (131,126);
INSERT INTO buch_autor VALUES (132,127); INSERT INTO buch_autor VALUES (133,128); INSERT INTO buch_autor VALUES (134,129);
INSERT INTO buch_autor VALUES (135,130); INSERT INTO buch_autor VALUES (136,131); INSERT INTO buch_autor VALUES (137,132);
INSERT INTO buch_autor VALUES (138,133); INSERT INTO buch_autor VALUES (139,134); INSERT INTO buch_autor VALUES (140,135);
INSERT INTO buch_autor VALUES (141,136); INSERT INTO buch_autor VALUES (142,137); INSERT INTO buch_autor VALUES (143,138);
INSERT INTO buch_autor VALUES (144,139); INSERT INTO buch_autor VALUES (145,140); INSERT INTO buch_autor VALUES (146,141);
INSERT INTO buch_autor VALUES (147,142); INSERT INTO buch_autor VALUES (148,143); INSERT INTO buch_autor VALUES (149,144);
INSERT INTO buch_autor VALUES (150,145); INSERT INTO buch_autor VALUES (151,146); INSERT INTO buch_autor VALUES (152,147);
INSERT INTO buch_autor VALUES (153,148); INSERT INTO buch_autor VALUES (154,149); INSERT INTO buch_autor VALUES (155,150);
INSERT INTO buch_autor VALUES (156,151); INSERT INTO buch_autor VALUES (157,152); INSERT INTO buch_autor VALUES (158,153);
INSERT INTO buch_autor VALUES (159,154); INSERT INTO buch_autor VALUES (160,155); INSERT INTO buch_autor VALUES (161,156);
INSERT INTO buch_autor VALUES (162,157); INSERT INTO buch_autor VALUES (163,158); INSERT INTO buch_autor VALUES (164,159);
INSERT INTO buch_autor VALUES (165,160); INSERT INTO buch_autor VALUES (166,161); INSERT INTO buch_autor VALUES (167,162);
INSERT INTO buch_autor VALUES (168,163); INSERT INTO buch_autor VALUES (169,164); INSERT INTO buch_autor VALUES (170,165);
INSERT INTO buch_autor VALUES (171,166); INSERT INTO buch_autor VALUES (172,167); INSERT INTO buch_autor VALUES (173,168);
INSERT INTO buch_autor VALUES (174,169); INSERT INTO buch_autor VALUES (175,170); INSERT INTO buch_autor VALUES (176,171);
INSERT INTO buch_autor VALUES (177,172); INSERT INTO buch_autor VALUES (178,173); INSERT INTO buch_autor VALUES (179,174);
INSERT INTO buch_autor VALUES (180,175); INSERT INTO buch_autor VALUES (181,176); INSERT INTO buch_autor VALUES (182,177);
INSERT INTO buch_autor VALUES (183,178); INSERT INTO buch_autor VALUES (184,179); INSERT INTO buch_autor VALUES (185,180);
INSERT INTO buch_autor VALUES (186,181); INSERT INTO buch_autor VALUES (187,182); INSERT INTO buch_autor VALUES (188,183);
INSERT INTO buch_autor VALUES (189,184); INSERT INTO buch_autor VALUES (190,185); INSERT INTO buch_autor VALUES (191,186);
INSERT INTO buch_autor VALUES (192,187); INSERT INTO buch_autor VALUES (193,188); INSERT INTO buch_autor VALUES (194,189);
INSERT INTO buch_autor VALUES (195,190); INSERT INTO buch_autor VALUES (196,191); INSERT INTO buch_autor VALUES (197,192);
INSERT INTO buch_autor VALUES (198,193); INSERT INTO buch_autor VALUES (199,194); INSERT INTO buch_autor VALUES (200,195);

-- Bücher 201-300
INSERT INTO buch_autor VALUES (201,196); INSERT INTO buch_autor VALUES (202,197); INSERT INTO buch_autor VALUES (203,198);
INSERT INTO buch_autor VALUES (204,199); INSERT INTO buch_autor VALUES (205,200); INSERT INTO buch_autor VALUES (206,11);
INSERT INTO buch_autor VALUES (207,11);  INSERT INTO buch_autor VALUES (208,11);  INSERT INTO buch_autor VALUES (209,11);
INSERT INTO buch_autor VALUES (210,11);  INSERT INTO buch_autor VALUES (211,201); INSERT INTO buch_autor VALUES (212,202);
INSERT INTO buch_autor VALUES (213,203); INSERT INTO buch_autor VALUES (214,204); INSERT INTO buch_autor VALUES (215,205);
INSERT INTO buch_autor VALUES (216,206); INSERT INTO buch_autor VALUES (217,207); INSERT INTO buch_autor VALUES (218,208);
INSERT INTO buch_autor VALUES (219,209); INSERT INTO buch_autor VALUES (220,210); INSERT INTO buch_autor VALUES (221,211);
INSERT INTO buch_autor VALUES (222,212); INSERT INTO buch_autor VALUES (223,213); INSERT INTO buch_autor VALUES (224,214);
INSERT INTO buch_autor VALUES (225,215); INSERT INTO buch_autor VALUES (226,216); INSERT INTO buch_autor VALUES (227,217);
INSERT INTO buch_autor VALUES (228,218); INSERT INTO buch_autor VALUES (229,219); INSERT INTO buch_autor VALUES (230,220);
INSERT INTO buch_autor VALUES (231,221); INSERT INTO buch_autor VALUES (232,222); INSERT INTO buch_autor VALUES (233,223);
INSERT INTO buch_autor VALUES (234,224); INSERT INTO buch_autor VALUES (235,225); INSERT INTO buch_autor VALUES (236,226);
INSERT INTO buch_autor VALUES (237,227); INSERT INTO buch_autor VALUES (238,228); INSERT INTO buch_autor VALUES (239,229);
INSERT INTO buch_autor VALUES (240,230); INSERT INTO buch_autor VALUES (241,231); INSERT INTO buch_autor VALUES (242,232);
INSERT INTO buch_autor VALUES (243,233); INSERT INTO buch_autor VALUES (244,234); INSERT INTO buch_autor VALUES (245,235);
INSERT INTO buch_autor VALUES (246,236); INSERT INTO buch_autor VALUES (247,237); INSERT INTO buch_autor VALUES (248,238);
INSERT INTO buch_autor VALUES (249,239); INSERT INTO buch_autor VALUES (250,240); INSERT INTO buch_autor VALUES (251,241);
INSERT INTO buch_autor VALUES (252,242); INSERT INTO buch_autor VALUES (253,243); INSERT INTO buch_autor VALUES (254,244);
INSERT INTO buch_autor VALUES (255,245); INSERT INTO buch_autor VALUES (256,246); INSERT INTO buch_autor VALUES (257,247);
INSERT INTO buch_autor VALUES (258,248); INSERT INTO buch_autor VALUES (259,249); INSERT INTO buch_autor VALUES (260,250);
INSERT INTO buch_autor VALUES (261,251); INSERT INTO buch_autor VALUES (262,252); INSERT INTO buch_autor VALUES (263,253);
INSERT INTO buch_autor VALUES (264,254); INSERT INTO buch_autor VALUES (265,255); INSERT INTO buch_autor VALUES (266,256);
INSERT INTO buch_autor VALUES (267,257); INSERT INTO buch_autor VALUES (268,258); INSERT INTO buch_autor VALUES (269,259);
INSERT INTO buch_autor VALUES (270,260); INSERT INTO buch_autor VALUES (271,261); INSERT INTO buch_autor VALUES (272,262);
INSERT INTO buch_autor VALUES (273,263); INSERT INTO buch_autor VALUES (274,264); INSERT INTO buch_autor VALUES (275,265);
INSERT INTO buch_autor VALUES (276,266); INSERT INTO buch_autor VALUES (277,267); INSERT INTO buch_autor VALUES (278,268);
INSERT INTO buch_autor VALUES (279,269); INSERT INTO buch_autor VALUES (280,270); INSERT INTO buch_autor VALUES (281,271);
INSERT INTO buch_autor VALUES (282,272); INSERT INTO buch_autor VALUES (283,273); INSERT INTO buch_autor VALUES (284,274);
INSERT INTO buch_autor VALUES (285,275); INSERT INTO buch_autor VALUES (286,276); INSERT INTO buch_autor VALUES (287,277);
INSERT INTO buch_autor VALUES (288,278); INSERT INTO buch_autor VALUES (289,279); INSERT INTO buch_autor VALUES (290,279);
INSERT INTO buch_autor VALUES (291,280); INSERT INTO buch_autor VALUES (292,280); INSERT INTO buch_autor VALUES (293,280);
INSERT INTO buch_autor VALUES (294,281); INSERT INTO buch_autor VALUES (295,282); INSERT INTO buch_autor VALUES (296,283);
INSERT INTO buch_autor VALUES (297,284); INSERT INTO buch_autor VALUES (298,284); INSERT INTO buch_autor VALUES (299,284);
INSERT INTO buch_autor VALUES (300,284);

-- Bücher 301-400 -> Autoren ab 58 (Schiller, Goethe etc.) reuse
INSERT INTO buch_autor VALUES (301,62);  INSERT INTO buch_autor VALUES (302,63);  INSERT INTO buch_autor VALUES (303,62);
INSERT INTO buch_autor VALUES (304,63);  INSERT INTO buch_autor VALUES (305,62);  INSERT INTO buch_autor VALUES (306,134);
INSERT INTO buch_autor VALUES (307,134); INSERT INTO buch_autor VALUES (308,134); INSERT INTO buch_autor VALUES (309,134);
INSERT INTO buch_autor VALUES (310,134); INSERT INTO buch_autor VALUES (311,134); INSERT INTO buch_autor VALUES (312,134);
INSERT INTO buch_autor VALUES (313,134); INSERT INTO buch_autor VALUES (314,134); INSERT INTO buch_autor VALUES (315,62);
INSERT INTO buch_autor VALUES (316,62);  INSERT INTO buch_autor VALUES (317,62);  INSERT INTO buch_autor VALUES (318,62);
INSERT INTO buch_autor VALUES (319,62);  INSERT INTO buch_autor VALUES (320,63);  INSERT INTO buch_autor VALUES (321,63);
INSERT INTO buch_autor VALUES (322,63);  INSERT INTO buch_autor VALUES (323,63);  INSERT INTO buch_autor VALUES (324,63);
INSERT INTO buch_autor VALUES (325,63);  INSERT INTO buch_autor VALUES (326,63);  INSERT INTO buch_autor VALUES (327,114);
INSERT INTO buch_autor VALUES (328,114); INSERT INTO buch_autor VALUES (329,114); INSERT INTO buch_autor VALUES (330,114);
INSERT INTO buch_autor VALUES (331,112); INSERT INTO buch_autor VALUES (332,112); INSERT INTO buch_autor VALUES (333,112);
INSERT INTO buch_autor VALUES (334,112); INSERT INTO buch_autor VALUES (335,112); INSERT INTO buch_autor VALUES (336,91);
INSERT INTO buch_autor VALUES (337,91);  INSERT INTO buch_autor VALUES (338,91);  INSERT INTO buch_autor VALUES (339,91);
INSERT INTO buch_autor VALUES (340,91);  INSERT INTO buch_autor VALUES (341,91);  INSERT INTO buch_autor VALUES (342,91);
INSERT INTO buch_autor VALUES (343,91);  INSERT INTO buch_autor VALUES (344,1);   INSERT INTO buch_autor VALUES (345,2);
INSERT INTO buch_autor VALUES (346,3);   INSERT INTO buch_autor VALUES (347,4);   INSERT INTO buch_autor VALUES (348,5);
INSERT INTO buch_autor VALUES (349,6);   INSERT INTO buch_autor VALUES (350,7);   INSERT INTO buch_autor VALUES (351,38);
INSERT INTO buch_autor VALUES (352,38);  INSERT INTO buch_autor VALUES (353,38);  INSERT INTO buch_autor VALUES (354,40);
INSERT INTO buch_autor VALUES (355,40);  INSERT INTO buch_autor VALUES (356,40);  INSERT INTO buch_autor VALUES (357,40);
INSERT INTO buch_autor VALUES (358,40);  INSERT INTO buch_autor VALUES (359,40);  INSERT INTO buch_autor VALUES (360,40);
INSERT INTO buch_autor VALUES (361,40);  INSERT INTO buch_autor VALUES (362,40);  INSERT INTO buch_autor VALUES (363,40);
INSERT INTO buch_autor VALUES (364,40);  INSERT INTO buch_autor VALUES (365,40);  INSERT INTO buch_autor VALUES (366,40);
INSERT INTO buch_autor VALUES (367,40);  INSERT INTO buch_autor VALUES (368,40);  INSERT INTO buch_autor VALUES (369,40);
INSERT INTO buch_autor VALUES (370,40);  INSERT INTO buch_autor VALUES (371,40);  INSERT INTO buch_autor VALUES (372,40);
INSERT INTO buch_autor VALUES (373,40);  INSERT INTO buch_autor VALUES (374,40);  INSERT INTO buch_autor VALUES (375,40);
INSERT INTO buch_autor VALUES (376,75);  INSERT INTO buch_autor VALUES (377,75);  INSERT INTO buch_autor VALUES (378,75);
INSERT INTO buch_autor VALUES (379,76);  INSERT INTO buch_autor VALUES (380,76);  INSERT INTO buch_autor VALUES (381,76);
INSERT INTO buch_autor VALUES (382,76);  INSERT INTO buch_autor VALUES (383,76);  INSERT INTO buch_autor VALUES (384,76);
INSERT INTO buch_autor VALUES (385,76);  INSERT INTO buch_autor VALUES (386,76);  INSERT INTO buch_autor VALUES (387,76);
INSERT INTO buch_autor VALUES (388,27);  INSERT INTO buch_autor VALUES (389,27);  INSERT INTO buch_autor VALUES (390,27);
INSERT INTO buch_autor VALUES (391,27);  INSERT INTO buch_autor VALUES (392,27);  INSERT INTO buch_autor VALUES (393,27);
INSERT INTO buch_autor VALUES (394,27);  INSERT INTO buch_autor VALUES (395,27);  INSERT INTO buch_autor VALUES (396,27);
INSERT INTO buch_autor VALUES (397,27);  INSERT INTO buch_autor VALUES (398,27);  INSERT INTO buch_autor VALUES (399,27);
INSERT INTO buch_autor VALUES (400,27);

COMMIT;


-- =============================================================
-- PART 9: BUCH_GENRE (je Buch 1-2 Genres)
-- =============================================================

INSERT INTO buch_genre VALUES (1,1);   INSERT INTO buch_genre VALUES (1,4);   -- Schwarm: Roman + SF
INSERT INTO buch_genre VALUES (2,5);   INSERT INTO buch_genre VALUES (2,13);  -- Tintenherz: Fantasy + Jugendbuch
INSERT INTO buch_genre VALUES (3,1);                                           -- Vermessung: Roman
INSERT INTO buch_genre VALUES (4,1);   INSERT INTO buch_genre VALUES (4,12);  -- Vorleser: Roman + Klassiker
INSERT INTO buch_genre VALUES (5,3);                                           -- Das Kind: Thriller
INSERT INTO buch_genre VALUES (6,7);   INSERT INTO buch_genre VALUES (6,18);  -- Säulen der Erde: Hist. + Abenteuer
INSERT INTO buch_genre VALUES (7,5);   INSERT INTO buch_genre VALUES (7,13);  -- Harry Potter: Fantasy + Jugendbuch
INSERT INTO buch_genre VALUES (8,19);  INSERT INTO buch_genre VALUES (8,12);  -- 1984: Dystopie + Klassiker
INSERT INTO buch_genre VALUES (9,5);   INSERT INTO buch_genre VALUES (9,12);  -- HdR: Fantasy + Klassiker
INSERT INTO buch_genre VALUES (10,2);                                          -- Mord im Orient: Krimi
INSERT INTO buch_genre VALUES (11,6);  INSERT INTO buch_genre VALUES (11,3);  -- Es: Horror + Thriller
INSERT INTO buch_genre VALUES (12,1);  INSERT INTO buch_genre VALUES (12,12); -- alter Mann: Roman + Klassiker
INSERT INTO buch_genre VALUES (13,1);  INSERT INTO buch_genre VALUES (13,12); -- Huckleberry: Roman + Klassiker
INSERT INTO buch_genre VALUES (14,1);  INSERT INTO buch_genre VALUES (14,12); -- Gatsby: Roman + Klassiker
INSERT INTO buch_genre VALUES (15,1);  INSERT INTO buch_genre VALUES (15,12); -- Mäuse: Roman + Klassiker
INSERT INTO buch_genre VALUES (16,1);  INSERT INTO buch_genre VALUES (16,12); -- Nachtigall: Roman + Klassiker
INSERT INTO buch_genre VALUES (17,1);                                          -- Beloved: Roman
INSERT INTO buch_genre VALUES (18,1);  INSERT INTO buch_genre VALUES (18,12); -- Moby: Roman + Klassiker
INSERT INTO buch_genre VALUES (19,17); INSERT INTO buch_genre VALUES (19,6);  -- Poe: Kurzgeschichten + Horror
INSERT INTO buch_genre VALUES (20,1);  INSERT INTO buch_genre VALUES (20,12); -- Schall: Roman + Klassiker
-- Genres 21-100
INSERT INTO buch_genre VALUES (21,1);  INSERT INTO buch_genre VALUES (22,1);  INSERT INTO buch_genre VALUES (23,1);
INSERT INTO buch_genre VALUES (24,1);  INSERT INTO buch_genre VALUES (25,12); INSERT INTO buch_genre VALUES (26,1);
INSERT INTO buch_genre VALUES (27,17); INSERT INTO buch_genre VALUES (28,1);  INSERT INTO buch_genre VALUES (29,1);
INSERT INTO buch_genre VALUES (30,11); INSERT INTO buch_genre VALUES (31,11); INSERT INTO buch_genre VALUES (32,1);
INSERT INTO buch_genre VALUES (33,1);  INSERT INTO buch_genre VALUES (34,12); INSERT INTO buch_genre VALUES (35,1);
INSERT INTO buch_genre VALUES (36,12); INSERT INTO buch_genre VALUES (37,12); INSERT INTO buch_genre VALUES (38,17);
INSERT INTO buch_genre VALUES (39,2);  INSERT INTO buch_genre VALUES (40,12); INSERT INTO buch_genre VALUES (41,1);
INSERT INTO buch_genre VALUES (42,1);  INSERT INTO buch_genre VALUES (43,12); INSERT INTO buch_genre VALUES (44,12);
INSERT INTO buch_genre VALUES (45,18); INSERT INTO buch_genre VALUES (46,16); INSERT INTO buch_genre VALUES (47,2);
INSERT INTO buch_genre VALUES (48,2);  INSERT INTO buch_genre VALUES (49,1);  INSERT INTO buch_genre VALUES (50,1);
INSERT INTO buch_genre VALUES (51,1);  INSERT INTO buch_genre VALUES (52,1);  INSERT INTO buch_genre VALUES (53,2);
INSERT INTO buch_genre VALUES (54,1);  INSERT INTO buch_genre VALUES (55,1);  INSERT INTO buch_genre VALUES (56,1);
INSERT INTO buch_genre VALUES (57,1);  INSERT INTO buch_genre VALUES (58,1);  INSERT INTO buch_genre VALUES (59,1);
INSERT INTO buch_genre VALUES (60,12); INSERT INTO buch_genre VALUES (61,11); INSERT INTO buch_genre VALUES (62,11);
INSERT INTO buch_genre VALUES (63,11); INSERT INTO buch_genre VALUES (64,12); INSERT INTO buch_genre VALUES (65,12);
INSERT INTO buch_genre VALUES (66,12); INSERT INTO buch_genre VALUES (67,12); INSERT INTO buch_genre VALUES (68,10);
INSERT INTO buch_genre VALUES (69,10); INSERT INTO buch_genre VALUES (70,10); INSERT INTO buch_genre VALUES (71,1);
INSERT INTO buch_genre VALUES (72,1);  INSERT INTO buch_genre VALUES (73,1);  INSERT INTO buch_genre VALUES (74,1);
INSERT INTO buch_genre VALUES (75,1);  INSERT INTO buch_genre VALUES (76,1);  INSERT INTO buch_genre VALUES (77,4);
INSERT INTO buch_genre VALUES (78,12); INSERT INTO buch_genre VALUES (79,4);  INSERT INTO buch_genre VALUES (80,2);
INSERT INTO buch_genre VALUES (81,3);  INSERT INTO buch_genre VALUES (82,2);  INSERT INTO buch_genre VALUES (83,2);
INSERT INTO buch_genre VALUES (84,2);  INSERT INTO buch_genre VALUES (85,2);  INSERT INTO buch_genre VALUES (86,1);
INSERT INTO buch_genre VALUES (87,1);  INSERT INTO buch_genre VALUES (88,1);  INSERT INTO buch_genre VALUES (89,8);
INSERT INTO buch_genre VALUES (90,12); INSERT INTO buch_genre VALUES (91,1);  INSERT INTO buch_genre VALUES (92,1);
INSERT INTO buch_genre VALUES (93,1);  INSERT INTO buch_genre VALUES (94,1);  INSERT INTO buch_genre VALUES (95,1);
INSERT INTO buch_genre VALUES (96,1);  INSERT INTO buch_genre VALUES (97,1);  INSERT INTO buch_genre VALUES (98,17);
INSERT INTO buch_genre VALUES (99,17); INSERT INTO buch_genre VALUES (100,1);
-- Genres 101-200
INSERT INTO buch_genre VALUES (101,19); INSERT INTO buch_genre VALUES (102,19); INSERT INTO buch_genre VALUES (103,10);
INSERT INTO buch_genre VALUES (104,4);  INSERT INTO buch_genre VALUES (105,19); INSERT INTO buch_genre VALUES (106,3);
INSERT INTO buch_genre VALUES (107,3);  INSERT INTO buch_genre VALUES (108,3);  INSERT INTO buch_genre VALUES (109,1);
INSERT INTO buch_genre VALUES (110,1);  INSERT INTO buch_genre VALUES (111,1);  INSERT INTO buch_genre VALUES (112,1);
INSERT INTO buch_genre VALUES (113,1);  INSERT INTO buch_genre VALUES (114,1);  INSERT INTO buch_genre VALUES (115,1);
INSERT INTO buch_genre VALUES (116,1);  INSERT INTO buch_genre VALUES (117,1);  INSERT INTO buch_genre VALUES (118,1);
INSERT INTO buch_genre VALUES (119,1);  INSERT INTO buch_genre VALUES (120,1);  INSERT INTO buch_genre VALUES (121,1);
INSERT INTO buch_genre VALUES (122,1);  INSERT INTO buch_genre VALUES (123,1);  INSERT INTO buch_genre VALUES (124,1);
INSERT INTO buch_genre VALUES (125,20); INSERT INTO buch_genre VALUES (126,4);  INSERT INTO buch_genre VALUES (127,3);
INSERT INTO buch_genre VALUES (128,1);  INSERT INTO buch_genre VALUES (129,17); INSERT INTO buch_genre VALUES (130,17);
INSERT INTO buch_genre VALUES (131,1);  INSERT INTO buch_genre VALUES (132,2);  INSERT INTO buch_genre VALUES (133,19);
INSERT INTO buch_genre VALUES (134,1);  INSERT INTO buch_genre VALUES (135,1);  INSERT INTO buch_genre VALUES (136,10);
INSERT INTO buch_genre VALUES (137,10); INSERT INTO buch_genre VALUES (138,7);  INSERT INTO buch_genre VALUES (139,18);
INSERT INTO buch_genre VALUES (140,18); INSERT INTO buch_genre VALUES (141,4);  INSERT INTO buch_genre VALUES (142,4);
INSERT INTO buch_genre VALUES (143,4);  INSERT INTO buch_genre VALUES (144,4);  INSERT INTO buch_genre VALUES (145,4);
INSERT INTO buch_genre VALUES (146,5);  INSERT INTO buch_genre VALUES (147,5);  INSERT INTO buch_genre VALUES (148,5);
INSERT INTO buch_genre VALUES (149,5);  INSERT INTO buch_genre VALUES (150,5);  INSERT INTO buch_genre VALUES (151,5);
INSERT INTO buch_genre VALUES (152,14); INSERT INTO buch_genre VALUES (153,14); INSERT INTO buch_genre VALUES (154,14);
INSERT INTO buch_genre VALUES (155,14); INSERT INTO buch_genre VALUES (156,13); INSERT INTO buch_genre VALUES (157,13);
INSERT INTO buch_genre VALUES (158,13); INSERT INTO buch_genre VALUES (159,13); INSERT INTO buch_genre VALUES (160,13);
INSERT INTO buch_genre VALUES (161,14); INSERT INTO buch_genre VALUES (162,14); INSERT INTO buch_genre VALUES (163,14);
INSERT INTO buch_genre VALUES (164,1);  INSERT INTO buch_genre VALUES (165,1);  INSERT INTO buch_genre VALUES (166,1);
INSERT INTO buch_genre VALUES (167,1);  INSERT INTO buch_genre VALUES (168,1);  INSERT INTO buch_genre VALUES (169,8);
INSERT INTO buch_genre VALUES (170,3);  INSERT INTO buch_genre VALUES (171,1);  INSERT INTO buch_genre VALUES (172,1);
INSERT INTO buch_genre VALUES (173,18); INSERT INTO buch_genre VALUES (174,1);  INSERT INTO buch_genre VALUES (175,1);
INSERT INTO buch_genre VALUES (176,1);  INSERT INTO buch_genre VALUES (177,1);  INSERT INTO buch_genre VALUES (178,1);
INSERT INTO buch_genre VALUES (179,1);  INSERT INTO buch_genre VALUES (180,19); INSERT INTO buch_genre VALUES (181,1);
INSERT INTO buch_genre VALUES (182,1);  INSERT INTO buch_genre VALUES (183,7);  INSERT INTO buch_genre VALUES (184,3);
INSERT INTO buch_genre VALUES (185,6);  INSERT INTO buch_genre VALUES (186,6);  INSERT INTO buch_genre VALUES (187,6);
INSERT INTO buch_genre VALUES (188,6);  INSERT INTO buch_genre VALUES (189,5);  INSERT INTO buch_genre VALUES (190,6);
INSERT INTO buch_genre VALUES (191,6);  INSERT INTO buch_genre VALUES (192,5);  INSERT INTO buch_genre VALUES (193,6);
INSERT INTO buch_genre VALUES (194,6);  INSERT INTO buch_genre VALUES (195,6);  INSERT INTO buch_genre VALUES (196,6);
INSERT INTO buch_genre VALUES (197,6);  INSERT INTO buch_genre VALUES (198,6);  INSERT INTO buch_genre VALUES (199,6);
INSERT INTO buch_genre VALUES (200,6);
-- Genres 201-400 (vereinfacht: 1 Genre pro Buch)
INSERT INTO buch_genre VALUES (201,6);  INSERT INTO buch_genre VALUES (202,6);  INSERT INTO buch_genre VALUES (203,6);
INSERT INTO buch_genre VALUES (204,6);  INSERT INTO buch_genre VALUES (205,6);  INSERT INTO buch_genre VALUES (206,6);
INSERT INTO buch_genre VALUES (207,6);  INSERT INTO buch_genre VALUES (208,6);  INSERT INTO buch_genre VALUES (209,6);
INSERT INTO buch_genre VALUES (210,3);  INSERT INTO buch_genre VALUES (211,3);  INSERT INTO buch_genre VALUES (212,3);
INSERT INTO buch_genre VALUES (213,3);  INSERT INTO buch_genre VALUES (214,1);  INSERT INTO buch_genre VALUES (215,1);
INSERT INTO buch_genre VALUES (216,7);  INSERT INTO buch_genre VALUES (217,14); INSERT INTO buch_genre VALUES (218,18);
INSERT INTO buch_genre VALUES (219,18); INSERT INTO buch_genre VALUES (220,7);  INSERT INTO buch_genre VALUES (221,1);
INSERT INTO buch_genre VALUES (222,1);  INSERT INTO buch_genre VALUES (223,1);  INSERT INTO buch_genre VALUES (224,3);
INSERT INTO buch_genre VALUES (225,3);  INSERT INTO buch_genre VALUES (226,3);  INSERT INTO buch_genre VALUES (227,3);
INSERT INTO buch_genre VALUES (228,1);  INSERT INTO buch_genre VALUES (229,1);  INSERT INTO buch_genre VALUES (230,4);
INSERT INTO buch_genre VALUES (231,3);  INSERT INTO buch_genre VALUES (232,3);  INSERT INTO buch_genre VALUES (233,3);
INSERT INTO buch_genre VALUES (234,3);  INSERT INTO buch_genre VALUES (235,3);  INSERT INTO buch_genre VALUES (236,3);
INSERT INTO buch_genre VALUES (237,4);  INSERT INTO buch_genre VALUES (238,4);  INSERT INTO buch_genre VALUES (239,4);
INSERT INTO buch_genre VALUES (240,4);  INSERT INTO buch_genre VALUES (241,1);  INSERT INTO buch_genre VALUES (242,1);
INSERT INTO buch_genre VALUES (243,1);  INSERT INTO buch_genre VALUES (244,1);  INSERT INTO buch_genre VALUES (245,1);
INSERT INTO buch_genre VALUES (246,1);  INSERT INTO buch_genre VALUES (247,1);  INSERT INTO buch_genre VALUES (248,1);
INSERT INTO buch_genre VALUES (249,1);  INSERT INTO buch_genre VALUES (250,1);  INSERT INTO buch_genre VALUES (251,1);
INSERT INTO buch_genre VALUES (252,4);  INSERT INTO buch_genre VALUES (253,4);  INSERT INTO buch_genre VALUES (254,4);
INSERT INTO buch_genre VALUES (255,4);  INSERT INTO buch_genre VALUES (256,4);  INSERT INTO buch_genre VALUES (257,4);
INSERT INTO buch_genre VALUES (258,4);  INSERT INTO buch_genre VALUES (259,4);  INSERT INTO buch_genre VALUES (260,4);
INSERT INTO buch_genre VALUES (261,4);  INSERT INTO buch_genre VALUES (262,4);  INSERT INTO buch_genre VALUES (263,4);
INSERT INTO buch_genre VALUES (264,4);  INSERT INTO buch_genre VALUES (265,4);  INSERT INTO buch_genre VALUES (266,4);
INSERT INTO buch_genre VALUES (267,4);  INSERT INTO buch_genre VALUES (268,4);  INSERT INTO buch_genre VALUES (269,4);
INSERT INTO buch_genre VALUES (270,4);  INSERT INTO buch_genre VALUES (271,4);  INSERT INTO buch_genre VALUES (272,4);
INSERT INTO buch_genre VALUES (273,4);  INSERT INTO buch_genre VALUES (274,4);  INSERT INTO buch_genre VALUES (275,4);
INSERT INTO buch_genre VALUES (276,4);  INSERT INTO buch_genre VALUES (277,4);  INSERT INTO buch_genre VALUES (278,4);
INSERT INTO buch_genre VALUES (279,4);  INSERT INTO buch_genre VALUES (280,4);  INSERT INTO buch_genre VALUES (281,4);
INSERT INTO buch_genre VALUES (282,4);  INSERT INTO buch_genre VALUES (283,4);  INSERT INTO buch_genre VALUES (284,4);
INSERT INTO buch_genre VALUES (285,4);  INSERT INTO buch_genre VALUES (286,4);  INSERT INTO buch_genre VALUES (287,4);
INSERT INTO buch_genre VALUES (288,4);  INSERT INTO buch_genre VALUES (289,4);  INSERT INTO buch_genre VALUES (290,4);
INSERT INTO buch_genre VALUES (291,4);  INSERT INTO buch_genre VALUES (292,4);  INSERT INTO buch_genre VALUES (293,4);
INSERT INTO buch_genre VALUES (294,4);  INSERT INTO buch_genre VALUES (295,4);  INSERT INTO buch_genre VALUES (296,4);
INSERT INTO buch_genre VALUES (297,4);  INSERT INTO buch_genre VALUES (298,4);  INSERT INTO buch_genre VALUES (299,10);
INSERT INTO buch_genre VALUES (300,10); INSERT INTO buch_genre VALUES (301,16); INSERT INTO buch_genre VALUES (302,16);
INSERT INTO buch_genre VALUES (303,16); INSERT INTO buch_genre VALUES (304,16); INSERT INTO buch_genre VALUES (305,16);
INSERT INTO buch_genre VALUES (306,16); INSERT INTO buch_genre VALUES (307,16); INSERT INTO buch_genre VALUES (308,16);
INSERT INTO buch_genre VALUES (309,16); INSERT INTO buch_genre VALUES (310,16); INSERT INTO buch_genre VALUES (311,16);
INSERT INTO buch_genre VALUES (312,16); INSERT INTO buch_genre VALUES (313,16); INSERT INTO buch_genre VALUES (314,16);
INSERT INTO buch_genre VALUES (315,16); INSERT INTO buch_genre VALUES (316,16); INSERT INTO buch_genre VALUES (317,16);
INSERT INTO buch_genre VALUES (318,16); INSERT INTO buch_genre VALUES (319,16); INSERT INTO buch_genre VALUES (320,16);
INSERT INTO buch_genre VALUES (321,12); INSERT INTO buch_genre VALUES (322,12); INSERT INTO buch_genre VALUES (323,12);
INSERT INTO buch_genre VALUES (324,14); INSERT INTO buch_genre VALUES (325,7);  INSERT INTO buch_genre VALUES (326,7);
INSERT INTO buch_genre VALUES (327,16); INSERT INTO buch_genre VALUES (328,16); INSERT INTO buch_genre VALUES (329,16);
INSERT INTO buch_genre VALUES (330,16); INSERT INTO buch_genre VALUES (331,16); INSERT INTO buch_genre VALUES (332,16);
INSERT INTO buch_genre VALUES (333,1);  INSERT INTO buch_genre VALUES (334,1);  INSERT INTO buch_genre VALUES (335,1);
INSERT INTO buch_genre VALUES (336,16); INSERT INTO buch_genre VALUES (337,2);  INSERT INTO buch_genre VALUES (338,2);
INSERT INTO buch_genre VALUES (339,2);  INSERT INTO buch_genre VALUES (340,2);  INSERT INTO buch_genre VALUES (341,16);
INSERT INTO buch_genre VALUES (342,16); INSERT INTO buch_genre VALUES (343,16); INSERT INTO buch_genre VALUES (344,1);
INSERT INTO buch_genre VALUES (345,1);  INSERT INTO buch_genre VALUES (346,1);  INSERT INTO buch_genre VALUES (347,1);
INSERT INTO buch_genre VALUES (348,1);  INSERT INTO buch_genre VALUES (349,1);  INSERT INTO buch_genre VALUES (350,1);
INSERT INTO buch_genre VALUES (351,12); INSERT INTO buch_genre VALUES (352,17); INSERT INTO buch_genre VALUES (353,16);
INSERT INTO buch_genre VALUES (354,17); INSERT INTO buch_genre VALUES (355,17); INSERT INTO buch_genre VALUES (356,17);
INSERT INTO buch_genre VALUES (357,16); INSERT INTO buch_genre VALUES (358,16); INSERT INTO buch_genre VALUES (359,16);
INSERT INTO buch_genre VALUES (360,16); INSERT INTO buch_genre VALUES (361,17); INSERT INTO buch_genre VALUES (362,17);
INSERT INTO buch_genre VALUES (363,17); INSERT INTO buch_genre VALUES (364,17); INSERT INTO buch_genre VALUES (365,17);
INSERT INTO buch_genre VALUES (366,17); INSERT INTO buch_genre VALUES (367,17); INSERT INTO buch_genre VALUES (368,17);
INSERT INTO buch_genre VALUES (369,17); INSERT INTO buch_genre VALUES (370,17); INSERT INTO buch_genre VALUES (371,17);
INSERT INTO buch_genre VALUES (372,1);  INSERT INTO buch_genre VALUES (373,1);  INSERT INTO buch_genre VALUES (374,17);
INSERT INTO buch_genre VALUES (375,10); INSERT INTO buch_genre VALUES (376,10); INSERT INTO buch_genre VALUES (377,10);
INSERT INTO buch_genre VALUES (378,16); INSERT INTO buch_genre VALUES (379,16); INSERT INTO buch_genre VALUES (380,16);
INSERT INTO buch_genre VALUES (381,16); INSERT INTO buch_genre VALUES (382,16); INSERT INTO buch_genre VALUES (383,16);
INSERT INTO buch_genre VALUES (384,16); INSERT INTO buch_genre VALUES (385,16); INSERT INTO buch_genre VALUES (386,11);
INSERT INTO buch_genre VALUES (387,11); INSERT INTO buch_genre VALUES (388,1);  INSERT INTO buch_genre VALUES (389,1);
INSERT INTO buch_genre VALUES (390,1);  INSERT INTO buch_genre VALUES (391,1);  INSERT INTO buch_genre VALUES (392,1);
INSERT INTO buch_genre VALUES (393,1);  INSERT INTO buch_genre VALUES (394,1);  INSERT INTO buch_genre VALUES (395,17);
INSERT INTO buch_genre VALUES (396,17); INSERT INTO buch_genre VALUES (397,17); INSERT INTO buch_genre VALUES (398,17);
INSERT INTO buch_genre VALUES (399,17); INSERT INTO buch_genre VALUES (400,17);

COMMIT;


-- =============================================================
-- PART 10: EXEMPLARE (ca. 200 Stück, nutzer 1-27 als Besitzer)
-- abholort_id zeigt auf eine der Adressen des jeweiligen Besitzers
-- Adressen: nutzer 1-15 haben adresse_id 1-15
--           nutzer 16 hat adresse_id 16-17, nutzer 17: 18-19, ...
-- Vereinfachung: abholort_id = Standard-Adresse des Besitzers
-- =============================================================

-- Hilfskommentar: Standard-Adresse je Nutzer (adresse_id)
-- nutzer 1->1, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10
-- nutzer 11->11, 12->12, 13->13, 14->14, 15->15
-- nutzer 16->16, 17->18, 18->20, 19->22, 20->24, 21->26, 22->28, 23->30
-- nutzer 24->31, 25->35, 26->39, 27->44

INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (1,  1,  1,  'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (2,  1,  1,  'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (3,  1,  1,  'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (4,  1,  1,  'AKZEPTABEL',0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (5,  1,  1,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (6,  2,  2,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (7,  2,  2,  'NEU',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (8,  2,  2,  'GUT',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (9,  2,  2,  'AKZEPTABEL',0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (10, 3,  3,  'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (11, 3,  3,  'SCHLECHT',  0, 7);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (12, 3,  3,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (13, 4,  4,  'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (14, 4,  4,  'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (15, 4,  4,  'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (16, 5,  5,  'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (17, 5,  5,  'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (18, 5,  5,  'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (19, 6,  6,  'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (20, 6,  6,  'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (21, 6,  6,  'NEU',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (22, 7,  7,  'GUT',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (23, 7,  7,  'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (24, 7,  7,  'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (25, 8,  8,  'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (26, 8,  8,  'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (27, 8,  8,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (28, 9,  9,  'AKZEPTABEL',0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (29, 9,  9,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (30, 9,  9,  'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (31, 10, 10, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (32, 10, 10, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (33, 10, 10, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (34, 11, 11, 'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (35, 11, 11, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (36, 11, 11, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (37, 12, 12, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (38, 12, 12, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (39, 12, 12, 'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (40, 13, 13, 'NEU',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (41, 13, 13, 'GUT',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (42, 13, 13, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (43, 14, 14, 'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (44, 14, 14, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (45, 14, 14, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (46, 15, 15, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (47, 15, 15, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (48, 15, 15, 'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (50, 16, 16, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (51, 16, 16, 'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (52, 16, 16, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (53, 17, 18, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (54, 17, 18, 'AKZEPTABEL',0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (55, 17, 18, 'GUT',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (56, 18, 20, 'NEU',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (57, 18, 20, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (58, 18, 20, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (59, 19, 22, 'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (60, 19, 22, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (61, 19, 22, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (62, 20, 24, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (63, 20, 24, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (64, 20, 24, 'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (65, 21, 26, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (66, 21, 26, 'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (67, 21, 26, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (68, 22, 28, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (69, 22, 28, 'AKZEPTABEL',0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (70, 22, 28, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (71, 23, 30, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (72, 23, 30, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (73, 23, 30, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (74, 24, 31, 'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (75, 24, 31, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (76, 24, 31, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (77, 25, 35, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (78, 25, 35, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (79, 25, 35, 'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (80, 26, 39, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (81, 26, 39, 'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (82, 26, 39, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (83, 27, 44, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (84, 27, 44, 'AKZEPTABEL',0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (85, 27, 44, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (86, 1,  1,  'NEU',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (87, 2,  2,  'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (88, 3,  3,  'GUT',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (89, 4,  4,  'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (90, 5,  5,  'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (91, 6,  6,  'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (92, 7,  7,  'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (93, 8,  8,  'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (94, 9,  9,  'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (95, 10, 10, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (96, 11, 11, 'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (97, 12, 12, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (98, 13, 13, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (99, 14, 14, 'AKZEPTABEL',0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (100,15, 15, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (101,16, 16, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (102,17, 18, 'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (103,18, 20, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (104,19, 22, 'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (105,20, 24, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (106,21, 26, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (107,22, 28, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (108,23, 30, 'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (109,24, 31, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (110,25, 35, 'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (111,26, 39, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (112,27, 44, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (113,1,  1,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (114,2,  2,  'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (115,3,  3,  'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (116,4,  4,  'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (117,5,  5,  'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (118,6,  6,  'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (119,7,  7,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (120,8,  8,  'AKZEPTABEL',0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (121,9,  9,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (122,10, 10, 'GUT',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (123,11, 11, 'NEU',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (124,12, 12, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (125,13, 13, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (126,14, 14, 'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (127,15, 15, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (128,16, 16, 'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (129,17, 18, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (130,18, 20, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (131,19, 22, 'AKZEPTABEL',0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (132,20, 24, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (133,21, 26, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (134,22, 28, 'NEU',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (135,23, 30, 'GUT',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (136,24, 31, 'AKZEPTABEL',1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (137,25, 35, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (138,26, 39, 'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (139,27, 44, 'NEU',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (140,1,  1,  'GUT',       0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (141,2,  2,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (142,3,  3,  'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (143,4,  4,  'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (144,5,  5,  'NEU',       1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (145,6,  6,  'GUT',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (146,7,  7,  'GUT',       0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (147,8,  8,  'AKZEPTABEL',1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (148,9,  9,  'GUT',       1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (149,10, 10, 'GUT',       0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (150,11, 11, 'NEU',       1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (1,  5,  5,  'AKZEPTABEL', 0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (1,  12, 12, 'GUT',        1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (7,  3,  3,  'NEU',        1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (7,  15, 15, 'GUT',        0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (8,  6,  6,  'GUT',        1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (8,  20, 24, 'AKZEPTABEL', 0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (9,  4,  4,  'GUT',        1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (9,  17, 18, 'NEU',        1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (9,  25, 35, 'AKZEPTABEL', 0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (21, 8,  8,  'GUT',        1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (21, 14, 14, 'AKZEPTABEL', 0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (25, 10, 10, 'GUT',        1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (25, 19, 22, 'NEU',        1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (36, 7,  7,  'GUT',        0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (36, 22, 28, 'AKZEPTABEL', 1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (54, 11, 11, 'GUT',        1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (54, 23, 30, 'NEU',        0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (55, 13, 13, 'GUT',        1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (55, 26, 39, 'AKZEPTABEL', 0, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (91, 2,  2,  'GUT',        1, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (91, 16, 16, 'NEU',        1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (91, 24, 31, 'AKZEPTABEL', 0, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (100,9,  9,  'GUT',        1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (100,18, 20, 'GUT',        0, 21);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (150,4,  4,  'NEU',        1, 30);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (150,21, 26, 'GUT',        1, 14);
INSERT INTO exemplar (buch_id, besitzer_id, abholort_id, zustand, postversand_moeglich, max_leihdauer_tage) VALUES (150,27, 44, 'AKZEPTABEL', 0, 21);
COMMIT;