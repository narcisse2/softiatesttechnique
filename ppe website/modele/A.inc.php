<?php 
include_once "db.inc.php";



function get_description($num) {

    $cnx = connexionPDO();
    $req = $cnx->prepare("select text from cats,description where cats.numcat=description.numcat and cats.numcat = :numcat " );//Prépare une requête SELECT à l'exécution et retourne un objet(cat)
    
    $req->bindValue(':numcat', $num, PDO::PARAM_INT);

    $req->execute();//Exécute une requête juste appele 

    
    $ligne = $req->fetch(PDO::FETCH_ASSOC);// Récupère la ligne des donnée dans le  req sql (cat)
    while ($ligne) {
        $row[] = $ligne;
        $ligne = $req->fetch(PDO::FETCH_ASSOC);
    }

return $row;
}




  
?>