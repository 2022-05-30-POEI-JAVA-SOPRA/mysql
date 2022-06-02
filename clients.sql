
-- Authentification/Connexion
>mysql -u root -- Si l'utilisateur n'a pas de mot de passe
>mysql -u root -p -- Si l'utilisateur possède un mot de passe

-- 1. Lister toutes les bases de données

SHOW DATABASES;

-- 2. Création de la base de données

CREATE DATABASE poei_30_mai_ventes;

-- 3. Utiliser/sélectionner une base de données
-- USE <nom_base_de_données>
USE poei_30_mai_ventes

-- 4. Création de la table clients