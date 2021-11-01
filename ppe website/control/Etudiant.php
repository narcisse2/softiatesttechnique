<?php
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";//le retour en page avant
}


include "$racine/modele/db.cat.php";
include "$racine/modele/db.cat.inc.php";


$row= get_adoptcat();


include "$racine/vue/everycat.php";//passer dans vue 





$titre =" Home for Cat" ;

?>


