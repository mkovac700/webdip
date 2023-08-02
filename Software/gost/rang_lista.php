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
    $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Rang lista  ({$_SESSION["korisnik"]})')";

    $baza->selectDB($upit);
    

    $title = "{$naslov} - Rang lista ";

    $poruka = ""; 
    
    $upit = "SELECT bp.id_benzinska_postaja, bp.oznaka, bp.adresa, SUM(et.natoceno_goriva) AS 'ukupno_natoceno'
             FROM evidencija_tocenja et INNER JOIN benzinska_postaja bp ON et.id_benzinska_postaja = bp.id_benzinska_postaja
             GROUP BY bp.id_benzinska_postaja ORDER BY ukupno_natoceno DESC";

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
    $smarty->display("rang_lista.tpl");
    $smarty->display("footer_fixed.tpl");
?>