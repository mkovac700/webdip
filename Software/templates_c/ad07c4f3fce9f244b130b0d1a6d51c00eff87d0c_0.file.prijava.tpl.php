<?php
/* Smarty version 4.0.0, created on 2022-06-17 23:03:37
  from '/var/www/html/templates/prijava.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62acec29e04642_43321406',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ad07c4f3fce9f244b130b0d1a6d51c00eff87d0c' => 
    array (
      0 => '/var/www/html/templates/prijava.tpl',
      1 => 1655499803,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62acec29e04642_43321406 (Smarty_Internal_Template $_smarty_tpl) {
?><main>
<div class="title_region">
    <h2>Prijava</h2>
</div>
<form id="prijava" class="registracija_prijava" method="post" action="prijava.php">
    <label for="korime">Korisničko ime:</label><br>
    <input type="text" id="korime" name="korime" value=<?php echo $_smarty_tpl->tpl_vars['korime_val']->value;?>
><br>
    <label for="lozinka">Lozinka:</label><br>
    <input type="password" id="lozinka" name="lozinka"><br>

    <div class="prijava_checkboxes">
        <input type="checkbox" id="zapamti" name="zapamti" value="zapamti">
        <label for="zapamti">Zapamti me</label><br>
    </div>

    <br>

    <div class="prijava_link">
        <a href="/obrasci/oporavak.php">Zaboravljena lozinka</a>
    </div>
    
</form>
<div class="gumb_region">
    <button name="gumb" type="submit" class="gumb" form="prijava">
        Prijavi se
    </button>
    <br>
    <div id="greske" style="text-align: center">
        <?php echo $_smarty_tpl->tpl_vars['greska']->value;?>

    </div>
</div>
<br><br><br>


</main><?php }
}
