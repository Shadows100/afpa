var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
var saisie = window.prompt("Veuiller saisir un prénom. \n *Commencez toujours par une majuscule*");

var prenom = prompt("Saisissez un prénom avec la majuscule au début");

var pos = tableau.indexOf(prenom);

var supprItem = tableau.splice(pos,1);

var final = tableau.pop();

    if(pos==-1){
        document.write("Le prénom saisie n'est pas dans le tableau, recommencez !" );
    }
    else {
        document.write("Les prénoms qui restent sont : " + tab);
        console.log(tab)

    }