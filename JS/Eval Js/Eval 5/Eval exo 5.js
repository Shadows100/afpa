
var formCoordonees = document.getElementById("Formulaire_contact");
formCoordonees.addEventListener('submit', valider);

function valider(event) {

    
var Nom = fromCoordonees.elements["Nom"]
var Prenom = fromCoordonees.elements["Prenom"]
var Date = fromCoordonees.elements["Date"]
var Code = fromCoordonees.elements["Code-Postal"]
var Ville = document.getElementById("Ville");
var Adresse = document.getElementById("Adresse");
var Email = fromCoordonees.elements["Email"]
var Sujet = fromCoordonees.elements["Sujet"]
var Question = fromCoordonees.elements["Question"]
var regex1 = /^[a-z0-9]?([_.-]?[a-z0-9])*@[a-z0-9]+([_.-]?[a-z0-9]+)?[.]{1}[a-z]{2,6}$/;
var regex3 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+)?/;
var regex4 = /^[a-zA-Z\d\s?']*$/;
var regex5 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêàçîï]+)?/;
var erreur;

// Nom

if (Nom.value == "") {
    event.preventDefault()
    erreur = "Sasie ton nom fdp";
    document.getElementById("erreur1").innerHTML= erreur;
    }

    else {
        if(validNom.exec(Nom.value) == null)
        

        erreur = "Me prend pas pour un con et saisie et nom qui existe";
        document.getElementById("erreur1").innerHTML = erreur;
    }

// Prenom

    if (Prenom.value == "") {
        event.preventDefault()
        erreur = "Et ton prénom connard";
        document.getElementById("erreur2").innerHTML= erreur;
        }

        else if (validPrenom.exec(Prenom.value) ==  null) {

            erreur = "te fous pas de ma gueule met un prenom existant";
            document.getElementById("erreur2").innerHTML = erreur;
        }

//Validation Date de Naissance//
    if (Date.value == "") {

    erreur = "Veuillez entrer votre date de naissance pour continuer.";
    document.getElementById("erreur3").innerHTML = erreur;

    }

    // Code postal
 if (Code.value.length != 5 || isNaN(Code.value)) {
    event.preventDefault();
    erreur = "Saisissez un code postal valide à 5 chiffres";
    document.getElementById("erreur4").innerHTML= erreur;
    }

    else if (validCode.exec(Code.value) ==null) {

        erreur = "nique ta mère a laisser du blanc saisie un code postal";
        document.getElementById("erreur4").innerHTML = erreur;
    }







// Ville
 if (regex3.exec(Ville.value) == null) {
    event.preventDefault();
    erreur = "Passe moi ta ville salope";
    document.getElementById("erreur5").innerHTML= erreur;
 }

    
// Adresse
 if (regex3.exec(Adresse.value) == null) {
    event.preventDefault();
    erreur = "Passe moi ton adresse aussi sale con";
    document.getElementById("erreur6").innerHTML= erreur;
 }




// Email
    
 if (regex1.exec(Email.value) == "") {
    event.preventDefault();
    erreur = "Veuiller renseigner un email valide! ";
    document.getElementById("erreur7").innerHTML= erreur;

        }else if (validEmail.exec(Email.value) ==null) {

        erreur = "nique ta mère a laisser du blanc saisie un code postal";
        document.getElementById("erreur7").innerHTML = erreur;

    }



 //Sujet
 if (Sujet.selectedIndex == 0) {
    erreur = "Veuillez choisir un sujet pour continuer.";
    document.getElementById("erreur8").innerHTML = erreur;
  }



  //Question
  if (Question.value == "") {
    erreur = "Veuillez taper votre question dans la zone de texte.";
    document.getElementById("erreur9").innerHTML = erreur;
  } else if (validquest.exec(question.value) == null) {
    erreur = "Veuillez ne pas utiliser de caractères alphanumériques non autorisés et des accents.";
    document.getElementById("erroeu9").innerHTML = erreur;
  }




  //Acceptations des conditions
  if (formCoord.CheckTIF.checked == false) {
    send.preventDefault();
    erreur = "Veuillez accepter le traitement informatique des données pour envoyer le formulaire.";
    document.getElementById("erreur10").innerHTML = erreur;
  }




  if (erreur) {
    event.preventDefault();
  }
}