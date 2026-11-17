/*
Eine View ist wie eine Funktion, sie gibt einen SELECT (= Tabelle) einen Namen, 
dadurch kann man sie immer wieder ausführen, ohne den langen SELECT immer wieder pasten zu müssen. 

Eine View existiert nur auf Abruf, das heißt auch wenn man sie gleich wie eine Tabelle benutzen kann, 
die Tabelle braucht Speicherplatz, die View nicht. 
Wenn man conversations durch eine View ersetzen Vorteil, oben genannt. Eine View ist auch leichter zu ändern 
als eine ganze Tabelle, das heißt sollte sich an der Ausgabe oder Zusammensetzung von conversations 
etwas ändern, geht das mit einer View einfacher. 
*/

CREATE VIEW IF NOT EXISTS conversations_incoming AS 
SELECT c.account_id, acc.name, COUNT(c.id)
FROM converssations c
LEFT JOIN account acc ON c.account_id = acc.id
GROUP BY c.account_id 
;

/*
name = vor und nachname in einer spalte? -> verletzung 1.NF, nicht atomar!
*/

CREATE VIEW IF NOT EXISTS conversations_incoming AS 
SELECT c.account_id, acc.name, COUNT(c.id), c.ast_message_at, c.updated_at
FROM ...
;