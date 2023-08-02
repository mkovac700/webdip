<?php
/* Smarty version 4.0.0, created on 2022-06-22 16:37:24
  from '/var/www/html/templates/otvorena_mjesta.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b329245ad788_76053155',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd6e811446b6e67472ed3557bc6e5b2ca74933924' => 
    array (
      0 => '/var/www/html/templates/otvorena_mjesta.tpl',
      1 => 1655908641,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b329245ad788_76053155 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/otvorena_mjesta.js"><?php echo '</script'; ?>
>

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
        <label for="vgoriva">Odaberi vrstu goriva: </label>

        <select name="vgoriva" id="vgoriva">
            <option value="0">---Sve---</option>
            <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['vgoriva']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('red', $_prefixVariable1);?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['red']->value[0];?>
" <?php if ($_smarty_tpl->tpl_vars['selected']->value == $_smarty_tpl->tpl_vars['red']->value[0]) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['red']->value[1];?>
</option>
            <?php }?>

        </select>

        <input type="submit" id="btn" name="btn" value="Pretraži">
    </form>

    <br>
    
    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Oznaka mjesta</th>
    <th>Status</th>
        <th>Opcije</th>
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
                <td>
            <button type="button" name="button_open" onclick="openpage(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Evidentiraj točenje</button>
        </td>
        </tr>
    <?php }?>


    </table>
    
    <br><br>

    </div>
</div>

</main>
<?php }
}
