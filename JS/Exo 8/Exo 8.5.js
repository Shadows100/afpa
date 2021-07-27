var mot = prompt("Saisir un mot") ;
var motvoy = 0;

for (var i = 0; i<= mot.length; i++){
    if ( mot [i] == "a" | mot [i] == "e" | mot [i] == "i" | mot [i] == "o" | mot [i] == "u" | mot [i] == "y" ){
        motvoy++
    }
}

console.log (" Le mot saisie contient " + motvoy + " voyelles ");
document.write (" Le mot saisie contient " + motvoy + " voyelles ");

