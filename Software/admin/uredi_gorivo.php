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
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Uredivanje goriva ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Uredivanje goriva ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $title = "{$naslov} - Dashboard";

    $greska = ""; 

    $upit = "SELECT id_vrste_goriva, tip, naziv FROM vrste_goriva WHERE id_vrste_goriva = '{$_GET['id']}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);

    
    $id = $row[0];
    $tip = $row[1];
    $naziv = $row[2];
    

    if(isset($_POST['btn'])){
        if(!empty($_POST['id'])){
            $upit = "UPDATE vrste_goriva SET tip = '{$_POST["tip"]}', naziv = '{$_POST["naziv"]}' WHERE id_vrste_goriva = '{$_POST["id"]}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno azuriranje!<br>";
            else $greska .= "Uspjesno azuriranje!<br>";
        }
        if(empty($_POST['id'])){
            $upit = "INSERT INTO vrste_goriva (tip, naziv) VALUES ('{$_POST["tip"]}', '{$_POST["naziv"]}')";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno dodavanje!<br>";
            else $greska .= "Uspjesno dodavanje!<br>";
        }
    }

    $baza->zatvoriDB();


    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    $smarty->assign("tip", $tip);
    $smarty->assign("naziv", $naziv);
    $smarty->assign("id",$id);

    //$smarty->assign("rezultat", $rezultat);

    $smarty->display("header.tpl");
    $smarty->display("uredi_gorivo.tpl");
    $smarty->display("footer_fixed.tpl");
?>
