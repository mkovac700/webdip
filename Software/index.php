<?php
    error_reporting (E_ALL ^ E_NOTICE);
    $putanja = getcwd();
    $putanjaMeni = "";
    include "zaglavlje.php";
    $title = "{$naslov} - Prijava";

    $greska = "";

    $smarty->assign("greska", $greska);
    $smarty->assign("title", $title);
    $smarty->assign("naslov", $naslov);

    $smarty->display("header.tpl");
    $smarty->display("index.tpl");
    $smarty->display("footer.tpl");
?>