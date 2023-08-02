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
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Upravljanje vrstama goriva ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Upravljanje vrstama goriva ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $title = "{$naslov} - Dashboard";

    $greska = "";  
    
    

    $upit = "";

    /*if(isset($_POST['btn'])){
        //echo "gumb kliknut<br>";

        if(isset($_POST['svi'])){
            $upit = "SELECT id_korisnik, id_tip_korisnika, korisnicko_ime, blokiran FROM korisnik";
        }
        if(isset($_POST['blokirani'])){
            $upit = "SELECT id_korisnik, id_tip_korisnika, korisnicko_ime, blokiran FROM korisnik WHERE blokiran = 1";
        }
    }
    else{
        $upit = "SELECT id_korisnik, id_tip_korisnika, korisnicko_ime, blokiran FROM korisnik";
    }*/

    if(isset($_POST['btn'])){
        //ako je odabrano filtriranje po datumu
        if(isset($_POST['razdoblje'])){
            //ako je unesen i datum od i datum do
            if(isset($_POST['datum_od']) && isset($_POST['datum_do'])){
                $datum_od = date("Y-m-d", strtotime($_POST['datum_od']));
                $datum_do = date("Y-m-d", strtotime($_POST['datum_do']));

                //$greska .= $datum_od." - ".$datum_do;

                if(isset($_POST['svi'])){
                    $upit = "SELECT id_dnevnik, id_korisnik, id_tip_radnje, vrijeme, zapis FROM dnevnik WHERE STR_TO_DATE(LEFT(vrijeme,LOCATE(' ',vrijeme)),'%Y-%m-%d') BETWEEN '{$datum_od}' AND '{$datum_do}'"; //
                }
                if(isset($_POST['neregistrirani'])){
                    $upit = "SELECT id_dnevnik, id_korisnik, id_tip_radnje, vrijeme, zapis FROM dnevnik WHERE id_korisnik IS NULL AND STR_TO_DATE(LEFT(vrijeme,LOCATE(' ',vrijeme)),'%Y-%m-%d') BETWEEN '{$datum_od}' AND '{$datum_do}'";
                }
                if(isset($_POST['unos'])){
                    //pronadi korisnika po id-ju ili po korimenu
                    if(is_numeric($_POST['korisnik'])){
                        $upit = "SELECT id_korisnik FROM korisnik WHERE id_korisnik = '{$_POST["korisnik"]}'";
                    }
                    else{
                        $upit = "SELECT id_korisnik, korisnicko_ime FROM korisnik WHERE korisnicko_ime = '{$_POST["korisnik"]}'";
                    }
        
                    $rezultat = $baza->selectDB($upit);
                    
                    //pohrani id u varijablu
                    if(mysqli_num_rows($rezultat)){
                        $row = mysqli_fetch_array($rezultat);
        
                        $id_kor = $row[0];
                    }
                    
                    //pronadi u dnevniku zapis s idjem korisnika
                    $upit = "SELECT id_dnevnik, id_korisnik, id_tip_radnje, vrijeme, zapis FROM dnevnik WHERE id_korisnik = '{$id_kor}' AND STR_TO_DATE(LEFT(vrijeme,LOCATE(' ',vrijeme)),'%Y-%m-%d') BETWEEN '{$datum_od}' AND '{$datum_do}'";
                }
            }
        }
        //ako je odabrano bez filtriranja po datumu
        else{
            if(isset($_POST['svi'])){
                $upit = "SELECT id_dnevnik, id_korisnik, id_tip_radnje, vrijeme, zapis FROM dnevnik";
            }
            if(isset($_POST['neregistrirani'])){
                $upit = "SELECT id_dnevnik, id_korisnik, id_tip_radnje, vrijeme, zapis FROM dnevnik WHERE id_korisnik IS NULL";
            }
            if(isset($_POST['unos'])){
                if(is_numeric($_POST['korisnik'])){
                    $upit = "SELECT id_korisnik FROM korisnik WHERE id_korisnik = '{$_POST["korisnik"]}'";
                }
                else{
                    $upit = "SELECT id_korisnik, korisnicko_ime FROM korisnik WHERE korisnicko_ime = '{$_POST["korisnik"]}'";
                }
    
                $rezultat = $baza->selectDB($upit);
    
                if(mysqli_num_rows($rezultat)){
                    $row = mysqli_fetch_array($rezultat);
    
                    $id_kor = $row[0];
                }
    
                
    
                $upit = "SELECT id_dnevnik, id_korisnik, id_tip_radnje, vrijeme, zapis FROM dnevnik WHERE id_korisnik = '{$id_kor}'";
            }
        }
    }
    else{
        $upit = "SELECT id_dnevnik, id_korisnik, id_tip_radnje, vrijeme, zapis FROM dnevnik";
    }

    $rezultat = $baza->selectDB($upit);

    if(mysqli_num_rows($rezultat)){
        /*while($row = mysqli_fetch_array($rezultat, MYSQLI_NUM)){
            echo "{$row[2]}<br>";
        }*/
        
        //$polje= mysqli_fetch_array($rezultat, MYSQLI_NUM);
    }
    else{
        $greska .= "Nema zapisa ili je greska kod upita u bazu: ".mysqli_error($veza);
        //echo mysqli_error($veza);
    }
  

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    $smarty->assign("rezultat", $rezultat);

    $smarty->display("header.tpl");
    $smarty->display("dnevnik.tpl");
    $smarty->display("footer_fixed.tpl");
?>