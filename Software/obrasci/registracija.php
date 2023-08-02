<?php
    error_reporting (E_ALL ^ E_NOTICE);
    //$direktorij = dirname(getcwd());
    //echo $direktorij;
    $putanja = dirname(getcwd());
    $putanjaMeni = dirname($_SERVER["REQUEST_URI"],-1);
    //$putanjaMeni = dirname(dirname($_SERVER["REQUEST_URI"]));

    include "../zaglavlje.php";

    $title = "{$naslov} - Registracija";

    $greska = "";
    $postoji;
    
    if(isset($_POST['gumb'])){

        if(!key_exists("uvjeti_koristenja",$_POST)){
            $greska .= "Za registraciju morate prihvatiti uvjete korištenja! <br>";
        }

        $sve_popunjeno = true;

        foreach($_POST as $k => $v){
            if(empty($v) && $k != "gumb"){
                //$greska .= "Niste popunili: " .$k."<br>";
                $sve_popunjeno = false;
            }

            if($k == "godina"){
                $neispravno = false;
                if(!empty($v)){
                    $datum = explode(".",$v);
                    unset($datum[sizeof($datum)-1]);

                    if(count($datum) != 3){
                        $neispravno = true;
                    }
                    else{
                        if(strlen($datum[0]) != 2 || strlen($datum[1]) != 2 || strlen($datum[2]) != 4) $neispravno = true;

                        if((int)$datum[0] == 0 || (int)$datum[1] == 0 || (int)$datum[2] == 0) $neispravno = true;

                        if((int)substr($datum[0],0,1) < 0 || (int)substr($datum[0],0,1) > 3) $neispravno = true;
                        if((int)substr($datum[1],0,1) < 0 || (int)substr($datum[1],0,1) > 1) $neispravno = true;

                        if(date("Y")-(int)$datum[2] < 18) $greska .= "Za registraciju morate imati 18 godina! <br>";
                    }
                }

                if($neispravno) $greska .= "Neispravan format datuma! <br>";
            }
        }

        if(!$sve_popunjeno) $greska .= "Nisu popunjena sva polja! <br>";

        //captcha:

        $recaptcha = $_POST["g-recaptcha-response"];
        $secret_key = '6LeHkVkgAAAAAPLvVUtkqnUwZrrInIoqLkPyHWGi';
        $url = 'https://www.google.com/recaptcha/api/siteverify?secret='. $secret_key . '&response=' . $recaptcha;

        // Making request to verify captcha
        $response = file_get_contents($url);

        // Response return by google is in
        // JSON format, so we have to parse
        // that json
        $response = json_decode($response);

        if ($response->success == false) {
            $greska .= "Morate potvrditi da niste robot!<br>";
        }

        //END captcha

        /*if (isset($_POST["js_validno"]) && $_POST["js_validno"] == false){
            $greska .= "Javascript validacija sadrzi greske!<br>";
        }
        else{
            $greska .= var_dump($_POST["js_validno"]);
        }*/

        if(empty($greska)){
            //spajanje na bazu i pohrana podataka

            $veza = new Baza();
            $veza->spojiDB();

            $salt = "salt"; 
            $lozinka_kriptirano = hash("sha256", $_POST["lozinka"].$salt);

            $uloga = 2; //registrirani korisnik

            $upit = "SELECT * FROM `korisnik` WHERE korisnicko_ime = '{$_POST["korime"]}'";

            $rezultat = $veza->selectDB($upit);

            $vrijeme = date('Y-m-d H:i:s');

            if(mysqli_num_rows($rezultat)){
                $greska .= "Korisnik {$_POST["korime"]} je vec registriran!";
                $postoji = true;

                $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,2,'{$vrijeme}','Neuspjesni pokusaj registracije (postojeci korisnik)')";

                $veza->selectDB($upit);
            }
            else{
                $postoji = false;

                //generiranje validation key-a:
                $aktivacijski_kod = hash("md5", time().$_POST["korime"]);

                $datum_registracije = date('Y-m-d H:i:s');

                $upit = "INSERT INTO `korisnik` (id_korisnik, ime, prezime, datum_rodenja, adresa, kontakt_broj, email, korisnicko_ime, lozinka, salt, lozinka_kriptirano, broj_neuspjesnih_prijava, uvjeti_koristenja, aktivacijski_kod, potvrden, blokiran, datum_registracije, id_tip_korisnika) VALUES (NULL, '{$_POST["ime"]}', '{$_POST["prezime"]}', '{$_POST["dob"]}', '{$_POST["adresa"]}', '{$_POST["kontaktbr"]}', '{$_POST["email"]}', '{$_POST["korime"]}', '{$_POST["lozinka"]}', '{$salt}', '{$lozinka_kriptirano}', 0, 1, '{$aktivacijski_kod}', 0, 0, '$datum_registracije', 2)"; 

                $rezultat = $veza->selectDB($upit);

                if($rezultat){
                    //send email

                    $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,2,'{$vrijeme}','Uspjesna registracija')";

                    $veza->selectDB($upit);

                    $to = $_POST["email"];
                    $subject = "Aktivacija racuna";
                    //$message = "Za aktivaciju racuna kliknite <a href='http://localhost/skripte/aktivacija.php?aktivacijski_kod=$aktivacijski_kod'>ovdje</a>";
                    $message = "Vas aktivacijski kod je {$aktivacijski_kod}";
                    //
                    //$headers = "From: astennon.official@gmail.com";
                    $headers = "From: astennon.official@gmail.com\r\n"."MIME-Version: 1.0"."\r\n"."Content-type:text/html;charset=UTF-8"."\r\n";
                    
                    

                    if(mail($to, $subject, $message, $headers)) header('location:aktivacija.php');
                    else echo "Neuspjesno slanje emaila";

                }
                else{
                    echo "Greska kod unosa u bazu!";
                }
            }

            /*if($rezultat == TRUE){
                echo "uspjeh";
            }
            else{
                echo "neuspjeh";
            }*/

            $veza->zatvoriDB();
        }
    }

    $smarty->assign("greska", $greska);
    $smarty->assign("postoji", $postoji);
    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);

    $smarty->display("header.tpl");
    $smarty->display("registracija.tpl");
    $smarty->display("footer_reg.tpl");
?>
    