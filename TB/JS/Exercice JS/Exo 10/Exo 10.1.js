var n =prompt("combien de ligne pour votre tableau ? : ");
console.log("le tableau et composé de "+n+" élément.");

var tableau = [];
for (var i=0; i<n;i++){
    var cont=prompt("choisisser les élément du tableau : ");
    console.log("les élément du tableaux seront : "+cont);
    tableau.push(cont);
}
console.log(tableau);
document.write(tableau);