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

    if($_SESSION["uloga"] < 2){
        if(empty($id_korisnik)){
            $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Moje benzinske postaje ({$_SESSION["korisnik"]})')";
        }
        else{
            $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ($id_korisnik,3,'{$vrijeme}','Pokusaj pristupa stranici Moje benzinske postaje ({$_SESSION["korisnik"]})')";
        }
        

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Moje benzinske postaje ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $title = "{$naslov} - Moje benzinske postaje";

    $poruka = ""; 

    if(isset($_GET['id'])){
        $id_mjesta = $_GET['id'];
    }

    //populting select:
    $upit = "SELECT id_vozilo, marka, model FROM vozilo WHERE id_korisnik = '{$id_korisnik}'";
    $vozila = $baza->selectDB($upit);
    
    $upit = "SELECT vg.id_vrste_goriva, vg.naziv, vg.tip FROM vrste_goriva vg 
            INNER JOIN mjesto_vrste_goriva mvg ON mvg.id_vrste_goriva = vg.id_vrste_goriva
            WHERE mvg.id_mjesto = '{$id_mjesta}'";
    $gorivo = $baza->selectDB($upit);


    if(isset($_POST['btn'])){
        $id_mjesto = $_POST['id_mjesta'];
        $id_vozilo = $_POST['vozilo'];
        $id_gorivo = $_POST['gorivo'];
        $novo_stanje_km = $_POST['prijedeno_km'];
        $potroseno_goriva = $_POST['gorivo_potroseno'];
        $natoceno_goriva = $_POST['gorivo_preuzeto'];

        $datum_vrijeme = date('Y-m-d H:i:s');

        $upit = "SELECT id_mvg FROM mjesto_vrste_goriva WHERE id_mjesto = '{$id_mjesto}' AND id_vrste_goriva = '{$id_gorivo}'";
        $rezultat = $baza->selectDB($upit);
        $red = mysqli_fetch_array($rezultat);
        $id_mvg = $red[0];

        $upit = "SELECT id_benzinska_postaja FROM mjesto WHERE id_mjesto = '{$id_mjesto}'";
        $rezultat = $baza->selectDB($upit);
        $red = mysqli_fetch_array($rezultat);
        $id_benzinska_postaja = $red[0];

        $upit = "INSERT INTO evidencija_tocenja (id_vozilo, novo_stanje_km, potroseno_goriva, natoceno_goriva, datum_vrijeme, id_benzinska_postaja, id_mvg)
                 VALUES ('{$id_vozilo}', '{$novo_stanje_km}', '{$potroseno_goriva}', '{$natoceno_goriva}', '{$datum_vrijeme}', '{$id_benzinska_postaja}',
                 '{$id_mvg}')";
        $rezultat = $baza->selectDB($upit);

        if(mysqli_affected_rows($veza)<1){
            $poruka .= "Greska u kreiranju evidencije: ".mysqli_error($veza);
        }
        else{
            //smanjivanje ukupne kolicine na benzinskoj postaji:
            $upit = "SELECT kolicina FROM benzinska_postaja_vrste_goriva 
                     WHERE id_benzinska_postaja = '{$id_benzinska_postaja}' AND id_vrste_goriva = '{$id_gorivo}'";
            $rezultat = $baza->selectDB($upit);
            $red = mysqli_fetch_array($rezultat);
            $kolicina_trenutno = $red[0];

            $kolicina_novo = $kolicina_trenutno-$natoceno_goriva;
            if($kolicina_novo < 0) $kolicina_novo = 0;

            $upit = "UPDATE benzinska_postaja_vrste_goriva SET kolicina = '{$kolicina_novo}' WHERE id_benzinska_postaja = '{$id_benzinska_postaja}'
                     AND id_vrste_goriva = '{$id_gorivo}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_affected_rows($veza)<1){
                $poruka .= "Greska u azuriranju kolicine goriva u BPVG: ".mysqli_error($veza);
            }

            //promjena statusa mjesta u CEKA NAPLATU:

            $upit = "UPDATE mjesto SET id_status_mjesto = 4 WHERE id_mjesto = '{$id_mjesto}'";
            $rezultat = $baza->selectDB($upit);
            if(mysqli_affected_rows($veza)<1){
                $poruka .= "Greska u azuriranju statusa mjesta u MJESTO: ".mysqli_error($veza);
            }
        }

    }
    
    $baza->zatvoriDB();

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("poruka", $poruka);

    $smarty->assign("rezultat", $rezultat);
    $smarty->assign("id_mjesta", $id_mjesta);
    $smarty->assign("vozila",$vozila);
    $smarty->assign("gorivo",$gorivo);

    $smarty->display("header.tpl");
    $smarty->display("evidencija.tpl");
    $smarty->display("footer_fixed.tpl");
?>