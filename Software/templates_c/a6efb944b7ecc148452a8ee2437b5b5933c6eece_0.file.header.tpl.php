<?php
/* Smarty version 4.0.0, created on 2022-06-06 11:46:38
  from 'C:\Users\Marijan\OneDrive - Fakultet Organizacije i Informatike Varaždin\Kolegiji\6. semestar\Web dizajn i programiranje\Labosi\LV5 - PHP i mjerenje opterecenja sustava\zadaca4\predano\templates\header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_629de91e3ba635_65790915',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a6efb944b7ecc148452a8ee2437b5b5933c6eece' => 
    array (
      0 => 'C:\\Users\\Marijan\\OneDrive - Fakultet Organizacije i Informatike Varaždin\\Kolegiji\\6. semestar\\Web dizajn i programiranje\\Labosi\\LV5 - PHP i mjerenje opterecenja sustava\\zadaca4\\predano\\templates\\header.tpl',
      1 => 1654034461,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_629de91e3ba635_65790915 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="author" content="Marijan Kovač">
    <meta name="description" content="Zadaća 01 - 27.3.2022.">

    <link rel="stylesheet" type="text/css" href="../css/mkovac.css"/>
    
    <title><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
</head>

<body id="tijelo">
    <header id="zaglavlje">
        <div style="display: flex;">
            <div style="display: flex;">
                <a class="hamburger" href="#zaglavlje">
                    <img class="hamburger_icon" src="../materijali/hamburger.jpg" alt="Hamburger icon" width="80" height="80">
                </a>
            </div>

            <div style="display: flex; margin: auto;">
                <a class="zaglavlje_logo" href="../index.php">
                    <img src="../materijali/pacman.png" alt="Gametracer logo" width="50" height="50">            
                </a>
                    
                <a class="naslov" href="#tijelo">
                    <h1><?php echo $_smarty_tpl->tpl_vars['naslov']->value;?>
</h1>
                </a>
            </div>

            <div style="visibility: hidden;">
                <a class="hamburger" href="#zaglavlje">
                    <img class="hamburger_icon" src="../materijali/hamburger.jpg" alt="Hamburger icon" width="80" height="80">
                </a>
            </div>
        </div>
    </header>

    <nav class="navigacija">
        <ul>
            <!-- 1=nereg 2=reg 3=mod 4=admin -->

            <?php if ((isset($_SESSION['uloga'])) && $_SESSION['uloga'] == 1) {?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/index.php">Početna stranica</a></li>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/obrasci/registracija.php">Registracija</a></li>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/obrasci/prijava.php">Prijava</a></li>
            <?php }?>

            <?php if ((isset($_SESSION['uloga'])) && $_SESSION['uloga'] != 1) {?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/index.php">Početna stranica</a></li>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/obrasci/registracija.php">Registracija</a></li>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/odjava.php">Odjava</a></li>
            <?php }?>

            <?php if ((isset($_SESSION['uloga'])) && $_SESSION['uloga'] > 1) {?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/popis.php">Popis recenzija - registrirani</a></li>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/obrazac.php">Unos recenzije</a></li>
            <?php }?>

            <?php if ((isset($_SESSION['uloga'])) && $_SESSION['uloga'] > 2) {?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/multimedija.php">Multimedija</a></li>
            <?php }?>

            <?php if ((isset($_SESSION['uloga'])) && $_SESSION['uloga'] > 3) {?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/popis.php">Popis recenzija - admin</a></li>
            <?php }?>


            <!--
            <li><a class="poveznica" href="prijava.html">Prijava</a></li>
            <li><a class="poveznica" style="color: rgba(243,156,18,255)" href="registracija.html">Registracija</a></li>
            <li><a class="poveznica" href="obrazac.html">Unos recenzije</a></li>
            <li><a class="poveznica" href="../popis.html">Popis recenzija</a></li>
            <li><a class="poveznica" href="../multimedija.html">Multimedija</a></li>
            <li><a class="poveznica" href="">---------------------</a></li>
            <li><a class="poveznica" href="../era.html">ERA dijagram</a></li>
            <li><a class="poveznica" href="../navigacijski.html">Navigacijski dijagram</a></li>
            -->
        </ul>
    </nav><?php }
}
