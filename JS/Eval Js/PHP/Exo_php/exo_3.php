<html>
<body>
    
 <?php

// titre et ouverture balise tableau
    echo "<h1> Table de mutliplication par 12 </h1>" ;  
    echo "<table border=1>";
    echo "<tbody>";

    echo "<tr>";
    echo "<td> </td> ";

for($a=0;$a<13;$a++)
{
    echo "<td style=background-color:chocolate>$a</td>";
}
    echo "</tr>";

    // boucle qui ouvre chaque ligne (tr)
    for($l=0;$l<13;$l++)
    {
        echo "<tr>";
        // colonne de gauche
        echo "<td style=background-color:coral>$l</td>";

        // boucle qui calcule les cellules
        for($h=0;$h<13;$h++)
        {
            $result=$l*$h;
           echo "<td> $result </td>";
        }
        
       echo "</tr>";
    }   

    echo "</tbody>";
    echo "</table>";
?> 