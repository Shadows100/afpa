
var formCoordonees = document.getElementById("formCoordonees");
formCoordonees.addEventListener('submit', valider);

function valider(event) {

    
var Nom = formCoordonees.elements["Nom"];
var Prenom = formCoordonees.elements["Prenom"];
var Date = formCoordonees.elements["Date"];
var Code = formCoordonees.elements["Code-Postal"];
var Email = formCoordonees.elements["Email"];
var Sujet = formCoordonees.elements["Sujet"];
var Question = formCoordonees.elements["Question"];
var validEmail = /^[a-z0-9]?([_.-]?[a-z0-9])*@[a-z0-9]+([_.-]?[a-z0-9]+)?[.]{1}[a-z]{2,6}$/;
var validPrenom = /^[A-Za-z]([-]?[A-Za-z])+$/;
var validCode = /^[\d]{5}$/;
var validquest = /^[a-zA-Z\d\s?']*$/;
var erreur;



// erreur1 = Nom
// erreur2 = Prenom
// erreur3 = Date 
// erreur4 = Code
// erreur5 = Email
// erreur6 = Sujet
// erreur7 = Question
// erreur8 = accepter le reglement




// Nom

if (Nom.value == "") {
    event.preventDefault()
    erreur = "<p style='color: red;'> Saisie un nom  </p>";
    document.getElementById("erreur1").innerHTML= erreur;
    }

    else if (validPrenom.exec(Prenom.value) ==  null) {
        event.preventDefault()
        erreur = "<p style='color: red;'>met un nom existant </p>";
        document.getElementById("erreur1").innerHTML = erreur;
    }

    else { 
        erreur = "<p style='color: green;'> C'est valider par la street </p>";
        document.getElementById("erreur1").innerHTML = erreur;
    }
    
        

// Prenom

    if (Prenom.value == "") {
        event.preventDefault()
        erreur = "<p style='color: red;'>met ton prénom  </p>";
        document.getElementById("erreur2").innerHTML= erreur;
        }

        else if (validPrenom.exec(Prenom.value) ==  null) {
            event.preventDefault()
            erreur = "<p style='color: red;'>met un prenom existant </p>";
            document.getElementById("erreur2").innerHTML = erreur;
        }

        else { 
            erreur = "<p style='color: green;'> C'est valider par la street </p>";
            document.getElementById("erreur2").innerHTML = erreur;
        }

        

//Date de Naissance
    if (Date.value == "") {
    
    erreur = "<br><p style='color: red;'>Saisissez votre date de naissance.</p></br>";
    document.getElementById("erreur3").innerHTML = erreur;

    }

    else { 
        erreur = "<p style='color: green;'> C'est valider par la street </p>";
        document.getElementById("erreur3").innerHTML = erreur;
    }

    // Code postal
 if (Code.value.length != 5 || isNaN(Code.value)) {
    event.preventDefault();
    erreur = "<p style='color: red;'>Saisissez un code postal valide à 5 chiffres</p>";
    document.getElementById("erreur4").innerHTML= erreur;
    }

    else if (validCode.exec(Code.value) ==null) {
        event.preventDefault()
        erreur = " saisie un code postal";
        document.getElementById("erreur4").innerHTML = erreur;
    }
    




// Email
    
if (Email.value == "") {
    event.preventDefault()
    erreur = "<p style='color: red;'>Saisissez  une adresse email.</p>";
    document.getElementById("erreur5").innerHTML = erreur;

  } else if (validEmail.exec(email.value) == null) {
    event.preventDefault()
    erreur = "<p style='color: red;'>Saisissez  une adresse email valide pour continuer.</p>";
    document.getElementById("erreur5").innerHTML = erreur;

  }

    else { 
        erreur = "<p style='color: green;'> C'est valider par la street </p>";
        document.getElementById("erreur5").innerHTML = erreur;

  }

 //Sujet
 if (Sujet.selectedIndex == 0) {
    erreur = "<p style='color: red;'>choisissez un sujet pour continuer.</p>";
    document.getElementById("erreur6").innerHTML = erreur;
  }



  //Question
  if (Question.value == "") {
    erreur = "<p style='color: red;'>Saisissez votre question dans la zone de texte.</p>";
    document.getElementById("erreur7").innerHTML = erreur;

  } else if (validquest.exec(question.value) == null) {
    erreur = "<p style='color: red;'>Ne pas utiliser de caractères alphanumériques non autorisés et des accents.</p>";
    document.getElementById("erroeu7").innerHTML = erreur;
  }




  //Acceptations des conditions
  if (formCoordonees.CheckTIF.checked == false) {
    event.preventDefault();
    erreur = "<p style='color: red;'>cocher cette case</p>";
    document.getElementById("erreur8").innerHTML = erreur ;
  }


if (erreur) {
    event.preventDefault();
  }
}