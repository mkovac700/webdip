<?php
/* Smarty version 4.0.0, created on 2022-06-23 01:46:08
  from '/var/www/html/templates/galerija.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b3a9c04353a9_72608468',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '09d4d787d31566d8d8fd0f58c6057a90345ef188' => 
    array (
      0 => '/var/www/html/templates/galerija.tpl',
      1 => 1655941566,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b3a9c04353a9_72608468 (Smarty_Internal_Template $_smarty_tpl) {
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

        <label for="sort">Sortiranje: </label>
        <select name="sort" id="sort">
            <option value="zadano">Zadano</option>
            <option value="brojac">Prijeđeni kilometri</option>
            <option value="model">Model</option>
        </select>
        
        <label for="filter">Filtriranje: </label>
        <select name="filter" id="filter">
                <option value="0">Zadano</option>
            <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['benzinske_postaje']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('red', $_prefixVariable1);?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['red']->value[0];?>
"><?php echo $_smarty_tpl->tpl_vars['red']->value[1];?>
 (<?php echo $_smarty_tpl->tpl_vars['red']->value[2];?>
)</option>
            <?php }?>

        </select>

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    </form>

    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Marka</th>
    <th>Model</th>
    <th>Prijeđeni kilometri</th>
    <th>Fotografija</th>
    </tr>
    <?php $_smarty_tpl->_assignInScope('i', 1);?>
    <?php while ($_prefixVariable2 = mysqli_fetch_array($_smarty_tpl->tpl_vars['rezultat']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable2);?>
        <tr id = <?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
>
        <td><?php echo $_smarty_tpl->tpl_vars['i']->value++;?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[2];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[3];?>
</td>
        <td><img src="<?php echo $_smarty_tpl->tpl_vars['redak']->value[4];?>
" width="40%" height="40%" alt="<?php echo $_smarty_tpl->tpl_vars['redak']->value[4];?>
"></td>
        </tr>
    <?php }?>


    </table>

    <br><br><br><br><br><br>

    </div>
</div>

</main>
<?php }
}
