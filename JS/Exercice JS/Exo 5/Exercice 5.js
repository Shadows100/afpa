var response1 = window.prompt("Sasissez votre nom");
var response2 = window.prompt("Saississez votre prénom");

if (window.confirm("Etes vous un homme ?") == true)
{
    window.alert(" Bonjour Monsieur " + response1 + " " + response2 + "\n\n Bienvenue sur notre site web !");
}
else {
    
    window.alert(" Bonjour Madame " + response1 + " " + response2 + "\n\n Bienvenue sur notre site web !"); 
    }

