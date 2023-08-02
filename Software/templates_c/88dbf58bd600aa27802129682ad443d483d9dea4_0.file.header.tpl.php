<?php
/* Smarty version 4.0.0, created on 2022-06-22 22:32:42
  from '/var/www/html/templates/header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b37c6a6387f9_18439846',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '88dbf58bd600aa27802129682ad443d483d9dea4' => 
    array (
      0 => '/var/www/html/templates/header.tpl',
      1 => 1655929959,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b37c6a6387f9_18439846 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="author" content="Marijan Kovač">
    <meta name="description" content="Zadaća 01 - 27.3.2022.">

    <link rel="stylesheet" type="text/css" href="../css/mkovac.css"/>

    <?php echo '<script'; ?>
 type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"><?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
 src="https://www.google.com/recaptcha/api.js" async defer><?php echo '</script'; ?>
>

    <noscript>Preglednik ne može izvršiti JavaScript!</noscript>
    
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
                    <img src="../materijali/oil.png" alt="Fuel logo" width="50" height="50">            
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
/skripte/odjava.php">Odjava - <?php echo $_SESSION['korisnik'];?>
</a></li>
            <?php }?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/gost/rang_lista.php">Rang lista</a></li>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/gost/galerija.php">Galerija</a></li>
            <?php if ((isset($_SESSION['uloga'])) && $_SESSION['uloga'] > 1) {?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/korisnik/moja_vozila.php">Moja vozila</a></li>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/korisnik/pretrazivanje.php">Benzinske postaje</a></li>
            <?php }?>

            <?php if ((isset($_SESSION['uloga'])) && $_SESSION['uloga'] > 2) {?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/moderator/moje_benzinske_postaje.php">Moje benzinske postaje</a></li>
            <?php }?>

            <?php if ((isset($_SESSION['uloga'])) && $_SESSION['uloga'] > 3) {?>
                <li><a class="poveznica" href="<?php echo $_smarty_tpl->tpl_vars['putanjaMeni']->value;?>
/admin/dashboard.php">Upravljačka ploča</a></li>
            <?php }?>
        </ul>
    </nav><?php }
}
