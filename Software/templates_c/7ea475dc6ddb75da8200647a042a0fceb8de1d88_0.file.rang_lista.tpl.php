<?php
/* Smarty version 4.0.0, created on 2022-06-22 22:40:20
  from '/var/www/html/templates/rang_lista.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b37e34b22296_92396483',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7ea475dc6ddb75da8200647a042a0fceb8de1d88' => 
    array (
      0 => '/var/www/html/templates/rang_lista.tpl',
      1 => 1655930418,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b37e34b22296_92396483 (Smarty_Internal_Template $_smarty_tpl) {
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
    <th>Oznaka</th>
    <th>Adresa</th>
    <th>Ukupno natočeno</th>
    <th>Opcije</th>
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
        <td> 
            <button type="button" name="button_open" onclick="openpage(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Informacije o cijenama goriva</button>
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
