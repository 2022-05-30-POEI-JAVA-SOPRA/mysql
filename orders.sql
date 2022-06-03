-- Afficher dans l'ordre croissant des prix
SELECT id,name,manufacturer,price FROM telephones ORDER BY price ASC;

-- Afficher dans l'ordre decroissant des prix
SELECT id,name,manufacturer,price FROM telephones ORDER BY price DESC;

-- Several order criterias
SELECT id,name,manufacturer,price FROM telephones ORDER BY price DESC,manufacturer DESC;