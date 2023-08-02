<?php
/* Smarty version 4.0.0, created on 2022-06-22 23:55:19
  from '/var/www/html/templates/cijene_goriva.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b38fc7d68525_12177301',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1e6e8be58083daf7cd110101fa1c0fbd6d1365ca' => 
    array (
      0 => '/var/www/html/templates/cijene_goriva.tpl',
      1 => 1655934917,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b38fc7d68525_12177301 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/rang_lista.js"><?php echo '</script'; ?>
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

    <br>
    
    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Tip</th>
    <th>Naziv</th>
    <th>Cijena</th>
    <th>Datum od</th>
    <th>Datum do</th>
    <th>Aktualno</th>
    </tr>
    <?php $_smarty_tpl->_assignInScope('i', 1);?>
    <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['rezultat']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable1);?> 
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
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[4];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[5];?>
</td>
        <td>
            <?php if (empty($_smarty_tpl->tpl_vars['redak']->value[5])) {?>
                Da
                <?php } else { ?>
                    Ne
            <?php }?>
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
