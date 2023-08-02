<?php
/* Smarty version 4.0.0, created on 2022-06-23 09:57:58
  from '/var/www/html/templates/uredi_moderatore.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b41d0650d7d7_57042422',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ab9edad7e7c062f62bdb1adba84bdaebbc8e0c88' => 
    array (
      0 => '/var/www/html/templates/uredi_moderatore.tpl',
      1 => 1655971046,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b41d0650d7d7_57042422 (Smarty_Internal_Template $_smarty_tpl) {
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
    <form id="uredi" class="lokacije" method="POST" action="uredi_moderatore.php"> 
        <input type="hidden" id="id" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
">

        <label for="id_korisnik">Korisnik: </label>
        <select name="id_korisnik" id="id_korisnik">
        <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['korisnici']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable1);?>
            <option value="<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
" <?php if ($_smarty_tpl->tpl_vars['id_korisnik']->value == $_smarty_tpl->tpl_vars['redak']->value[0]) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</option>
        <?php }?>

        </select>

        <label for="id_benzinska_postaja">Benzinska postaja: </label>
        <select name="id_benzinska_postaja" id="id_benzinska_postaja">
        <?php while ($_prefixVariable2 = mysqli_fetch_array($_smarty_tpl->tpl_vars['benzinske_postaje']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable2);?>
            <option value="<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
" <?php if ($_smarty_tpl->tpl_vars['id_benzinska_postaja']->value == $_smarty_tpl->tpl_vars['redak']->value[0]) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</option>
        <?php }?>

        </select>

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    <?php echo $_smarty_tpl->tpl_vars['greska']->value;?>

</div>

</main><?php }
}
