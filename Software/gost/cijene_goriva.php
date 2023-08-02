<?php
    error_reporting (E_ALL ^ E_NOTICE);
    $putanja = dirname(getcwd()); 
    $putanjaMeni = dirname($_SERVER["REQUEST_URI"],-1); //2
    include "{$putanja}/zaglavlje.php";

    $baza = new Baza();

    $veza = $baza->spojiDB();

    $upit = "SELECT id_korisnik FROM korisnik WHERE korisnicko_ime = '{$_SESSION["korisnik"]}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);
    $id_korisnik = $row[0];

    $vrijeme = date('Y-m-d H:i:s');

    //mogu svi pristupit pa nema ispitivanja uloge
    $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Cijene goriva  ({$_SESSION["korisnik"]})')";

    $baza->selectDB($upit);
    

    $title = "{$naslov} - Cijene goriva ";

    $poruka = ""; 
    
    $upit = "SELECT vg.id_vrste_goriva, vg.tip, vg.naziv, pc.iznos, pc.datum_od, pc.datum_do 
             FROM vrste_goriva vg 
             INNER JOIN benzinska_postaja_vrste_goriva bpvg ON vg.id_vrste_goriva = bpvg.id_vrste_goriva
             INNER JOIN povijest_cijena pc ON bpvg.id_bpvg = pc.id_bpvg
             WHERE bpvg.id_benzinska_postaja = '{$_GET["id"]}'";

    $rezultat = $baza->selectDB($upit);

    if(!mysqli_num_rows($rezultat)){
        if(!empty(mysqli_error($veza))){
            $poruka .= "Greška kod upita u bazu: ";
            $poruka .= mysqli_error($veza);
            $poruka .= "<br>";
        }
        else{
            $poruka .= "Nema zapisa!<br>";
        }
        
    }
    
    $baza->zatvoriDB();

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("poruka", $poruka);

    $smarty->assign("rezultat", $rezultat);

    $smarty->display("header.tpl");
    $smarty->display("cijene_goriva.tpl");
    $smarty->display("footer_fixed.tpl");
?>