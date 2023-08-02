<?php
/* Smarty version 4.0.0, created on 2022-06-21 02:29:00
  from '/var/www/html/templates/uredi_gorivo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b110cce99f19_19382538',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1c124bc0ca91c99d36ea96ca2e1a1870bc6dd4bb' => 
    array (
      0 => '/var/www/html/templates/uredi_gorivo.tpl',
      1 => 1655586543,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b110cce99f19_19382538 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="navbar_admin">
<a href="/admin/racuni.php">Upravljanje računima</a>
<a href="" style="color: red">Konfiguracija sustava</a>
<a href="/admin/dnevnik.php">Dnevnik aktivnosti</a>
<a href="/admin/moderatori.php">Upravljanje moderatorima</a>
<a href="/admin/gorivo.php">Upravljanje vrstama goriva</a>
<a href="/admin/lokacije.php">Upravljanje lokacijama</a>
</div>

<main class="admin-main">


<div style="text-align: center;">
    <form id="uredi" class="gorivo" method="POST" action="uredi_gorivo.php"> 
        <input type="hidden" id="id" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
">
        <label for="tip">Tip goriva: </label>
        <input type="text" id="tip" name="tip" value="<?php echo $_smarty_tpl->tpl_vars['tip']->value;?>
">
        <label for="naziv">Naziv goriva: </label>
        <input type="text" id="naziv" name="naziv" value="<?php echo $_smarty_tpl->tpl_vars['naziv']->value;?>
">

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    <?php echo $_smarty_tpl->tpl_vars['greska']->value;?>

</div>

</main>

<?php }
}
