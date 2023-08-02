<?php

    $putanja = dirname(getcwd()); //isto sto i __FILE__
    require "$putanja/baza.class.php";

    $veza = new Baza();

    if(isset($_POST["kor_ime"])){
        $username = mysqli_real_escape_string($veza->spojiDB(), $_POST["kor_ime"]);
        $upit = "SELECT * FROM `korisnik` WHERE korisnicko_ime = '".$username."'";
        //$upit = "SELECT * FROM `DZ4_korisnik` WHERE korime = '{$_POST["kor_ime"]}'";
        $rezultat = $veza->selectDB($upit);
        echo mysqli_num_rows($rezultat);
    }

    $veza->zatvoriDB();
?>