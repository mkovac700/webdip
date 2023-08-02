<?php
/* Smarty version 4.0.0, created on 2022-06-21 00:51:52
  from '/var/www/html/templates/uredi_lokacije.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b0fa08e9ddf7_04335739',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1f73723e7d625c5bccbce952deeb9f1c6322c238' => 
    array (
      0 => '/var/www/html/templates/uredi_lokacije.tpl',
      1 => 1655586543,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b0fa08e9ddf7_04335739 (Smarty_Internal_Template $_smarty_tpl) {
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
    <form id="uredi" class="lokacije" method="POST" action="uredi_lokacije.php"> 
        <input type="hidden" id="id" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
">
        <label for="tip">Naziv lokacije: </label>
        <input type="text" id="naziv" name="naziv" value="<?php echo $_smarty_tpl->tpl_vars['naziv']->value;?>
">
        <label for="naziv">Oznaka: </label>
        <input type="text" id="oznaka" name="oznaka" value="<?php echo $_smarty_tpl->tpl_vars['oznaka']->value;?>
">

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    <?php echo $_smarty_tpl->tpl_vars['greska']->value;?>

</div>

</main><?php }
}
