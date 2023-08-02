<?php
    error_reporting (E_ALL ^ E_NOTICE);
    $putanja = dirname(getcwd());
    $putanjaMeni = dirname($_SERVER["REQUEST_URI"],-1);
    include "../zaglavlje.php";

    /*if (empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] === "off") {
        $location = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        header('HTTP/1.1 301 Moved Permanently');
        header('Location: ' . $location);
        exit;
    }*/

    $title = "{$naslov} - Prijava";

    $greska = "";

    $korime_val = "";

    if(isset($_COOKIE["korisnicko_ime"])) $korime_val = "{$_COOKIE['korisnicko_ime']}";

    //var_dump($_COOKIE);

    if(isset($_POST['gumb'])){
        $baza = new Baza();
        $veza = $baza->spojiDB();

        $korisnicko_ime = $veza->real_escape_string($_POST['korime']);
        $lozinka = $veza->real_escape_string($_POST['lozinka']);

        $upit = "SELECT korisnicko_ime, lozinka, id_tip_korisnika, broj_neuspjesnih_prijava, blokiran, potvrden, id_korisnik FROM `korisnik` WHERE korisnicko_ime = '{$korisnicko_ime}'"; // AND lozinka = '{$lozinka}'

        $rezultat = $baza->selectDB($upit);

        if(mysqli_num_rows($rezultat)){
            $row = mysqli_fetch_array($rezultat);

            $blokiran = $row[4];
            $potvrden = $row[5];
            $id_korisnik = $row[6];

            $vrijeme = date('Y-m-d H:i:s');

            if($blokiran == 1){
                $greska .= "Racun blokiran. Molimo kontaktirajte administratora!<br>";

                $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',1,'{$vrijeme}','Neuspjesni pokusaj prijave (blokiran racun)')";

                $baza->selectDB($upit);
            }
            else if($potvrden == 0){
                $greska .= "Nepotvrdeni racun. Molimo kontaktirajte administratora!<br>";

                $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',1,'{$vrijeme}','Neuspjesni pokusaj prijave (nepotvrden racun)')";

                $baza->selectDB($upit);
            }
            else{
                if($lozinka == $row[1]){
                    $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',1,'{$vrijeme}','Uspjesna prijava')";

                    $baza->selectDB($upit);

                    $uloga = $row[2];
    
                    $greska .= "Korisnik prijavljen!<br>";
    
                    //if(!isset($_SESSION)) Sesija::kreirajKorisnika("gost",1);
                    
                    Sesija::obrisiSesiju();
                    
    
                    Sesija::kreirajKorisnika($korisnicko_ime, (int)$uloga);
    
                    if(isset($_POST['zapamti'])){
                        if(isset($_COOKIE['korisnicko_ime'])) setcookie("korisnicko_ime", "", time() - 3600);
    
                        //$greska .= "Korisnicko ime spremljeno u kolacic!<br>";
    
                        //time()+60*60*24*30 --> pamti kolacic 30 dana
                        setcookie("korisnicko_ime", "{$_POST['korime']}"); 
    
                        //$greska .= "Vrijednost kolacica: {$_COOKIE['korisnicko_ime']} <br>";
                    }
                    else{
                        if(isset($_COOKIE['korisnicko_ime'])) setcookie("korisnicko_ime", "", time() - 3600);
                        //$greska .= "Korisnicko ime nije spremljeno u kolacic!<br>";
                    }

                    //resetiraj broj neuspjesnih ako se uspio uspjesno prijavit
                    $upit = "UPDATE korisnik SET broj_neuspjesnih_prijava = 0 WHERE korisnicko_ime = '{$korisnicko_ime}'";
    
                    $baza->selectDB($upit);

                    header("Location: /index.php");

                    
                }
                else{
                    $br_neuspjelih = (int)$row[3];
                    $br_preostalih = (3-$br_neuspjelih)-1;
    
                    $br_neuspjelih++;
    
                    //echo $br_neuspjelih;
    
                    $greska .= "Netočna lozinka! Broj preostalih pokušaja: {$br_preostalih}<br>";
    
                    $upit = "UPDATE korisnik SET broj_neuspjesnih_prijava = '{$br_neuspjelih}' WHERE korisnicko_ime = '{$korisnicko_ime}'";
    
                    $baza->selectDB($upit);

                    $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',1,'{$vrijeme}','Neuspjesni pokusaj prijave (netocna lozinka)')";

                    $baza->selectDB($upit);
    
                    if($br_neuspjelih == 3){
                        $upit = "UPDATE korisnik SET blokiran = 1 WHERE korisnicko_ime = '{$korisnicko_ime}'";

                        $baza->selectDB($upit);

                        $greska .= "Racun je blokiran.<br>";

                        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',1,'{$vrijeme}','Premasen broj pokusaja prijave, racun blokiran')";

                        $baza->selectDB($upit);
                    }
                }
            }
            
        }
        else{
            $greska .= "Korisnik ne postoji!<br>";
        }

        $baza->zatvoriDB();
    }


    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);
    $smarty->assign("korime_val", $korime_val);

    $smarty->display("header.tpl");
    $smarty->display("prijava.tpl");
    $smarty->display("footer_fixed.tpl");
?>