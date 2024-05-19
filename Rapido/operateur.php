<?php 
include_once("connexion.php");

$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$password = $_POST['password'];
$tel = $_POST['telephone'];
$sexe = $_POST['sexe'];
$passwordSecure = password_hash($password, PASSWORD_DEFAULT);

if(isset($tel) AND isset($sexe)){
   try{
    $req = $connexion->prepare("INSERT INTO chauffeurs(nom, prenoms, telephone, sexe, password, disponible) VALUES (?,?,?,?,?,'1')");
    $req->execute([$nom, $prenom, $tel, $sexe, $passwordSecure]);
   }catch(PDOException $e){
    echo $e->getMessage();
   }
}else{
    try{
        $req2 = $connexion->prepare("INSERT INTO operateurs(nom, prenom, password) VALUES(?,?,?)");
        $req2->execute([$nom, $prenom, $passwordSecure]);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
}

/* header("location:pageInscription.php"); */