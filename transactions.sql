/* es steht das soll eine -md sein, aber lauf angabe soll man auch was untrhalb des kommentars schreiben 
- Beim verwalten von Konversationen geht man über mehrere Tabellen hinweg/es sind viele Schritte notwendig. 
Eine View würde das ohnehin nicht lösen, da es nu eine Ansicht ist, keine UPDATE etc enthält. Wenn eine View besteht, um sich gewisse Tabellen auszugeben, könnte es sein dass diese öfter angepasst werden muss etc., und es so zu erhöhtem Verwaltungsaufwand kommt. 

- Wenn mehrere Schitte unabhängig voneinander ausgeführt werden, die aber eigentlich alle zusammenhängen, kann es zu Inkonsistenzen und Fehlern in der DB kommen. 

- Es hängt alles voneinander ab, wenn in einer Tabelle was geändert wird muss es auch in anderen geändert werden, sonst DB fehlerhaft. 

- Eine Transaktion ist eine Zusammenfassung mehrerer Schritte. Zwischen BEGIN und ROLLBACK/COMMIT wird entweder alles oder nichts ausgeführt. Das führt dazu, dass zB bei einem Stromausfall nicht halb fertige Daten bereits commited sind, sondern einfach alles gelöscht wird. 
COMMIT commited die Transaktion vollständig, sofern keine Fehler auftreten. 
ROLLBACK rollt sie zurück -> macht bisherige Änderungen Rückgängig.
*/

.bail ON -- passiert ein Rollback inmitten der DB wird die gesamte Transaktion
-- abgebrochen. Ohne dem wird beim Rollback abgebrochen, das Skript danach aber weiter gelesen 
-- -> unvollständige Datenänderung

BEGIN TRANSACTION;

/*
Zuerst checken ob bereits eine conv. mit dieser contact id besteht,
IN ... 
Hier zb CASE benutzen, wenn account_id nicht in der menge aller verschiedneen accoun ids in conv. ist, dann neu anlegen

speichern mit INSERT INTO

zuordnen muss dann zB ein INSERT in die zwischentabelle machen
Muss convesation updaten (die Daten, eventuell auch Status?)

*/

COMMIT; 