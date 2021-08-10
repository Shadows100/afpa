
var formCoordonees = document.getElementById("formulaire ");
formCoordonees.addEventListener('submit', valider);
function valider(event) {

    
var Nom = fromCoordonees.elements["Nom"]
var prenom = fromCoordonees.elements["Prénom"]
var date = fromCoordonees.elements["date_de_naissance"]
var code = fromCoordonees.elements["Code-Postal"]
var ville = document.getElementById("Ville");
var Email = fromCoordonees.elements["Email"]
var sujet = fromCoordonees.elements["Sujet"]
var question = fromCoordonees.elements["question"]
var erreur;

var regex1 = /^[a-z0-9]?([_.-]?[a-z0-9])*@[a-z0-9]+([_.-]?[a-z0-9]+)?[.]{1}[a-z]{2,6}$/;
var regex3 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+)?/;
var regex4 = /^[a-zA-Z\d\s?']*$/;
var regex5 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+)?/;

}


if (Nom.value == "") {
    event.preventDefault()
    erreur = "Sasie to nom fdp";
    document.getElementById("erreur3").innerHTML= erreur;
    }

    if (Prénom.value == "") {
        event.preventDefault()
        erreur = "Et ton prénom connard";
        document.getElementById("erreur4").innerHTML= erreur;
        }

    
 if (code.value.length != 5 || isNaN(code)) {
    event.preventDefault();
    erreur = "Saisissez un code postal valide à 5 chiffres";
    document.getElementById("erreur2").innerHTML= erreur;
    }

 if (regex3.exec(ville.value) == null) {
    event.preventDefault();
    erreur = "Veuiller renseigner un nom de ville correct";
    document.getElementById("erreur5").innerHTML= erreur;
    }
    
 if (regex1.exec(email.value) == null) {
    event.preventDefault();
    erreur = "Veuiller renseigner un email valide!";
    document.getElementById("erreur1").innerHTML= erreur
        }

