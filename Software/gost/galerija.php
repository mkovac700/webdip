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

    
    $upit = "INSERT INTO dnevnik (id_korisnik, id_tip_radnje, vrijeme, zapis) VALUES ('{$id_korisnik}',3,'{$vrijeme}','Pristup stranici Moje benzinske postaje ({$_SESSION["korisnik"]})')";

    $baza->selectDB($upit);
    

    if(isset($_GET['id'])){
        $id_bp = $_GET['id'];
    }

    $title = "{$naslov} - Moje benzinske postaje";

    $poruka = ""; 

    $upit = "SELECT DISTINCT bp.id_benzinska_postaja, bp.oznaka, bp.adresa 
             FROM benzinska_postaja bp 
             INNER JOIN evidencija_tocenja et
             ON bp.id_benzinska_postaja = et.id_benzinska_postaja";

    $benzinske_postaje = $baza->selectDB($upit); 

    if(isset($_POST['btn'])){
        switch ($_POST['sort']) {
            case 'zadano':
                if($_POST['filter']){
                    $upit = "SELECT DISTINCT v.id_vozilo, v.marka, v.model, v.prijedeni_km, v.slika 
                             FROM vozilo v
                             INNER JOIN evidencija_tocenja et
                             ON et.id_vozilo = v.id_vozilo
                             WHERE et.id_benzinska_postaja = '{$_POST["filter"]}'";
                }
                else{
                    $upit = "SELECT id_vozilo, marka, model, prijedeni_km, slika FROM vozilo";
                }
                
                break;

            case 'brojac':
                if($_POST['filter']){
                    $upit = "SELECT DISTINCT v.id_vozilo, v.marka, v.model, v.prijedeni_km, v.slika 
                             FROM vozilo v
                             INNER JOIN evidencija_tocenja et
                             ON et.id_vozilo = v.id_vozilo
                             WHERE et.id_benzinska_postaja = '{$_POST["filter"]}'
                             ORDER BY v.prijedeni_km";
                }
                else{
                    $upit = "SELECT id_vozilo, marka, model, prijedeni_km, slika FROM vozilo ORDER BY prijedeni_km";
                }

                break;

            case 'model':
                if($_POST['filter']){
                    $upit = "SELECT DISTINCT v.id_vozilo, v.marka, v.model, v.prijedeni_km, v.slika 
                             FROM vozilo v
                             INNER JOIN evidencija_tocenja et
                             ON et.id_vozilo = v.id_vozilo
                             WHERE et.id_benzinska_postaja = '{$_POST["filter"]}'
                             ORDER BY v.model";
                }
                else{
                    $upit = "SELECT id_vozilo, marka, model, prijedeni_km, slika FROM vozilo ORDER BY model";
                }

                break;
            
            default:
                $upit = "SELECT id_vozilo, marka, model, prijedeni_km, slika FROM vozilo";
                break;
        }
    }
    else{
        $upit = "SELECT id_vozilo, marka, model, prijedeni_km, slika FROM vozilo";
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
    
    $baza->zatvoriDB();

    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);
    $smarty->assign("poruka", $poruka);

    $smarty->assign("rezultat", $rezultat);
    $smarty->assign("benzinske_postaje", $benzinske_postaje);

    $smarty->display("header.tpl");
    $smarty->display("galerija.tpl");
    $smarty->display("footer_fixed.tpl");
?>