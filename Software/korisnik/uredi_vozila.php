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

    if($_SESSION["uloga"] < 2){
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES (NULL,3,'{$vrijeme}','Pokusaj pristupa stranici Uredivanje vrsta goriva ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);

        header("Location: {$putanjaMeni}/obrasci/prijava.php");
    }
    else{
        $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Uredivanje vrsta goriva ({$_SESSION["korisnik"]})')";

        $baza->selectDB($upit);
    }

    $title = "{$naslov} - Dashboard";

    $greska = ""; 

    //$upit = "SELECT id_mjesto, id_benzinska_postaja, id_status_mjesto, oznaka FROM mjesto WHERE id_mjesto = '{$_GET['id_row']}'";

    $upit = "SELECT id_vozilo, registracija, marka, model, prijedeni_km, slika FROM vozilo WHERE id_vozilo = '{$_GET["id"]}'";

    $rezultat = $baza->selectDB($upit);

    $row = mysqli_fetch_array($rezultat);

    $id_vozilo = $row[0];
    $registracija = $row[1];
    $marka = $row[2];
    $model = $row[3];
    $prijedeni_km = $row[4];
    $slika = $row[5];

    if(isset($_POST['btn'])){
        if(!empty($_POST['id_vozilo'])){
            if(isset($_POST['racunalo']) && !empty($_FILES['slika_rac']['name'])){
                $file_name = $_FILES['slika_rac']['name'];
                $file_tmp_loc = $_FILES['slika_rac']['tmp_name'];
                $file_loc = "../galerija/".$file_name; //na barku umjesto .. stavit $putanja

                if(move_uploaded_file($file_tmp_loc, $file_loc)){
                    $greska .= "Uspjesno uploadanje slike<br>";
                    $slika = $file_loc;
                }
                else{
                    $greska .= "Neuspjesno uploadanje slike<br>";
                }

                //slucaj da je odabrana i slika (loc)
                $upit = "UPDATE vozilo SET registracija = '{$_POST["registracija"]}', marka = '{$_POST["marka"]}', model = '{$_POST["model"]}',
                prijedeni_km = '{$_POST["prijedeni_km"]}', slika = '{$slika}' WHERE id_vozilo = '{$_POST["id_vozilo"]}'";
            }
            else if(isset($_POST['net']) && !empty($_POST['slika_net'])){
                $slika = $_POST['slika_net'];

                //slucaj da je odabrana i slika (web)
                $upit = "UPDATE vozilo SET registracija = '{$_POST["registracija"]}', marka = '{$_POST["marka"]}', model = '{$_POST["model"]}',
                prijedeni_km = '{$_POST["prijedeni_km"]}', slika = '{$slika}' WHERE id_vozilo = '{$_POST["id_vozilo"]}'";
            }
            else{
                //slucaj da se slika ne azurira
                $upit = "UPDATE vozilo SET registracija = '{$_POST["registracija"]}', marka = '{$_POST["marka"]}', model = '{$_POST["model"]}',
                prijedeni_km = '{$_POST["prijedeni_km"]}' WHERE id_vozilo = '{$_POST["id_vozilo"]}'";
            }
            
            $rezultat = $baza->selectDB($upit);
            if(mysqli_affected_rows($veza) > 0) $greska .= "Uspjesno azuriranje vozila!<br>";
            else{
                $greska .= "Neuspjesno azuriranje vozila: ".mysqli_error($veza)."<br>";
            }
        }
        if(empty($_POST['id_vozilo'])){
            if(isset($_POST['racunalo']) && !empty($_FILES['slika_rac']['name'])){
                $file_name = $_FILES['slika_rac']['name'];
                $file_tmp_loc = $_FILES['slika_rac']['tmp_name'];
                $file_loc = "../galerija/".$file_name; //na barku umjesto .. stavit $putanja

                if(move_uploaded_file($file_tmp_loc, $file_loc)){
                    $greska .= "Uspjesno uploadanje slike<br>";
                    $slika = $file_loc;
                }
                else{
                    $greska .= "Neuspjesno uploadanje slike<br>";
                }
            }
            if(isset($_POST['net']) && !empty($_POST['slika_net'])){
                $slika = $_POST['slika_net'];
            }

            $upit = "INSERT INTO vozilo (registracija, marka, model, prijedeni_km, slika, id_korisnik)
                     VALUES ('{$_POST["registracija"]}', '{$_POST["marka"]}', '{$_POST["model"]}', '{$_POST["prijedeni_km"]}', '{$slika}', '{$id_korisnik}')";
            
            $rezultat = $baza->selectDB($upit);
            if(mysqli_affected_rows($veza) > 0) $greska .= "Uspjesno dodavanje vozila!<br>";
            else{
                $greska .= "Neuspjesno dodavanje vozila: ".mysqli_error($veza)."<br>";
            }
        }
    }

    $baza->zatvoriDB();


    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("greska", $greska);

    $smarty->assign("id_vozilo", $id_vozilo);
    $smarty->assign("registracija", $registracija);
    $smarty->assign("marka", $marka);
    $smarty->assign("model", $model);
    $smarty->assign("prijedeni_km", $prijedeni_km);
    $smarty->assign("slika", $slika);

    $smarty->display("header.tpl");
    $smarty->display("uredi_vozila.tpl");
    $smarty->display("footer_fixed.tpl");
?>