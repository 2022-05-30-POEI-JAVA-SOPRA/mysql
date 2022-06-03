
-- Authentification/Connexion
>mysql -u root -- Si l'utilisateur n'a pas de mot de passe
>mysql -u root -p -- Si l'utilisateur possède un mot de passe

-- 1. Lister toutes les bases de données

SHOW DATABASES;

-- 2. Création de la base de données

CREATE DATABASE poei_30_mai_ventes;

-- 3. Utiliser/sélectionner une base de données
-- USE <nom_base_de_données>
USE poei_30_mai_ventes;

-- 4.Lister les tables de la base de donnés

SHOW TABLES;

-- 4. Création de la table clients
-- INTEGER : c'est le type entier
-- NOT NULL : Cette colonne doit toujours contenir une information
-- AUTO_INCREMENT : Dire à MYSQL de fournir de valeurs en incrementant
--                  automatiquement les clés

-- PRIMARY KEY : Marquer la colonne comme étant la clé primaire
-- UNIQUE : Appliquer une contrainte d'unicité
CREATE TABLE clients(
 id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 nom VARCHAR(50) NOT NULL,
 prenom VARCHAR(50) NOT NULL,
 email VARCHAR(70),
 telephone VARCHAR(20) NOT NULL
);


-- Voir la desciption de la tabe 
-- DESC <nom_table> ou DESCRIBE <nom_table>
DESC clients;

-- Modifier une table en ajoutant une nouvelle colonne
ALTER TABLE clients ADD COLUMN postnom VARCHAR(50);

-- Modifier une table en ajoutant une nouvelle colonne après une autre
-- On rajoute la colonne "postnom" après la colonne "prenom"
ALTER TABLE clients ADD COLUMN postnom VARCHAR(50) AFTER prenom;


-- LMD

-- Lister(SELECT) les informations de toutes(*) les colonnes
--       de la table(FROM) client

SELECT * FROM clients;

-- Insetion des données
INSERT INTO clients(nom,prenom,email,telephone) 
values("DUMORTIER","Steven","stevendumortier59@gmail.com","07474747474"),
("RAULIN","Ludovic","lraulin843@gmail.com","0621461941"),
("Perez","Marion","marion.oceane.perez@gmail.com","0786842676")
;

-- Mise à jour des données
UPDATE clients SET telephone="0673460986" WHERE id=2;

UPDATE clients SET postnom="Tarzan",age=17 WHERE id=1;

-- Supprime en enregistrement

DELETE FROM clients WHERE id=7;

-- Configurer MYSQL en mode strict
-- Valeur pour le mode strict : STRICT_TRANS_TABLES;

--> Verifier le mode de transation
SHOW VARIABLES LIKE 'sql_mode'

--> Définir le mode stric pour les transactions
set sql_mode='STRICT_TRANS_TABLES';


-- Filtres

SELECT * FROM clients WHERE age>20;

SELECT * FROM clients WHERE age<30;
