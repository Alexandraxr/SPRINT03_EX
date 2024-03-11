#SPRINT 03
#NIVELL01
#EX2. El departament de Recursos Humans ha identificat un error en el número de compte de l'usuari amb ID CcU-2938. Es requereix actualitzar la informació ingressada en l'IBAN. La informació que ha de mostrar-se per a aquest registre és: R323456312213576817699999 . Recorda mostrar que el canvi es va realitzar.
UPDATE credit_card
SET iban = "R323456312213576817699999"
WHERE id= "CcU-2938";

#verificar que ha sido actualizado:
SELECT iban
FROM credit_card
where id = "CcU-2938"; 

#EX3.En la taula "transaction" ingressa un nou usuari amb la següent informació:
SET FOREIGN_KEY_CHECKS = 0;

-- Rehabilitar verificación de llaves foráneas

INSERT INTO transaction (id,credit_card_id,company_id,user_id,lat,longitude,amount,declined)
VALUES ("108B1D1D-5B23-A76C-55EF-C568E49A99DD","CcU-9999","b-9999","9999","829.999","-117.999","111.11","0");

-- Este paso es importante, no olvidarlo
SET FOREIGN_KEY_CHECKS = 1;

SELECT*
FROM transaction
where id = "108B1D1D-5B23-A76C-55EF-C568E49A99DD";

SELECT*
FROM credit_card
where id = "CcU-9999";

select*
from credit_card;

#EX4.Des de recursos humans et sol·liciten eliminar la columna "pan" de la taula credit_*card. Recorda mostrar el canvi realitzat.

ALTER TABLE credit_card
DROP COLUMN pan; 

SELECT*
FROM credit_card;




