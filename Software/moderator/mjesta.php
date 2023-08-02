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

    if(isset($_GET['id'])){
        $id_bp = $_GET['id'];
    }

    $title = "{$naslov} - Moje benzinske postaje";

    $poruka = ""; 
    
    //$upit = "SELECT id_mjesto, id_benzinska_postaja, id_status_mjesto, oznaka FROM mjesto WHERE id_benzinska_postaja = '{$id_bp}'";

    $upit = "SELECT m.id_mjesto, m.oznaka, s.oznaka FROM mjesto m 
             INNER JOIN status_mjesto s ON m.id_status_mjesto = s.id_status_mjesto 
             WHERE m.id_benzinska_postaja = '{$id_bp}'";

    $rezultat = $baza->selectDB($upit);

    if(mysqli_num_rows($rezultat)){
        
    }
    else{
        $poruka .= "Greska kod upita u bazu! <br>";
        $poruka .= mysqli_error($veza);
    }
    
    $baza->zatvoriDB();

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("poruka", $poruka);

    $smarty->assign("rezultat", $rezultat);
    $smarty->assign("id_bp", $id_bp);

    $smarty->display("header.tpl");
    $smarty->display("mjesta.tpl");
    $smarty->display("footer_fixed.tpl");
?>