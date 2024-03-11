#SPRINT03
#NIVELL3
#Ex1.La setmana vinent tindràs una nova reunió amb els gerents de màrqueting. Un company del teu equip va realitzar modificacions en la base de dades, però no recorda com les va realitzar. Et demana que l'ajudis a deixar els comandos executats per a obtenir les següents modificacions (s'espera que realitzin 6 canvis):

ALTER TABLE credit_card
ADD COLUMN fecha_actual DATE;

SELECT*FROM credit_card;

ALTER TABLE user RENAME COLUMN email TO personal_email; #Tengo la versio Mysql 5.7.44-log, y no funciona la indicacion: RENAME. 

ALTER TABLE company DROP website;

ALTER TABLE user
MODIFY COLUMN id INT ;  
#He hecho la modificacion a INT pero por defecto me aparece siempre aparece INT(11).  
#Si el tamaño entre paréntesis no se especifica al definir una columna INT, por defecto se asume como INT(11)


ALTER TABLE credit_card
MODIFY COLUMN expiring_date VARCHAR(10);


ALTER TABLE credit_card
MODIFY COLUMN cvv INT;

SET FOREIGN_KEY_CHECKS = 0 ;

ALTER TABLE credit_card
MODIFY COLUMN id VARCHAR(20);  

SET FOREIGN_KEY_CHECKS = 1 ;


ALTER TABLE credit_card
MODIFY COLUMN iban VARCHAR(50);

#EX2.L'empresa també et sol·licita crear una vista anomenada "InformeTecnico" que contingui la següent informació:

CREATE VIEW InformeTecnico AS
select transaction.id as transaction_id, user.name, user.surname,credit_card.iban as iban_cc,company.company_name
FROM transaction
INNER JOIN company 
ON transaction.company_id= company.id
INNER JOIN credit_card
ON credit_card.id = transaction.credit_card_id
INNER JOIN user
ON user.id = transaction.user_id
order by transaction.id desc;

select*
FROM InformeTecnico;
