
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
