- addresses, contacts, address_tags, contact tags conversations


- conversation wird nicht mehr dem richtigen account zu geordnet 

- ein trigger kann zB AFTER UPDATE überprüfen ob die gewollte korrekte acount id übernommen wurde, bzw ob die OLD id sich überhaupt von der NEW unterscheidet. 

- Trigger sind sinnvoll bei allen Operationen, die die Daten ändern und über mehr als eine Spalte gehen. (BEi Constraint auf einer Spalte kann man zB einen Check verwenden)