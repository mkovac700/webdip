<?php
    error_reporting (E_ALL ^ E_NOTICE);
    $putanja = dirname(getcwd()); 
    $putanjaMeni = dirname($_SERVER["REQUEST_URI"],-1);
    include "{$putanja}/zaglavlje.php";

    $baza = new Baza();
    $veza = $baza->spojiDB();

    $upit = "SELECT id_korisnik FROM korisnik WHERE korisnicko_ime = '{$_SESSION["korisnik"]}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);
    $id_korisnik = $row[0];

    $vrijeme = date('Y-m-d H:i:s');

    if($_SESSION["uloga"] != 4){
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Uredivanje moderatora ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Uredivanje moderatora ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $title = "{$naslov} - Dashboard";

    $greska = ""; 

    $upit = "SELECT id_moderator, id_korisnik, id_benzinska_postaja FROM moderator WHERE id_moderator = '{$_GET['id']}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);

    
    $id = $row[0];
    $id_korisnik = $row[1];
    $id_benzinska_postaja = $row[2];

    $upit = "SELECT id_korisnik, korisnicko_ime FROM korisnik";

    $korisnici = $baza->selectDB($upit);

    $upit = "SELECT id_benzinska_postaja, oznaka FROM benzinska_postaja";

    $benzinske_postaje = $baza->selectDB($upit);

    $greska .= mysqli_error($veza);

    if(isset($_POST['btn'])){
        if(!empty($_POST['id'])){
            $upit = "UPDATE moderator SET id_korisnik = '{$_POST["id_korisnik"]}', id_benzinska_postaja = '{$_POST["id_benzinska_postaja"]}' WHERE id_moderator = '{$_POST["id"]}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno azuriranje!<br>";
            else $greska .= "Uspjesno azuriranje!<br>";

            $upit = "UPDATE korisnik SET id_tip_korisnika = 3 WHERE id_korisnik = '{$_POST["id_korisnik"]}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno dodavanje!<br>";
            else $greska .= "Uspjesno dodavanje!<br>";
        }
        if(empty($_POST['id'])){
            $upit = "INSERT INTO moderator (id_korisnik, id_benzinska_postaja) VALUES ('{$_POST["id_korisnik"]}', '{$_POST["id_benzinska_postaja"]}')";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno dodavanje!<br>";
            else $greska .= "Uspjesno dodavanje!<br>";

            $upit = "UPDATE korisnik SET id_tip_korisnika = 3 WHERE id_korisnik = '{$_POST["id_korisnik"]}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno dodavanje!<br>";
            else $greska .= "Uspjesno dodavanje!<br>";
        }
    }

    $baza->zatvoriDB();


    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    $smarty->assign("id_korisnik", $id_korisnik);
    $smarty->assign("id_benzinska_postaja", $id_benzinska_postaja);
    $smarty->assign("id",$id);

    $smarty->assign("korisnici", $korisnici);
    $smarty->assign("benzinske_postaje",$benzinske_postaje);

    //$smarty->assign("rezultat", $rezultat);

    $smarty->display("header.tpl");
    $smarty->display("uredi_moderatore.tpl");
    $smarty->display("footer_fixed.tpl");
?>
