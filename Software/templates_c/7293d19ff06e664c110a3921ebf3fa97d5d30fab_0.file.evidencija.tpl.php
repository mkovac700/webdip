<?php
/* Smarty version 4.0.0, created on 2022-06-22 17:55:04
  from '/var/www/html/templates/evidencija.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b33b5827d8c6_88213632',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7293d19ff06e664c110a3921ebf3fa97d5d30fab' => 
    array (
      0 => '/var/www/html/templates/evidencija.tpl',
      1 => 1655912001,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b33b5827d8c6_88213632 (Smarty_Internal_Template $_smarty_tpl) {
?>
<main class="admin-main">


<div style="text-align: center;">
    <div style="text-align: center;">
    <br>
    <div id="greske" style="text-align: center;">
        <?php echo $_smarty_tpl->tpl_vars['poruka']->value;?>

    </div>
    <br>
    <br>

    <form id="filter" class="filter" method="POST" action="">
        <input type="hidden" id="id_mjesta" name="id_mjesta" value="<?php echo $_smarty_tpl->tpl_vars['id_mjesta']->value;?>
">

        <label for="vozilo">Odaberi vozilo: </label>
        <select name="vozilo" id="vozilo">
            <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['vozila']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('red', $_prefixVariable1);?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['red']->value[0];?>
"><?php echo $_smarty_tpl->tpl_vars['red']->value[1];?>
 <?php echo $_smarty_tpl->tpl_vars['red']->value[2];?>
</option>
            <?php }?>

        </select>
        
        <br><br>
        
        <label for="gorivo">Natočeno gorivo: </label>
        <select name="gorivo" id="gorivo">
            <?php while ($_prefixVariable2 = mysqli_fetch_array($_smarty_tpl->tpl_vars['gorivo']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('red', $_prefixVariable2);?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['red']->value[0];?>
"><?php echo $_smarty_tpl->tpl_vars['red']->value[1];?>
 (<?php echo $_smarty_tpl->tpl_vars['red']->value[2];?>
)</option>
            <?php }?>

        </select>
        
        <br><br>

        <label for="prijedeno_km">Prijeđeno (km): </label>
        <input type="text" id="prijedeno_km" name="prijedeno_km">

        <br><br>

        <label for="gorivo_potroseno">Potrošeno goriva (L): </label>
        <input type="text" id="gorivo_potroseno" name="gorivo_potroseno">

        <br><br>

        <label for="gorivo_preuzeto">Preuzeto goriva (L): </label>
        <input type="text" id="gorivo_preuzeto" name="gorivo_preuzeto">

        <br><br>

        <input type="submit" id="btn" name="btn" value="Evidentiraj">
    </form>

    </div>
</div>

</main>
<?php }
}
