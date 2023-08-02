<?php
    $putanja = dirname(getcwd()); //isto sto i __FILE__
    include "../zaglavlje.php";

    $title = "Tankštela - Oporavak";

    $poruka = "";

    if(isset($_POST['gumb'])){
        if(!empty($_POST['email'])){

            $znakovi = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            $znakovi_shfl = str_shuffle($znakovi);
            $lozinka = substr($znakovi_shfl,0,8);

            $salt = "salt";

            $lozinka_kriptirano = hash("sha256", $lozinka . $salt);

            $poruka .= "Lozinka: {$lozinka}<br>";

            //baza

            $baza = new Baza();
            $veza = $baza->spojiDB();

            $email = mysqli_real_escape_string($veza, $_POST['email']);

            $upit = "SELECT * FROM korisnik WHERE email = '{$email}'";

            $rezultat = $baza->selectDB($upit);

            if(mysqli_num_rows($rezultat)){
                //update lozinke

                $upit = "UPDATE korisnik SET lozinka = '{$lozinka}', salt = '{$salt}', lozinka_kriptirano = '{$lozinka_kriptirano}' WHERE email = '{$email}'";

                $rezultat = $baza->selectDB($upit);

                $poruka .= "Lozinka promijenjena!<br>";

                $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,4,'{$vrijeme}','Zahtjev za novom lozinkom ({$email})')";

                $baza->selectDB($upit);

                //send email

                $to = $_POST["email"];
                $subject = "Oporavak racuna";
                //$message = "Za aktivaciju racuna kliknite <a href='http://localhost/skripte/aktivacija.php?aktivacijski_kod=$aktivacijski_kod'>ovdje</a>";
                $message = "Vasa nova lozinka je {$lozinka}";
                //
                //$headers = "From: astennon.official@gmail.com";
                $headers = "From: astennon.official@gmail.com\r\n"."MIME-Version: 1.0"."\r\n"."Content-type:text/html;charset=UTF-8"."\r\n";
                
                

                if(mail($to, $subject, $message, $headers)) $poruka .= "Email poslan.<br>";
                else $poruka .= "Neuspješno slanje emaila.<br>";
                

            }
            else{
                $poruka .= "Korisnik s unesenim emailom ne postoji!<br>";
            }

            
        }
    }

    $smarty->assign("title", $title);
    $smarty->assign("poruka", $poruka);

    $smarty->display("head.tpl");
    $smarty->display("oporavak.tpl");
?>