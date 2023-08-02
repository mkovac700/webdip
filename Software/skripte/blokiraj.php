
<?php
    //$conn = mysqli_connect("localhost", "root", "", "data");

    $putanja = dirname(getcwd()); //isto sto i __FILE__
    require "$putanja/baza.class.php";

    $baza = new Baza();
    $veza = $baza->spojiDB();

    if(isset($_POST["action"])){
        // Choose a function depends on value of $_POST["action"]
        if($_POST["action"] == "update"){
            update();
        }
    }

    function update(){
        global $baza;

        $id = $_POST["id"];
        $blokiran = $_POST["blokiran"]; //dohvaca koji je status, odmah invertira tako da postavi u bazu ono suprotno

        if($blokiran == 1) $blokiran = 0;
        else $blokiran = 1;

        $upit = "UPDATE korisnik SET blokiran = '{$blokiran}' WHERE id_korisnik = '{$id}'";

        $rezultat = $baza->selectDB($upit);

        
        $retval = 0;
        //mysqli_query($veza, "DELETE FROM tb_data WHERE id = $id");
        if(mysqli_num_rows($rezultat)) $retval = 0; //echo 0
        else $retval = 1;

        $polje = array("result" => $retval, "blokiran" => $blokiran);

        echo json_encode($polje);
        
    }

    $baza->zatvoriDB();
?>