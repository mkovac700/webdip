<?php
    include "../sesija.class.php";

    Sesija::kreirajSesiju();
    Sesija::obrisiSesiju();
    
    header("Location: /index.php")
?>