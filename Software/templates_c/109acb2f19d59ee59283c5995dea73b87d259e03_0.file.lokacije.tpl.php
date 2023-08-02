<?php
/* Smarty version 4.0.0, created on 2022-06-21 00:51:45
  from '/var/www/html/templates/lokacije.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b0fa01d2d755_26269431',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '109acb2f19d59ee59283c5995dea73b87d259e03' => 
    array (
      0 => '/var/www/html/templates/lokacije.tpl',
      1 => 1655765473,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b0fa01d2d755_26269431 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/lokacije.js"><?php echo '</script'; ?>
>

<div class="navbar_admin">
<a href="/admin/racuni.php">Upravljanje računima</a>
<a href="" style="color: red">Konfiguracija sustava</a>
<a href="/admin/dnevnik.php">Dnevnik aktivnosti</a>
<a href="/admin/moderatori.php">Upravljanje moderatorima</a>
<a href="/admin/gorivo.php">Upravljanje vrstama goriva</a>
<a href="/admin/lokacije.php">Upravljanje lokacijama</a>
</div>

<main class="admin-main">


<div style="text-align: center;">
    <div>
        <button type="button" name="button_dodaj" onclick="adddata()">Dodaj</button>
    </div>
    <br>

    <table border = 1 cellspacing = 0 cellpadding = 10>
    <tr>
    <th>ID</th> 
    <th>Naziv</th>
    <th>Oznaka</th>
    <th>Uredi</th>
    <th>Obriši</th>
    </tr>
    <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['rezultat']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable1);?>
        <tr id = <?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[2];?>
</td>
        <td> <button type="button" name="button_uredi" onclick="updatedata(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Uredi</button></td>
        <td> <button type="button" name="button_obrisi" onclick="deletedata(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Obriši</button> </td>
        </tr>
    <?php }?>

    
    </table>
    
</div>

</main><?php }
}
