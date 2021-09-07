-- Liste des contacts francais

USE northwind;

SELECT (Companyname) AS Societé , (contactname) AS contact , (contacttitle) AS Fonction , (phone) AS Téléphone
FROM customers
WHERE customers.country = 'france';

-- 2 - Produits vendus par le fournisseur « Exotic Liquids » :

SELECT (Productname) AS Produit, (Unitprice) AS Prix, Companyname
FROM products
NATURAL JOIN suppliers 
WHERE Companyname = 'Exotic liquids';

-- 3 - Nombre de produits vendus par les fournisseurs Français dans l’ordre décroissant :

SELECT (Companyname) AS Fournisseur, COUNT(Productid) AS Nbre_produits 
FROM suppliers
NATURAL JOIN products
WHERE suppliers.country = "France"
GROUP BY suppliers.CompanyName
ORDER BY COUNT(Productid) DESC;

-- 4 - Liste des clients Français ayant plus de 10 commandes :

SELECT customers.CompanyName AS `Client`, COUNT(orders.OrderID) AS Nbre_commandes
FROM customers 
JOIN orders
ON customers.CustomerID=orders.CustomerID
WHERE customers.country="France"
GROUP BY customers.CompanyName
HAVING COUNT(orders.OrderID) > 10;

-- 5 - Liste des clients ayant un chiffre d’affaires > 30.000 :

SELECT customers.companyname AS 'Client', SUM(Quantity*UnitPrice) AS 'CA', Country AS 'Pays' 
FROM customers
JOIN orders 
ON customers.CustomerID = orders.CustomerID
JOIN `order details`
ON orders.OrderID = `order details`.OrderID
GROUP BY customers.CompanyName, Country 
HAVING SUM(quantity*UnitPrice) > 30000
ORDER BY SUM(quantity*unitprice) DESC;

-- 6 – Liste des pays dont les clients ont passé commande de produits fournis par « Exotic
-- Liquids » :

SELECT customers.Country AS 'Pays', suppliers.CompanyName
FROM customers 
JOIN orders 
ON customers.CustomerID = orders.CustomerID
JOIN `order details`
ON orders.OrderID = `order details`.OrderID
JOIN products
ON `order details`.ProductID = products.ProductID
JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
GROUP BY customers.Country, suppliers.CompanyName
HAVING suppliers.CompanyName = 'Exotic Liquids'
ORDER BY customers.Country 

-- 7 – Montant des ventes de 1997 :

SELECT SUM(UnitPrice*Quantity) AS 'Montant Ventes 1997'
FROM `order details`
JOIN orders 
ON `order details`.OrderID = orders.OrderID
WHERE orderDate LIKE '1997%';

-- 8 – Montant des ventes de 1997 mois par mois :

SELECT MONTH(orderDate) ,SUM(UnitPrice*Quantity) AS 'Montant Ventes 1997'
FROM `order details`
JOIN orders 
ON `order details`.OrderID = orders.OrderID
WHERE orderDate LIKE '1997%'
GROUP BY MONTH(OrderDate);

-- 9 – Depuis quelle date le client « Du monde entier » n’a plus commandé ?

SELECT MAX(OrderDate) AS ' Date de derniere commande'
FROM orders 
JOIN customers
ON customers.CustomerID = orders.CustomerID
WHERE customers.CompanyName = "Du monde entier";


--10 – Quel est le délai moyen de livraison en jours ?

SELECT round(avg(datediff(ShippedDate,OrderDate))) AS 'Délai moyen de livraion en jours' 
FROM Orders

