
var formCoordonees = document.getElementById("formulaire ");
formCoordonees.addEventListener('submit', valider);
function valider(event) {

    
var Nom = fromCoordonees.elements["Nom"]
var Prenom = fromCoordonees.elements["Prénom"]
var Date = fromCoordonees.elements["date_de_naissance"]
var Code = fromCoordonees.elements["Code-Postal"]
var Ville = document.getElementById("Ville");
var Adresse = document.getElementById("Adresse");
var Email = fromCoordonees.elements["Email"]
var Sujet = fromCoordonees.elements["Sujet"]
var Question = fromCoordonees.elements["question"]
var erreur;

var regex1 = /^[a-z0-9]?([_.-]?[a-z0-9])*@[a-z0-9]+([_.-]?[a-z0-9]+)?[.]{1}[a-z]{2,6}$/;
var regex3 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+)?/;
var regex4 = /^[a-zA-Z\d\s?']*$/;
var regex5 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+)?/;

}

// Nom

if (Nom.value == "") {
    event.preventDefault()
    erreur = "Sasie ton nom fdp";
    document.getElementById("erreur1").innerHTML= erreur;
    }

    else {
        if(validNom.exec(Nom.value) == null)
        

        erreur = "Me prend pas pour un con et saisie et nom qui existe";
        document.getElementById("erreur1").innerHTML = erreur
    }

// Prenom

    if (Prénom.value == "") {
        event.preventDefault()
        erreur = "Et ton prénom connard";
        document.getElementById("erreur2").innerHTML= erreur;
        }

        else if (validPrenom.exec(Prenom.value) ==  null) {

            erreur = "te fous pas de ma gueule met un prenom existant";
            document.getElementById("erreur2").innerHTML = erreur
        }



    
 if (Code.value.length != 5 || isNaN(Code.value)) {
    event.preventDefault();
    erreur = "Saisissez un code postal valide à 5 chiffres";
    document.getElementById("erreur3").innerHTML= erreur;
    }

    else if (validCode.exec(Code.value) ==null) {

        erreur = "nique ta mère a laisser du blanc saisie un code postal";
        document.getElementById("erreur3").innerHTML = erreur;
    }








 if (regex3.exec(Ville.value) == null) {
    event.preventDefault();
    erreur = "Passe moi ta ville salope";
    document.getElementById("erreur4").innerHTML= erreur;






    }
    
 if (regex1.exec(email.value) == null) {
    event.preventDefault();
    erreur = "Veuiller renseigner un email valide! ";
    document.getElementById("erreur5").innerHTML= erreur
        }






























if (error) {
    send.preventDefault();
    }
