var n1 = prompt("saisissez un premier chiffres");
var n2 = prompt("saisissez un deuxieme chiffre")
var n3 = prompt("Entrez maintenant un signe comme + , - , * , / ")


switch (n3)
{
    case "+":
       cal = Number(n1) + Number(n2)
            alert("Le resultats est " + cal)
        break;

    case "-":
        cal2 = Number(n1) - Number(n2)
            alert("Le resultats est " + cal2)
        break;
     

    case "*":
        cal3 = Number(n1) * Number(n2)
            alert("Le resultats est " + cal3)
        break;

      
    case "/":
        cal4 = Number(n1) / Number(n2)
        if(n1 == 0 | n2 ==0){

            alert("Erreur veuillez recommencez") 
        
        } else {  
        
            alert("Le resultats est " + cal4)
        }
        break;

}
