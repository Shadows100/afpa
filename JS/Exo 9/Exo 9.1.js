  
function cube (number1)
{
    var resultat = Math.pow(number1,3);
    return resultat;
}

function produit(number1,number2)
{
    var resultat = number1 * number2;
    return resultat;   
}

var x = prompt("Entre un nombre");
var y = prompt("Entre un multiplicateur");

var r1 = cube(x);
var r2 = produit(x,y);

function afficheimg(src){
    document.write(src);
}
afficheimg('<img src="papillon.jpg">' + "</br>");

document.write(" Le cube de "+ x + " est égal à " +r1+ '<br>');
document.write(" le produit de "+x+" x "+ y + " est égal à " +r2);