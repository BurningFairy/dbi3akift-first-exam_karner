/*
Ein Datenbank Index speichert quasi eine unsichtbare neue Spalte ab, 
wie eine id auf diese Spalten. Damit können die Spalten
dann mit B-Baum durchsucht werden -> schnelleres Lesen, da nicht mehr
jede Row einzeln angeschaut werden muss

Index sinnvoll, bei den conversations - last receives mail zB
addresses - email
mailboxes - account_id

FK haben nie automatisch eine Index
*/

CREATE INDEX idx_name ON conversations(last_message_at); 