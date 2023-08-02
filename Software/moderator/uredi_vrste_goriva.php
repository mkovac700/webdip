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

    //$upit = "SELECT id_moderator, id_korisnik, id_benzinska_postaja FROM moderator WHERE id_moderator = '{$_GET['id']}'";
    $upit = "SELECT id_bpvg, id_benzinska_postaja, id_vrste_goriva, kolicina, na_raspolaganju FROM benzinska_postaja_vrste_goriva WHERE id_bpvg = '{$_GET['id_row']}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);

    
    /*$id = $row[0];
    $id_korisnik = $row[1];
    $id_benzinska_postaja = $row[2];*/

    $id_bpvg = $row[0];
    $id_bp =  $_GET['id_bp'];//$row[1];
    $id_vg = $row[2];
    $kolicina = $row[3];
    $na_raspolaganju = $row[4];

    $upit = "SELECT iznos FROM povijest_cijena WHERE id_bpvg = '{$id_bpvg}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);

    $cijena = $row[0];
    
    //echo $id_bp;

    //echo $id_bp;
    if(!empty($_GET['id_row'])){
        $upit = "SELECT id_vrste_goriva, naziv FROM vrste_goriva";
    }
    else{
        $upit = "SELECT id_vrste_goriva, naziv FROM vrste_goriva
                 WHERE id_vrste_goriva NOT IN (SELECT id_vrste_goriva FROM benzinska_postaja_vrste_goriva WHERE id_benzinska_postaja = '{$id_bp}')";
    }

    $dropdown_vals = $baza->selectDB($upit);
    echo mysqli_error($veza);
    

    if(isset($_POST['btn'])){
        if(!empty($_POST['id_bpvg'])){

            $upit = "UPDATE benzinska_postaja_vrste_goriva SET id_vrste_goriva = '{$_POST["id_vg"]}', kolicina = '{$_POST["kolicina"]}', na_raspolaganju = '{$_POST["na_raspolaganju"]}' WHERE id_bpvg = '{$_POST["id_bpvg"]}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno azuriranje benzinska postaja vrste goriva!<br>";
            else $greska .= "Uspjesno azuriranje benzinska postaja vrste goriva!<br>";

            /*$upit = "UPDATE povijest_cijena SET iznos = '{$_POST["cijena"]}' WHERE id_bpvg = '{$_POST["id_bpvg"]}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Nespjesno azuriranje povijest_cijena!<br>";
            else $greska .= "Uspjesno azuriranje povijest_cijena!<br>";*/

            //1. ZATVARANJE STARE CIJENE TAKO DA SE NA ZADNJI ZAPIS U TABLICI CIJENA 'DATUM DO' POSTAVLJA NA TRENUTNI DATUM I VRIJEME
            //$upit = "SELECT id_povijest_cijena FROM povijest_cijena ORDER BY id_povijest_cijena DESC LIMIT 1";
            $upit = "SELECT pc.id_povijest_cijena FROM povijest_cijena pc 
                     INNER JOIN benzinska_postaja_vrste_goriva bpvg ON bpvg.id_bpvg = pc.id_bpvg
                     WHERE bpvg.id_benzinska_postaja = '{$_POST["id_bp"]}'
                     ORDER BY pc.id_povijest_cijena DESC LIMIT 1";
            $rezultat = $baza->selectDB($upit);
            $row = mysqli_fetch_array($rezultat);
            $zadnji_id_pc = $row[0];

            $datum_vrijeme = date('Y-m-d H:i:s');

            $upit = "UPDATE povijest_cijena SET datum_do = '{$datum_vrijeme}' WHERE id_povijest_cijena = '{$zadnji_id_pc}'";
            $rezultat = $baza->selectDB($upit);

            //2. KREIRANJE NOVE CIJENE TAKO DA SE ZA NOVI ZAPIS U TABLICI CIJENA 'DATUM OD' POSTAVI NA TRENUTNI DATUM I VRIJEME

            $upit = "INSERT INTO povijest_cijena (id_bpvg, iznos, datum_od) VALUES ('{$_POST["id_bpvg"]}', '{$_POST["cijena"]}', '{$datum_vrijeme}')";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Uspjesno dodavanje pc!<br>";
            else{
                $greska .= "Neuspjesno dodavanje pc!<br>";
                $greska .= mysqli_error($veza);
            }
        }
        if(empty($_POST['id_bpvg'])){
            //slucaj dodavanja novog zapisa:

            //unos podataka u tablicu BPVG
            $upit = "INSERT INTO benzinska_postaja_vrste_goriva (id_benzinska_postaja, id_vrste_goriva, kolicina, na_raspolaganju) VALUES ('{$_POST["id_bp"]}', '{$_POST["id_vg"]}', '{$_POST["kolicina"]}', '{$_POST["na_raspolaganju"]}')";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Uspjesno dodavanje bpvg!<br>";
            else{
                $greska .= "Neuspjesno dodavanje bpvg!<br>";
                $greska .= mysqli_error($veza). " --> {$id_bp} <br>";
            }

            //spremanje novo unesenog zapisa u BPVG (dohvacanje ID-ja novog zapisa)
            $upit = "SELECT id_bpvg FROM benzinska_postaja_vrste_goriva WHERE id_benzinska_postaja = '{$_POST["id_bp"]}' AND id_vrste_goriva = '{$_POST["id_vg"]}'";
            $rezultat = $baza->selectDB($upit);
            
            $row = mysqli_fetch_array($rezultat);
            $novi_bpvg = $row[0];

            $datum_vrijeme = date('Y-m-d H:i:s');

            //unos podataka u tablicu POVIJEST CIJENA za novouneseni zapis u BPVG

            //1. ZATVARANJE STARE CIJENE TAKO DA SE NA ZADNJI ZAPIS U TABLICI CIJENA 'DATUM DO' POSTAVLJA NA TRENUTNI DATUM I VRIJEME (ne kod novog inserta!)
            //$upit = "SELECT id_povijest_cijena FROM povijest_cijena ORDER BY id_povijest_cijena DESC LIMIT 1";
            /*$upit = "SELECT pc.id_povijest_cijena FROM povijest_cijena pc 
                     INNER JOIN benzinska_postaja_vrste_goriva bpvg ON bpvg.id_bpvg = pc.id_bpvg
                     WHERE bpvg.id_benzinska_postaja = '{$_POST["id_bp"]}'
                     ORDER BY pc.id_povijest_cijena DESC LIMIT 1";
            $rezultat = $baza->selectDB($upit);
            $row = mysqli_fetch_array($rezultat);
            $zadnji_id_pc = $row[0];

            $datum_vrijeme = date('Y-m-d H:i:s');

            $upit = "UPDATE povijest_cijena SET datum_do = '{$datum_vrijeme}' WHERE id_povijest_cijena = '{$zadnji_id_pc}'";
            $rezultat = $baza->selectDB($upit);*/

            //2. KREIRANJE NOVE CIJENE TAKO DA SE ZA NOVI ZAPIS U TABLICI CIJENA 'DATUM OD' POSTAVI NA TRENUTNI DATUM I VRIJEME

            $upit = "INSERT INTO povijest_cijena (id_bpvg, iznos, datum_od) VALUES ('{$novi_bpvg}', '{$_POST["cijena"]}', '{$datum_vrijeme}')";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_num_rows($rezultat)) $greska .= "Uspjesno dodavanje pc!<br>";
            else{
                $greska .= "Neuspjesno dodavanje pc!<br>";
                $greska .= mysqli_error($veza);
            }
        }
    }

    $baza->zatvoriDB();


    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    /*$smarty->assign("id_korisnik", $id_korisnik);
    $smarty->assign("id_benzinska_postaja", $id_benzinska_postaja);
    $smarty->assign("id",$id);*/

    $smarty->assign("id_bpvg", $id_bpvg);
    $smarty->assign("id_bp", $id_bp);
    $smarty->assign("id_vg", $id_vg);
    $smarty->assign("kolicina", $kolicina);
    $smarty->assign("na_raspolaganju", $na_raspolaganju);

    $smarty->assign("cijena", $cijena);

    $smarty->assign("dropdown_vals", $dropdown_vals);


    //$smarty->assign("rezultat", $rezultat);

    $smarty->display("header.tpl");
    $smarty->display("uredi_vrste_goriva.tpl");
    $smarty->display("footer_fixed.tpl");
?>