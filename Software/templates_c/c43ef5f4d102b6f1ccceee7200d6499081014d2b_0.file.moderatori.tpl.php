<?php
/* Smarty version 4.0.0, created on 2022-06-23 09:40:11
  from '/var/www/html/templates/moderatori.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b418db5597e0_14903854',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c43ef5f4d102b6f1ccceee7200d6499081014d2b' => 
    array (
      0 => '/var/www/html/templates/moderatori.tpl',
      1 => 1655970010,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b418db5597e0_14903854 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/moderatori.js"><?php echo '</script'; ?>
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
    <th>ID moderator</th> 
    <th>ID korisnik</th> 
    <th>Korisničko ime</th>
    <th>ID benzinska postaja</th> 
    <th>Oznaka benzinske postaje</th>
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
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[3];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[4];?>
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
