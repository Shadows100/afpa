
var PU = parseInt(prompt("Prix du produit : "));
var QTECOM = parseInt(prompt("nombre de produit achetés : "));
document.write("prix du produit : "+ PU +'</br>');
document.write("nombre de produit achetés : "+ QTECOM + '</br>');
var TOT = PU*QTECOM;
var REM = 0;




function remise(TOT) {
    var TOT = PU * QTECOM;
    var PAP = 0;
    var REM = 0;

    if (TOT >= 100 && TOT <= 200){
        REM = TOT * 0.05;
        PAP = TOT - REM;
        document.write("Remise de 5% (- " + REM + "€)" + '<br>' + "Prix avec remise =" + PAP + " €" + '<br>');
        return PAP;
    }
    else if (TOT > 200) {
        REM = TOT * 0.1;
        PAP = TOT - REM;
        document.write("Remise de 10% (- " + REM + "€)"+ '<br>' + "Prix avec remise = " + PAP + " €" + '<br>');
        return PAP; 
       
    }
    else {
        REM = 0;
        PAP = TOT - REM;
        document.write("Remise de 0" + '<br>' + "Prix avec remise = " + PAP + " €" + '<br>');
        return PAP;
    }

}



                    
function prixFinal() {
    var PORT = 0;
    var PF = 0;
    var REM = remise(PORT);
    
    if (REM > 500) {
        document.write('<br>' + "Aucun frais de port." + ':' + "Prix total à payer =" + REM + " €");
    }
    else {
        PORT = REM * 0.02;
        PF = REM + PORT;


        if (PORT <= 6) {
            PORT = 6;
            PF = REM + PORT;
            document.write('<br>' + "Frais de port = 6 €" + '<br>' + "Prix total à payer = " + PF + " €")
            return PF;
        }
        document.write('<br>' + "Frais de port de 2% (+ " + PORT.toFixed(2) + "€)" + '<br>' + "Prix total à payer: " + PF.toFixed(2) + " €");
        return PF;
    }
}


prixFinal();