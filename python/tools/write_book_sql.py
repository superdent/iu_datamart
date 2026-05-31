import json
import logging
import re

INPUT_FILE  = "books_raw.json"
OUTPUT_FILE = "dummy_data_books.sql"

LANG_MAP = {
    "eng": "Englisch", "ger": "Deutsch", "fre": "Franzoesisch",
    "spa": "Spanisch",  "ita": "Italienisch", "por": "Portugiesisch",
    "rus": "Russisch",  "jpn": "Japanisch",   "chi": "Chinesisch",
    "dut": "Niederlaendisch", "pol": "Polnisch", "swe": "Schwedisch",
    "nor": "Norwegisch", "dan": "Daenisch",    "fin": "Finnisch",
    "ara": "Arabisch",  "tur": "Tuerkisch",   "kor": "Koreanisch",
    "lat": "Latein",    "gre": "Griechisch",  "heb": "Hebraeisch",
    "hun": "Ungarisch", "cze": "Tschechisch", "rum": "Rumaenisch",
}

GENRE_WHITELIST = [
    "Fantasy", "Science Fiction", "Mystery", "Thriller",
    "Horror", "Romance", "Adventure", "Biography", "History",
    "Children", "Young Adult", "Classics", "Sonstiges",
]

GENRE_KEYWORDS = {g.lower(): g for g in GENRE_WHITELIST if g != "Sonstiges"}

logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(message)s", datefmt="%H:%M:%S")
log = logging.getLogger(__name__)


def section(title):
    bar = "-- " + "=" * 61
    return f"\n{bar}\n-- {title}\n{bar}\n"


def escape_sql(value):
    return value.replace("'", "''")


def split_name(full_name):
    parts = full_name.strip().split()
    if len(parts) == 1:
        return "", parts[0]
    return " ".join(parts[:-1]), parts[-1]


def pick_language(lang_list):
    for pref in ["ger", "eng"]:
        if pref in lang_list:
            return LANG_MAP.get(pref, pref)
    if lang_list:
        return LANG_MAP.get(lang_list[0], lang_list[0])
    return "Unbekannt"


def map_genres(subjects, subject_tag):
    matched = set()
    for s in subjects:
        s_lower = s.lower()
        for keyword, canonical in GENRE_KEYWORDS.items():
            if re.search(r'\b' + re.escape(keyword) + r'\b', s_lower):
                matched.add(canonical)
    if not matched:
        tag = subject_tag.replace("_", " ").title()
        if tag in GENRE_KEYWORDS.values():
            matched.add(tag)
        else:
            matched.add("Sonstiges")
    return list(matched)


if __name__ == "__main__":
    with open(INPUT_FILE, encoding="utf-8") as f:
        raw = json.load(f)

    books   = raw["books"]
    authors = raw["authors"]

    log.info("%d Buecher, %d Autoren geladen", len(books), len(authors))

    lines = []

    used_keys = {ak for book in books for ak in book["author_keys"]}

    lines.append(section("5. AUTOREN"))
    autor_id_map = {}
    autor_id = 1
    for ak, a in authors.items():
        if ak not in used_keys:
            continue
        vorname, nachname = split_name(a["full_name"])
        vn   = escape_sql(vorname)
        nn   = escape_sql(nachname)
        land  = f"'{escape_sql(a['land'])}'"         if a["land"]         else "NULL"
        descr = f"'{escape_sql(a['beschreibung'])}'" if a["beschreibung"] else "NULL"
        lines.append(f"INSERT INTO autor (autor_id, vorname, nachname, land, beschreibung) VALUES ({autor_id}, '{vn}', '{nn}', {land}, {descr});")
        autor_id_map[ak] = autor_id
        autor_id += 1
    lines.append("\nCOMMIT;\n")
    log.info("%d Autoren", autor_id - 1)

    lines.append(section("6. GENRES"))
    genre_map = {g: i + 1 for i, g in enumerate(GENRE_WHITELIST)}
    for g, gid in genre_map.items():
        lines.append(f"INSERT INTO genre (genre_id, bezeichnung) VALUES ({gid}, '{escape_sql(g)}');")
    lines.append("\nCOMMIT;\n")
    log.info("%d Genres", len(genre_map))

    lines.append(section("7. BUECHER"))
    ba_lines, bg_lines = [], []
    buch_id = 1
    for book in books:
        isbn  = f"'{escape_sql(book['isbn'])}'" if book["isbn"] else "NULL"
        titel = escape_sql(book["title"])
        jahr  = book["year"] if book["year"] else "NULL"
        lang  = escape_sql(pick_language(book["language"]))
        lines.append(f"INSERT INTO buch (buch_id, isbn, titel, erscheinungsjahr, sprache, freigabe_status) VALUES ({buch_id}, {isbn}, '{titel}', {jahr}, '{lang}', 'FREIGEGEBEN');")

        for ak in book["author_keys"]:
            if ak in autor_id_map:
                ba_lines.append(f"INSERT INTO buch_autor (buch_id, autor_id) VALUES ({buch_id}, {autor_id_map[ak]});")

        for g in map_genres(book["subjects"], book["subject_tag"]):
            gid = genre_map.get(g)
            if gid:
                bg_lines.append(f"INSERT INTO buch_genre (buch_id, genre_id) VALUES ({buch_id}, {gid});")

        buch_id += 1

    lines.append("\nCOMMIT;\n")

    lines.append(section("8. BUCH_AUTOR"))
    lines.extend(ba_lines)
    lines.append("\nCOMMIT;\n")

    lines.append(section("9. BUCH_GENRE"))
    lines.extend(bg_lines)
    lines.append("\nCOMMIT;")

    log.info("%d Buecher, %d buch_autor, %d buch_genre", buch_id - 1, len(ba_lines), len(bg_lines))

    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    log.info("Fertig -> %s", OUTPUT_FILE)