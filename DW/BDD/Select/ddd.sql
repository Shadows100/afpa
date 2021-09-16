--Rechercher le prénom des employés et le numéro de la région de leur département--

USE exemple;

SELECT employe.prenom, dept.nodept, dept.noregion
FROM dept, employe

