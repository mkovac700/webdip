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

    if($_SESSION["uloga"] < 3){
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

    if(isset($_GET['id_row'])){
        $id_row = $_GET['id_row'];
    }

    if(isset($_GET['id_bp'])){
        $id_bp = $_GET['id_bp'];
    }

    $title = "{$naslov} - Moje benzinske postaje";

    $poruka = ""; 

    //dohvacanje naziva mjesta
    $upit = "SELECT oznaka FROM mjesto WHERE id_mjesto = '{$id_row}'";

    $rez = $baza->selectDB($upit);

    $redak = mysqli_fetch_array($rez, MYSQLI_NUM);

    $naziv_mjesta = $redak[0];
    
    //populating table
    $upit = "SELECT mvg.id_mvg, vg.naziv FROM mjesto_vrste_goriva mvg 
             INNER JOIN vrste_goriva vg ON vg.id_vrste_goriva = mvg.id_vrste_goriva
             WHERE mvg.id_mjesto = '{$id_row}'";

    $rezultat = $baza->selectDB($upit);

    if(mysqli_num_rows($rezultat)){
        
    }
    else{
        $poruka .= "Greska kod upita u bazu ili nema zapisa! <br>";
        $poruka .= "Opis greske: ".mysqli_error($veza);
    }

    //populating select
    $upit = "SELECT vg.id_vrste_goriva, vg.naziv FROM vrste_goriva vg 
            INNER JOIN benzinska_postaja_vrste_goriva bpvg ON vg.id_vrste_goriva = bpvg.id_vrste_goriva
            INNER JOIN benzinska_postaja bp ON bpvg.id_benzinska_postaja = bp.id_benzinska_postaja
            INNER JOIN mjesto m ON bp.id_benzinska_postaja = m.id_benzinska_postaja
            WHERE m.id_mjesto = '{$id_row}'";

    $vrste_goriva = $baza->selectDB($upit);

    if(mysqli_num_rows($vrste_goriva)){
        
    }
    else{
        $poruka .= "Greska kod upita u bazu ili nema zapisa! <br>";
        $poruka .= "Opis greske: ".mysqli_error($veza);
    }

    //unos novog zapisa
    if(isset($_POST['btn'])){
        if(!empty($_POST['vrsta_goriva'])){
            $odabir = $_POST['vrsta_goriva'];
            //$poruka .= "<br>Odabrali ste: {$odabir}<br>";

            $upit = "INSERT INTO mjesto_vrste_goriva (id_mjesto, id_vrste_goriva) VALUES ('{$id_row}', '{$odabir}')";
            $rezultat = $baza->selectDB($upit);

            if(mysqli_num_rows($vrste_goriva)){
        
            }
            else{
                $poruka .= "Greska kod upita u bazu ili nema zapisa! <br>";
                $poruka .= "Opis greske: ".mysqli_error($veza);
            }

            header("Refresh:0");
        }
        else{
            //$poruka .= "<br>Nista nije odabrano!<br>";
        }
    }
    
    $baza->zatvoriDB();

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("poruka", $poruka);

    $smarty->assign("rezultat", $rezultat);
    $smarty->assign("vrste_goriva",$vrste_goriva);
    $smarty->assign("id_bp", $id_bp);
    $smarty->assign("naziv_mjesta", $naziv_mjesta);

    $smarty->display("header.tpl");
    $smarty->display("uredi_mjesta_vg.tpl");
    $smarty->display("footer_fixed.tpl");
?>