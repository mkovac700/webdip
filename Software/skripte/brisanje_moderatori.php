<?php
    error_reporting (E_ALL ^ E_NOTICE);
    $putanja = dirname(getcwd()); 
    $putanjaMeni = dirname($_SERVER["REQUEST_URI"],-1);
    include "../zaglavlje.php";

    if($_SESSION["uloga"] != 4) header("Location: /obrasci/prijava.php");

    if(isset($_POST["action"])){
        // Choose a function depends on value of $_POST["action"]
        if($_POST["action"] == "delete"){
          delete();
        }
    }
    
    function delete(){
        $baza = new Baza();
        $baza->spojiDB();
    
        $id = $_POST["id"];

        $upit = "DELETE FROM moderator WHERE id_moderator = '{$id}'";

        $rezultat = $baza->selectDB($upit);
    
        if(mysqli_num_rows($rezultat)) echo 0;
        else echo 1;

        $baza->zatvoriDB();
    }
?>