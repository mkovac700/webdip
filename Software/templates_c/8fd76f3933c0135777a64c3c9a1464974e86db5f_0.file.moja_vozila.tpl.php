<?php
/* Smarty version 4.0.0, created on 2022-06-22 18:04:41
  from '/var/www/html/templates/moja_vozila.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b33d9944d2f5_47911091',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8fd76f3933c0135777a64c3c9a1464974e86db5f' => 
    array (
      0 => '/var/www/html/templates/moja_vozila.tpl',
      1 => 1655913879,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b33d9944d2f5_47911091 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/moja_vozila.js"><?php echo '</script'; ?>
>

<main class="admin-main">


<div style="text-align: center;">
    <div style="text-align: center;">
    <br>
    <div id="greske" style="text-align: center;">
        <?php echo $_smarty_tpl->tpl_vars['poruka']->value;?>

    </div>
    <br>

    <div>
        <button type="button" name="button_dodaj" onclick="adddata()">Dodaj</button>
    </div>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Registracijska oznaka</th>
    <th>Marka</th>
    <th>Model</th>
    <th>Prijeđeni kilometri</th>
    <th>Fotografija</th>
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
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[4];?>
</td>
        <td><img src="<?php echo $_smarty_tpl->tpl_vars['redak']->value[5];?>
" width="40%" height="40%" alt="<?php echo $_smarty_tpl->tpl_vars['redak']->value[5];?>
"></td>
        <td> 
            <button type="button" name="button_uredi" onclick="updatedata(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Ažuriraj</button>
            <button type="button" name="button_obrisi" onclick="deletedata(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Obriši</button>
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
