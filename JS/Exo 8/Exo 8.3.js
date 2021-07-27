var num 
var cal = 0;
var moy = 0;
var som = 0;

while (num != 0)
{
    num = parseInt(prompt("Entrez des nombres entiers :\n on arrête la saisie avec la valeur 0"));
    som = som + num;
    cal++ 
    moy = som / (cal - 1);
}

console.log("La moyenne des entier choisis est : " + moy +'</br>')
document.write("La moyenne des entier choisis est : " + moy +'</br>');
console.log("La somme des entier choisis est : " + som)
document.write("La somme des entier choisis est : " + som);



