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
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Uredivanje lokacija ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Uredivanje lokacija ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $title = "{$naslov} - Dashboard";

    $greska = ""; 

    $upit = "SELECT id_lokacija, naziv, oznaka FROM lokacija WHERE id_lokacija = '{$_GET['id']}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);

    
    $id = $row[0];
    $naziv = $row[1];
    $oznaka = $row[2];
    

    if(isset($_POST['btn'])){
        if(!empty($_POST['id'])){
            $upit = "UPDATE lokacija SET naziv = '{$_POST["naziv"]}', oznaka = '{$_POST["oznaka"]}' WHERE id_lokacija = '{$_POST["id"]}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno azuriranje!<br>";
            else $greska .= "Uspjesno azuriranje!<br>";
        }
        if(empty($_POST['id'])){
            $upit = "INSERT INTO lokacija (naziv, oznaka) VALUES ('{$_POST["naziv"]}', '{$_POST["oznaka"]}')";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno dodavanje!<br>";
            else $greska .= "Uspjesno dodavanje!<br>";
        }
    }

    $baza->zatvoriDB();


    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    $smarty->assign("oznaka", $oznaka);
    $smarty->assign("naziv", $naziv);
    $smarty->assign("id",$id);

    //$smarty->assign("rezultat", $rezultat);

    $smarty->display("header.tpl");
    $smarty->display("uredi_lokacije.tpl");
    $smarty->display("footer_fixed.tpl");
?>
