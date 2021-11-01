<?php
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";
}
include_once "$racine/modele/db.cat.inc.php";
include_once "$racine/modele/db.inc.php";

$countcat=array();

include "$racine/vue/acceuil.php";
include "$racine/modele/db.cat.php";
include "$racine/vue/everycat.php";

?>
