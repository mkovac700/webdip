<?php
    error_reporting (E_ALL ^ E_NOTICE);
    $putanja = dirname(getcwd()); 
    $putanjaMeni = dirname($_SERVER["REQUEST_URI"],-1);
    include "{$putanja}/zaglavlje.php";

    $baza = new Baza();
    $baza->spojiDB();

    $upit = "SELECT id_korisnik FROM korisnik WHERE korisnicko_ime = '{$_SESSION["korisnik"]}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);
    $id_korisnik = $row[0];

    $vrijeme = date('Y-m-d H:i:s');

    if($_SESSION["uloga"] != 4){
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Upravljanje lokacijama ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Upravljanje lokacijama ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $title = "{$naslov} - Dashboard";

    $greska = "";  

    $upit = "";

    /*if(isset($_POST['btn'])){
        //echo "gumb kliknut<br>";

        if(isset($_POST['svi'])){
            $upit = "SELECT id_korisnik, id_tip_korisnika, korisnicko_ime, blokiran FROM korisnik";
        }
        if(isset($_POST['blokirani'])){
            $upit = "SELECT id_korisnik, id_tip_korisnika, korisnicko_ime, blokiran FROM korisnik WHERE blokiran = 1";
        }
    }
    else{
        $upit = "SELECT id_korisnik, id_tip_korisnika, korisnicko_ime, blokiran FROM korisnik";
    }*/

    $upit = "SELECT id_lokacija, naziv, oznaka FROM lokacija";

    $rezultat = $baza->selectDB($upit);

    if(mysqli_num_rows($rezultat)){
        /*while($row = mysqli_fetch_array($rezultat, MYSQLI_NUM)){
            echo "{$row[2]}<br>";
        }*/
        
        //$polje= mysqli_fetch_array($rezultat, MYSQLI_NUM);
    }
    else{
        echo "<br>greska kod upita u bazu! <br>";
    }
  

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    $smarty->assign("rezultat", $rezultat);

    $smarty->display("header.tpl");
    $smarty->display("lokacije.tpl");
    $smarty->display("footer_fixed.tpl");
?>