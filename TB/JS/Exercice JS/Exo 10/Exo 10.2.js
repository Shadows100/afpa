var maxi = 0;
var moy = 0;
var taille = 0;
var sai;



// Lire un entier au clavier 

function getinteger () {

         taille = parseInt(prompt("Entrez un nombre pour le nombre d'entrée pour le tableau"));
            if (Number.isInteger( taille)) {
                return taille;

        }
}
taille = getinteger ()

// créer et initialiser un tableau 


function initTab () {

    tableau = new array (taille);
    return tableau;

}


// permet la saisie des différents élément du tableau

function SaisieTab () {

     for (var i = 0 ; i < taille ; i++ ); {
           tableau[i]  = parseInt(prompt("Entrez un post : "));

        }
}

function AfficheTab () {

        for (var i = 0 ; i < taille ; i++ );{
        num = i+ 1
        document.write(" l'élement N° " + num + " correspond à : " + tableau[i] + "<br>")
    }
}

function RechercheTab () {

j




}

function infoTab () {




}
