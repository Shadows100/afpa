var pre = 1;

do 
{
    var prenom = prompt ( "Saissisez votre prénom N° " + pre + " Clic sur annuler pour arrêter la saisie ");
    pre = pre + 1;
    console.log(prenom + '</br>');

} while (prenom); 

console.log("Vous avez saisis " + parseInt(pre-2) + " prénom : ");