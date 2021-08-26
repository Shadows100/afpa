-- Quelles sont les commandes du fournisseur 09120?

USE papyrus;
SELECT fournis.numfou, fournis.nomfou, numcom, ligcom.numlig, produit.libart 
FROM fournis
NATURAL JOIN ligcom
NATURAL JOIN produit 
WHERE fournis.numfou = 9120;


-- Afficher le code des fournisseurs pour lesquels des commandes ont été passées.

USE papyrus;

SELECT fournis.numfou, vente.delliv
FROM vente
NATURAL JOIN fournis
WHERE delliv > 0;

-- Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés.


SELECT count(vente.delliv) AS nombre_fournis,count(DISTINCT numfou) AS nombre_fournisseur
FROM vente
WHERE delliv > 0;

-- Editer les produits ayant un stock inférieur ou égal au stock d'alerte et dont la quantité annuelle est inférieur est inférieure à1000 (informations à fournir :
--  n° produit, libelléproduit, stock, stockactuel d'alerte, quantitéannuelle)

SELECT produit.libart, produit.codart, produit.stkale, produit.stkphy, produit.qteann
FROM produit 
WHERE stkale <= 50 AND qteann < 1000;

-- Quels sont les fournisseurs situés dans les départements 75 78 92 77 ? L’affichage (département, nom fournisseur) sera effectué par département décroissant, 
-- puis par ordre alphabétique

SELECT fournis.posfou, fournis.nomfou
FROM fournis 
WHERE posfou LIKE '75%' OR posfou LIKE  '77%' OR posfou LIKE  '78%' OR posfou LIKE '92%'
ORDER BY posfou DESC;

-- Quelles sont les commandes passées au mois de mars et avril?

SELECT vente.delliv, ligcom.derliv 
FROM vente 
NATURAL join ligcom
WHERE derliv LIKE '2007-05-15' OR derliv LIKE  '2007-03-15';

-- Quelles sont les commandes du jourqui ont des observations particulières ?(Affichage numéro de commande, date de commande)

SELECT entcom.numcom, entcom.obscom , entcom.datcom
FROM entcom
WHERE obscom LIKE 'Commande urgente' OR obscom LIKE 'Commande cadencée';

-- Listerle total de chaque commande par total décroissant (Affichage numéro de commande et total)

SELECT ligcom.numcom, (qtecde*priuni) AS total 
FROM ligcom
ORDER BY total DESC;

-- Lister les commandesdont le total est supérieur à 10000€; on exclura dans le calcul du total les articles commandés en quantité supérieure ou égale à 1000.
-- (Affichage numéro de commande et total)

SELECT ligcom.numcom, (qtecde*priuni) AS total 
FROM ligcom
WHERE (qtecde*priuni) >1000 AND ligcom.qtecde <1000
ORDER BY total DESC;

-- Lister les commandes par nom fournisseur (Afficher le nom du fournisseur, le numéro de commande et la date)

SELECT fournis.nomfou, numcom, entcom.datcom
FROM fournis
NATURAL JOIN entcom
GROUP BY nomfou, numcom;

-- Sortir les produits des commandes ayant le mot "urgent' en observation?(Afficher le numéro de commande, 
-- le nom du fournisseur, le libellé du produit et le sous total= quantité commandée * Prix unitaire)

SELECT  (qtecde*priuni) AS sous_total, ligcom.numcom, fournis.nomfou, produit.libart, entcom.obscom
FROM entcom
NATURAL JOIN fournis
NATURAL JOIN ligcom
NATURAL JOIN produit
WHERE entcom.obscom = 'Commande urgente';

-- Coder de 2manières différentes la requête suivante:Lister lenom desfournisseurs susceptibles de livrer au moins un article

SELECT nomfou, numcom, (qtecde-qteliv) AS a_livre FROM fournis
NATURAL JOIN ligcom
WHERE qteliv < qtecde;


SELECT nomfou, numcom, (qtecde-qteliv) AS a_livre FROM fournis
NATURAL JOIN ligcom
WHERE qtecde - qteliv >= 1 ;


-- Coder de 2 manières différentes la requête suivanteLister les commandes (Numéro et date) dont le fournisseur est celui de la commande 70210

SELECT ligcom.numcom, entcom.datcom
FROM entcom
NATURAL JOIN ligcom
where ligcom.numcom = '70210';

SELECT entcom.numcom, entcom.datcom
FROM entcom
WHERE numcom = '70210';

-- Dans les articles susceptibles d’être vendus, lister les articles moins chers (basés sur Prix1) que le moins cher des rubans (article dont le premier caractère commence par R).
--  On affichera le libellé de l’article et prix1





