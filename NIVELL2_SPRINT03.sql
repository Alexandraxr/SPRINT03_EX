#SPRINT 03
#NIVELL 02
#EX1.Elimina de la taula transaction el registre amb ID 02C6201E-D90A-1859-B4EE-88D2986D3B02 de la base de dades

DELETE FROM transaction
where id =  "02C6201E-D90A-1859-B4EE-88D2986D3B02" ; 

SELECT*
FROM transaction
WHERE id =  "02C6201E-D90A-1859-B4EE-88D2986D3B02";

#EX2.La secció de màrqueting desitja tenir accés a informació específica per a realitzar anàlisi i estratègies efectives. S'ha sol·licitat crear una vista que proporcioni detalls clau sobre les companyies i les seves transaccions. Serà necessària que creïs una vista anomenada VistaMarketing que contingui la següent informació: Nom de la companyia. Telèfon de contacte. País de residència. Mitjana de compra realitzat per cada companyia. Presenta la vista creada, ordenant les dades de major a menor mitjana de compra

CREATE OR REPLACE VIEW VistaMarketing AS
SELECT company_name,phone,country, avg(amount)
FROM company
INNER JOIN transaction
ON transaction.company_id= company.id
GROUP BY company_name, phone, country
ORDER BY avg(amount) DESC; 

#En este caso hay una transaction que no va aparecer , por que es un join no un cross join


SELECT*FROM VistaMarketing;

#EX3.Filtra la vista VistaMarketing per a mostrar només les companyies que tenen el seu país de residència en "Germany"


CREATE VIEW VistaMarketing2 AS
SELECT company_name,phone,country, avg(amount)
FROM company
INNER JOIN transaction
ON transaction.company_id= company.id
GROUP BY company_name, phone, country
HAVING country = "Germany"
ORDER BY avg(amount) DESC; 

SELECT*FROM VistaMarketing2;

 
