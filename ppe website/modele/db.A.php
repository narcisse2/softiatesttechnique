<?php

include_once "db.inc.php";

class description{
    private $idAttestation;
    private $etudiant;
    private $convention;
    private $message;


    public function __construct($row){
        $this->idAttestation=$row["idAttestation"];
        $this->etudiant=$row["etudiant"];
        $this->convention=$row["convention"];
        $this->message=$row["message"];

    }

    public function get_idAttestation(){
        return $this->idAttestation;
    }
    public function get_etudiant(){
        return $this->etudiant;
    }
    public function get_convention(){
        return $this->convention;
    }
    public function get_message(){
        return $this->message;
    }
    class description2{
        private $idAttestation;
        private $etudiant;
        private $convention;
        private $message;
    
    
        public function __construct($row){
            $this->idAttestation=$row["0"];
            $this->etudiant=$row["1"];
            $this->convention=$row["2"];
            $this->message=$row["3"];
    
        }
    
        public function get_idAttestation(){
            return $this->idAttestation;
        }
        public function get_etudiant(){
            return $this->etudiant;
        }
        public function get_convention(){
            return $this->convention;
        }
        public function get_message(){
            return $this->message;
        }
}
?>