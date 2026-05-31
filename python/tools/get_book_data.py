import requests
import time
import logging
import json
from collections import OrderedDict

TARGET_BOOKS  = 300
REQUEST_DELAY = 0.5
OUTPUT_FILE   = "books_raw.json"

SUBJECTS = [
    "fiction", "fantasy", "science_fiction", "mystery", "biography",
    "history", "romance", "thriller", "horror", "adventure",
]

BOOK_FIELDS  = "key,title,author_name,author_key,first_publish_year,language,subject,isbn"
SEARCH_URL   = "https://openlibrary.org/search.json"
WIKIDATA_URL = "https://query.wikidata.org/sparql"

logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(message)s", datefmt="%H:%M:%S")
log = logging.getLogger(__name__)


def fetch_books():
    log.info("Phase 1: Buecher holen")
    books = OrderedDict()

    for subject in SUBJECTS:
        if len(books) >= TARGET_BOOKS:
            break
        log.info("  Subject '%s'...", subject)
        try:
            resp = requests.get(SEARCH_URL, params={
                "subject": subject, "fields": BOOK_FIELDS, "limit": 100
            }, timeout=15)
            resp.raise_for_status()
            docs = resp.json().get("docs", [])
        except Exception as e:
            log.warning("  Fehler: %s", e)
            time.sleep(REQUEST_DELAY * 2)
            continue

        log.info("  -> %d Eintraege", len(docs))
        for doc in docs:
            wk = doc.get("key", "")
            if not wk or wk in books:
                continue
            title  = doc.get("title", "").strip()
            anames = doc.get("author_name", [])
            akeys  = doc.get("author_key",  [])
            if not title or not anames or not akeys:
                continue
            books[wk] = {
                "title":        title,
                "year":         doc.get("first_publish_year"),
                "language":     doc.get("language", []),
                "isbn":         doc.get("isbn", [None])[0],
                "subjects":     doc.get("subject", []),
                "author_names": anames,
                "author_keys":  akeys,
                "subject_tag":  subject,
            }
        time.sleep(REQUEST_DELAY)

    result = list(books.values())[:TARGET_BOOKS]
    log.info("Phase 1 fertig: %d Buecher", len(result))
    return result


def fetch_wikidata(books):
    log.info("Phase 2: Autoren via Wikidata holen")

    all_keys = OrderedDict()
    for book in books:
        for ak, an in zip(book["author_keys"], book["author_names"]):
            if ak not in all_keys:
                all_keys[ak] = an

    log.info("  %d eindeutige Autoren", len(all_keys))

    authors = {ak: {"full_name": an, "land": None, "beschreibung": None}
               for ak, an in all_keys.items()}

    batch_size = 20
    found = 0

    for i in range(0, len(all_keys), batch_size):
        batch = list(all_keys.keys())[i:i + batch_size]
        log.info("  Batch %d-%d von %d", i + 1, min(i + batch_size, len(all_keys)), len(all_keys))

        values_block = " ".join(f'("{k}")' for k in batch)
        query = f"""
SELECT ?olKey ?authorName ?countryLabel ?description WHERE {{
  VALUES (?olKey) {{ {values_block} }}
  ?author wdt:P648 ?olKey .
  ?author rdfs:label ?authorName . FILTER(LANG(?authorName) = "en")
  OPTIONAL {{ ?author wdt:P27 ?country . ?country rdfs:label ?countryLabel . FILTER(LANG(?countryLabel) = "en") }}
  OPTIONAL {{ ?author schema:description ?description . FILTER(LANG(?description) = "en") }}
}}
"""
        try:
            resp = requests.get(
                WIKIDATA_URL,
                params={"query": query, "format": "json"},
                headers={"User-Agent": "bookshare-dummydata/1.0"},
                timeout=30,
            )
            resp.raise_for_status()
            results = resp.json().get("results", {}).get("bindings", [])
        except Exception as e:
            log.warning("  Fehler: %s", e)
            time.sleep(REQUEST_DELAY * 4)
            continue

        for row in results:
            ak    = row.get("olKey",        {}).get("value")
            name  = row.get("authorName",   {}).get("value")
            land  = row.get("countryLabel", {}).get("value")
            descr = row.get("description",  {}).get("value")
            if ak not in authors:
                continue
            if name:
                authors[ak]["full_name"] = name
                found += 1
            if land and authors[ak]["land"] is None:
                authors[ak]["land"] = land
            if descr and authors[ak]["beschreibung"] is None:
                authors[ak]["beschreibung"] = descr

        time.sleep(REQUEST_DELAY)

    log.info("Phase 2 fertig: %d von %d Autoren via Wikidata bereichert", found, len(all_keys))
    return authors


if __name__ == "__main__":
    books   = fetch_books()
    authors = fetch_wikidata(books)

    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump({"books": books, "authors": authors}, f, ensure_ascii=False, indent=2)
    log.info("Fertig -> %s", OUTPUT_FILE)
