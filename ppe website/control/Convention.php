<?php
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";
}


include "$racine/modele/db.cat.php";
include "$racine/modele/db.cat.inc.php";

include "$racine/modele/db.description.php";
include "$racine/modele/description.inc.php";

include "$racine/modele/waitinglist.inc.php";
include "$racine/modele/waitinglist.php";

include "$racine/vue/detail.php";

















$titre =" Home for Cat" ;


?>
