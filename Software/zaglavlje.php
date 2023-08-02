<?php
    //$putanja = dirname(getcwd()); //isto sto i __FILE__
    require "$putanja/vanjske_biblioteke/smarty-4.0.0/libs/Smarty.class.php";
    require "$putanja/baza.class.php";
    require "$putanja/sesija.class.php";

    $smarty = new Smarty();

    $smarty->setConfigDir("$putanja/configs");
    $smarty->setTemplateDir("$putanja/templates");
    $smarty->setCompileDir("$putanja/templates_c");

    //ako nije postavljena neka druga sesija, tj. ako nitko nije logiran, kreiraj gosta (neregistrirani)
    /*if(!isset($_SESSION["prijava_sesija"])){
        if($_SESSION["uloga"] != 1)
        echo "Kreirana gostna sesija!<br>";
        Sesija::kreirajKorisnika("gost",1);
    }
    else echo "Sesija vec postoji!<br>";*/

    Sesija::kreirajSesiju();

    if($_SESSION["uloga"] != ""){
        //echo "Sesija vec postoji! Uloga: {$_SESSION['uloga']}<br>";
    }
    else{
        Sesija::kreirajKorisnika("gost",1);
        //echo "Kreirana gostna sesija!<br>";
    }

    $smarty->assign("putanja",$putanja);
    $smarty->assign("putanjaMeni",$putanjaMeni);

    $naslov = "Cronaft derivati";

?>