<?php
    error_reporting (E_ALL ^ E_NOTICE);
    $putanja = dirname(getcwd()); 
    $putanjaMeni = dirname($_SERVER["REQUEST_URI"],-1); //2
    include "{$putanja}/zaglavlje.php";

    $baza = new Baza();

    $baza->spojiDB();

    $upit = "SELECT id_korisnik FROM korisnik WHERE korisnicko_ime = '{$_SESSION["korisnik"]}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);
    $id_korisnik = $row[0];

    $vrijeme = date('Y-m-d H:i:s');

    if($_SESSION["uloga"] != 4){
        if(empty($id_korisnik)){
            $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Dashboard ({$_SESSION["korisnik"]})')";
        }
        else{
            $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ($id_korisnik,3,'{$vrijeme}','Pokusaj pristupa stranici Dashboard ({$_SESSION["korisnik"]})')";
        }
        

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Dashboard ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $baza->zatvoriDB();

    $title = "{$naslov} - Dashboard";

    $greska = "";  

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    $smarty->display("header.tpl");
    $smarty->display("dashboard.tpl");
    $smarty->display("footer_fixed.tpl");
?>