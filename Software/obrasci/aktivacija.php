<?php
    $putanja = dirname(getcwd()); //isto sto i __FILE__
    include "../zaglavlje.php";

    $title = "Tankštela - Aktivacija";

    $poruka = "";

    if(isset($_POST["gumb"])){
        //process activation
        $aktivacijski_kod = $_POST["aktivacijski_kod"]; //iz validacija.tpl

        //var_dump($_POST["aktivacijski_kod"]);

        $veza = new Baza();

        $veza->spojiDB();

        $upit = "SELECT potvrden, aktivacijski_kod, datum_registracije FROM korisnik WHERE potvrden = 0 AND aktivacijski_kod = '{$aktivacijski_kod}'";

        $rezultat = $veza->selectDB($upit);

        /*

        var_dump(mysqli_fetch_array($rezultat));

        echo "<br> <br>";

        $row = mysqli_fetch_array($rezultat);

        //$dt = new DateTime($row[2]);
        $dt = new DateTime("2022-06-11 23:00:00");
        $datum_registracije = $dt->format('m/d/Y H:i:s');

        $datum_registracije_parsed = date_parse($datum_registracije);
        echo "<br> <br>";

        //var_dump($datum_registracije_parsed);

        echo "<br>Converted timestamp from database: {$datum_registracije} <br>";

        $timestamp1 = strtotime($datum_registracije);
        $timestamp2 = strtotime(date('m/d/Y H:i:s',time()));
        $current_datetime = date('m/d/Y h:i:s',time());

        echo "<br>Current timestamp: {$current_datetime} <br>";
        
        echo "<br>timestamp1: {$timestamp1} ; timestamp2: {$timestamp2} <br>";
        //echo "Difference between two dates is " . $hour = abs($timestamp2 - $timestamp1)/(60*60) . " hour(s)";
        echo "Difference between two dates is " . $hour = abs($timestamp2 - $timestamp1)/(60*60) . " hour(s)";

        */

        if(mysqli_num_rows($rezultat) == 1){
            $row = mysqli_fetch_array($rezultat);

            $dt = new DateTime($row[2]);
            $datum_registracije = $dt->format('m/d/Y H:i:s');

            $timestamp1 = strtotime($datum_registracije);
            $timestamp2 = strtotime(date('m/d/Y H:i:s',time()));

            $razlika_sati = abs($timestamp2 - $timestamp1)/(60*60);

            if($razlika_sati < 1){
                //validate the email
                $upit = "UPDATE korisnik SET potvrden = 1 WHERE aktivacijski_kod = '{$aktivacijski_kod}' LIMIT 1";

                $update = $veza->selectDB($upit);

                if($update){//mysqli_affected_rows($update) == 1
                    $poruka = "Racun je verificiran. Sada se mozete <a href='/obrasci/prijava.php'>logirati</a> !";
                }
                else{
                    $poruka = "Greska kod aktiviranja racuna!";
                }
            }
            else{
                $poruka = "Aktivacijski kod je istekao! Morate se ponovno registrirati u sustav!";

                $upit = "DELETE FROM korisnik WHERE aktivacijski_kod = '{$aktivacijski_kod}'";

                $delete = $veza->selectDB($upit);
            }
        }
        else{
            $poruka = "Ovaj racun je vec verificiran ili je kod neispravan!";
        }

        $veza->zatvoriDB();
    }

    $smarty->assign("title", $title);
    $smarty->assign("poruka", $poruka);

    $smarty->display("head.tpl");
    $smarty->display("validacija.tpl");
?>