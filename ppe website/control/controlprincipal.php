<?php
function controlprincipal($action){// appel function contromprincipal avec parametre $action
    $lesaction=array();    //tab
    $lesaction["defaut"]= "acceuil.php";
    $lesaction["liste"] =  "listecat.php";
    $lesaction["detail"] ="detailcat.php";
    $lesaction["connexion"] ="connexion.php";
    $lesaction["listuser"] ="listuser.php";


    if( array_key_exists($action,$lesaction)){// verifier si les variable il exist dans le tab .
        return $lesaction[$action];
    }
    else{
        return $lesaction["defaut"];
    }
}
?>