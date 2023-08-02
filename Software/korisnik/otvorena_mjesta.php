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

    if(isset($_GET['id'])){
        $id_bp = $_GET['id'];
    }

    $title = "{$naslov} - Moje benzinske postaje";

    $poruka = ""; 

    //populting select:
    $upit = "SELECT id_vrste_goriva, naziv FROM vrste_goriva";

    $vgoriva = $baza->selectDB($upit);

    //populating table:
    $upit = "SELECT DISTINCT m.id_mjesto, m.oznaka, s.oznaka FROM mjesto m 
             INNER JOIN status_mjesto s ON m.id_status_mjesto = s.id_status_mjesto
             INNER JOIN mjesto_vrste_goriva mvg ON m.id_mjesto = mvg.id_mjesto
             WHERE m.id_benzinska_postaja = '{$id_bp}' AND m.id_status_mjesto = 2";

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

    if(isset($_POST['btn'])){
        $selected = $_POST['vgoriva'];

        if($selected){
            $upit = "SELECT m.id_mjesto, m.oznaka, s.oznaka FROM mjesto m 
             INNER JOIN status_mjesto s ON m.id_status_mjesto = s.id_status_mjesto
             INNER JOIN mjesto_vrste_goriva mvg ON m.id_mjesto = mvg.id_mjesto
             WHERE m.id_benzinska_postaja = '{$id_bp}' AND m.id_status_mjesto = 2 AND mvg.id_vrste_goriva = '{$selected}'";
        }
        else{
            $upit = "SELECT DISTINCT m.id_mjesto, m.oznaka, s.oznaka FROM mjesto m 
             INNER JOIN status_mjesto s ON m.id_status_mjesto = s.id_status_mjesto
             INNER JOIN mjesto_vrste_goriva mvg ON m.id_mjesto = mvg.id_mjesto
             WHERE m.id_benzinska_postaja = '{$id_bp}' AND m.id_status_mjesto = 2";
        }

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
    }

    /*$polje = array();

    while($red = mysqli_fetch_array($rezultat, MYSQLI_NUM)){

        //$trenutna = $red[0];
        //echo $red[0];
        $upit = "SELECT vg.naziv, bpvg.na_raspolaganju FROM vrste_goriva vg
                 INNER JOIN benzinska_postaja_vrste_goriva bpvg ON vg.id_vrste_goriva = bpvg.id_vrste_goriva
                 WHERE bpvg.id_benzinska_postaja = '{$red[0]}'";
        
        $rezultat = $baza->selectDB($upit);

        $goriva = mysqli_fetch_array($rezultat,MYSQLI_NUM);
    }

    var_dump($polje);*/
    
    $baza->zatvoriDB();

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("poruka", $poruka);

    $smarty->assign("rezultat", $rezultat);
    $smarty->assign("vgoriva", $vgoriva);
    $smarty->assign("selected",$selected);

    $smarty->display("header.tpl");
    $smarty->display("otvorena_mjesta.tpl");
    $smarty->display("footer_fixed.tpl");
?>