# Verbesserungsvorschläge Phase 2 – Maßnahmen

| Lfd. Nr. | Verbesserungsvorschlag (verkürzt) | Besprochene Lösung (verkürzt) |
| --- | --- | --- |
| 1 | Testdokumentation erweitern, erwartete Ergebnisse und Sonderfälle je Abfrage | Neues SQL-PDF: Ausführungsreihenfolge, Testdaten, je Abfrage Zweck, erwartetes Ergebnis, Sonderfall. Alle Abfragen, Tiefe abgestuft. |
| 2 | Geschäftsprozesse über Trigger oder Stored Procedures automatisieren | Nicht umsetzen. Im SQL-PDF ein bis zwei SP oder Trigger als Überlegung ausformulieren, Ablehnung in README begründen (Logik in der Anwendung). |
| 3 | Indizes auf Such- und Fremdschlüsselfeldern für Performance | Bei dieser Datenmenge kein Bedarf. Im Text: PK und UNIQUE automatisch indiziert, nicht-eindeutige FK als Kandidaten, Nutzen gering. GPS-Index nur mit Bounding Box sinnvoll, sonst Oracle Spatial. FK-Indizes optional. |
| 4 | Historisierung über Audit-Tabellen oder Änderungsprotokolle | In den Ausblick (README, AB) als produktive Erweiterung. Mechanismus Flashback Data Archive ohne Trigger. Betrifft statusführende Tabellen. |
| 5 | Hashbildung und Authentifizierung erläutern | App bildet gesalzenen Argon2id-Hash, DB speichert nur das Ergebnis. Kurzer Satz im BE, Verfahren plus Code-Einzeiler in README, Identity-Provider im Ausblick. |
