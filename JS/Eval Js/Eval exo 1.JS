

var age = 0;

var J = 0;

var M = 0;

var V = 0;


do {
    age = parseInt(prompt("Saisissez des âges. \nComptage est arrêté dès la saisie d'un centenairee."));
    console.log(age);


    if (age < 20) {
    J++;
    }

    if (age >= 20 | age <= 40 ) {
        M++;
    }

    if (age > 40) {
        V++;
    }

} while (age < 100);





console.log("Il y a" + J + " jeune de moins de 20 ans.");
document.write('<br>' + " Il y a " + J + " jeune de moins de 20 ans." + '<br>');

console.log("Il y a" + M + " adulte entre 20 et 40 ans.");
document.write('<br>' + " Il y a " + M + " adulte entre 20 et 40 ans." + '<br>');

console.log("Il y a" + V + " personne de plus de 40 ans.");
document.write("Il y a " + V + " personne de plus de 40 ans.");