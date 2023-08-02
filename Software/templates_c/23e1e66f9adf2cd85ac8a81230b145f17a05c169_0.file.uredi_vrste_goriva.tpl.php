<?php
/* Smarty version 4.0.0, created on 2022-06-21 19:08:37
  from '/var/www/html/templates/uredi_vrste_goriva.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b1fb15e23f05_65577457',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '23e1e66f9adf2cd85ac8a81230b145f17a05c169' => 
    array (
      0 => '/var/www/html/templates/uredi_vrste_goriva.tpl',
      1 => 1655831313,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b1fb15e23f05_65577457 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="navbar_moderator">
<a href="/moderator/vrste_goriva.php?id=<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
">Upravljaj vrstama goriva</a>
<a href="/moderator/mjesta.php?id=<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
">Upravljaj mjestima</a>
<a href="/moderator/popis_goriva.php?id=<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
">Popis goriva</a>
<a href="/moderator/naplata.php?id=<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
">Naplata</a>
<a href="/moderator/statistika_tocenja.php?id=<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
">Statistika točenja</a>
</div>

<main class="admin-main">


<div style="text-align: center;">
    <form id="vrste_goriva" class="vrste_goriva" method="POST" action="uredi_vrste_goriva.php?id_bp=<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
"> 
        <input type="hidden" id="id_bpvg" name="id_bpvg" value="<?php echo $_smarty_tpl->tpl_vars['id_bpvg']->value;?>
">
        <input type="hidden" id="id_bp" name="id_bp" value="<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
">
        <input type="hidden" id="id_vg" name="id_vg" value="<?php echo $_smarty_tpl->tpl_vars['id_vg']->value;?>
">

        <label for="id_vg">Vrsta goriva: </label>
        <select name="id_vg" id="id_vg">
        <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['dropdown_vals']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable1);?>
            <option value="<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
" <?php if ($_smarty_tpl->tpl_vars['id_vg']->value == $_smarty_tpl->tpl_vars['redak']->value[0]) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</option>
        <?php }?>

        </select>

        <label for="kolicina">Količina: </label>
        <input type="text" id="kolicina" name="kolicina" value="<?php echo $_smarty_tpl->tpl_vars['kolicina']->value;?>
">
        <label for="cijena">Cijena: </label>
        <input type="text" id="cijena" name="cijena" value="<?php echo $_smarty_tpl->tpl_vars['cijena']->value;?>
">

        <label for="na_raspolaganju">Na raspolaganju: </label>
        <select name="na_raspolaganju" id="na_raspolaganju">
            <option value="1" <?php if ($_smarty_tpl->tpl_vars['na_raspolaganju']->value == 1) {?>selected<?php }?>>Da</option>
            <option value="0" <?php if ($_smarty_tpl->tpl_vars['na_raspolaganju']->value == 0) {?>selected<?php }?>>Ne</option>
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
