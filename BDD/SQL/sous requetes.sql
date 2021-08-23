-- Quelles sont les commandes du fournisseur 09120?

USE papyrus;
SELECT fournis.numfou, fournis.nomfou, numcom, ligcom.numlig, produit.libart 
FROM fournis
NATURAL JOIN ligcom
NATURAL JOIN produit 
WHERE fournis.numfou = 9120;


-- Afficher le code des fournisseurs pour lesquels des commandes ont été passées.

USE papyrus;

SELECT fournis.numfou, entcom.numcom , ligcom.qtecde 
FROM fournis 
NATURAL JOIN entcom
NATURAL JOIN ligcom;

-- Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés.


