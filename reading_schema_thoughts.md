## Table accounts: 

Bei den Ports wäre ein check sinnvoll, dass der Int nicht negativ werden kann (CHECK smtp_port >= 0)
created at zu einem DATETIME Feld machen, mit Default CURRENT TIMESTAMP, müsste nachlesen aber der würde rechnen etc. erlauben, unsicher wie sich das mit TEXT verhält.

## Table mailboxes: 
id und account_id sind eigentlich ein zusammengesetzer PK, man braucht beides um den folder einem account zuordnen zu können. Das ist mit UNIQUE auf den Spalten gesichert, aber die extra ID braucht es dann eigentlich nicht.
Ich nehme an Name kann individuell vom User gewählt werden, daher abhängig von account_id, verletzt keine NF



zu wenig zeit sich das ernsthaft genau anzuschauen

