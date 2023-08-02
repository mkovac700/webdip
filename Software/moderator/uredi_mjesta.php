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

    if($_SESSION["uloga"] < 3){
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Uredivanje vrsta goriva ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Uredivanje vrsta goriva ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $title = "{$naslov} - Dashboard";

    $greska = ""; 

    $upit = "SELECT id_mjesto, id_benzinska_postaja, id_status_mjesto, oznaka FROM mjesto WHERE id_mjesto = '{$_GET['id_row']}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);

    $id_mjesto = $row[0];
    $id_bp = $_GET['id_bp']; //osigurava da se unosi samo za selektiranu benzinsku za koju je moderator zaduzen (hardkodira se u hidden type u tpl, kako bi prezivio resetiranje skripte)
    $id_status_mjesto = $row[2];
    $oznaka = $row[3];
    
    $upit = "SELECT id_status_mjesto, oznaka FROM status_mjesto";

    $statusi_mjesta = $baza->selectDB($upit);
    

    if(isset($_POST['btn'])){
        if(!empty($_POST['id_mjesto'])){

            $upit = "UPDATE mjesto SET id_status_mjesto = '{$_POST["status_mjesto"]}', oznaka = '{$_POST["oznaka"]}' WHERE id_mjesto = '{$_POST["id_mjesto"]}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno azuriranje mjesta!<br>";
            else $greska .= "Uspjesno azuriranje mjesta!<br>";
        }
        if(empty($_POST['id_mjesto'])){

            $upit = "INSERT INTO mjesto (id_benzinska_postaja, id_status_mjesto, oznaka) VALUES ('{$_POST["id_bp"]}', '{$_POST["status_mjesto"]}', '{$_POST["oznaka"]}')";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Uspjesno dodavanje mjesta!<br>";
            else{
                $greska .= "Neuspjesno dodavanje mjesta!<br>";
                $greska .= mysqli_error($veza). " --> {$id_bp} <br>";
            }
            
        }
    }

    $baza->zatvoriDB();


    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    $smarty->assign("id_mjesto", $id_mjesto);
    $smarty->assign("id_bp", $id_bp);
    $smarty->assign("id_status_mjesto", $id_status_mjesto);
    $smarty->assign("oznaka", $oznaka);

    $smarty->assign("statusi_mjesta", $statusi_mjesta);

    $smarty->display("header.tpl");
    $smarty->display("uredi_mjesta.tpl");
    $smarty->display("footer_fixed.tpl");
?>