<?php
/* Smarty version 4.0.0, created on 2022-06-23 02:00:58
  from '/var/www/html/templates/racuni.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b3ad3a224a21_33093232',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7b7bb31ba838ab86de4ddf683ab2c8e8012341c8' => 
    array (
      0 => '/var/www/html/templates/racuni.tpl',
      1 => 1655942453,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b3ad3a224a21_33093232 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/racuni.js"><?php echo '</script'; ?>
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
    <form id="opcije" class="racuni" method="POST" action="racuni.php"> 
        
        <div class="racuni_radiobuttons">
            <label>Odaberi prikaz: </label>
            <input type="radio" id="svi" name="svi" value="svi">
            <label for="svi">Sve</label>
            <input type="radio" id="blokirani" name="blokirani" value="blokirani">
            <label for="blokirani">Samo blokirani </label>

            <input type="submit" id="btn" name="btn" value="Potvrdi">
        </div>
    </form>

    <br>

    <table border = 1 cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th>
    <th>ID</th> 
    <th>Tip</th>
    <th>Korisnicko ime</th>
    <th>Blokiran</th>
    <th>Opcija</th>
    </tr>
    <?php $_smarty_tpl->_assignInScope('i', 1);?>
    <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['rezultat']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable1);?>
        <tr id = <?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
>
        <td><?php echo $_smarty_tpl->tpl_vars['i']->value++;?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[2];?>
</td>
        <td>
        <?php if ($_smarty_tpl->tpl_vars['redak']->value[3]) {?>
            Da
            <?php } else { ?>
                Ne
        <?php }?>
        </td>
        <td> <button type="button" name="button" onclick="updatedata(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
,<?php echo $_smarty_tpl->tpl_vars['redak']->value[3];?>
)">Blokiraj/odblokiraj</button> </td>
        </tr>
    <?php }?>

    
    </table>
</div>

</main><?php }
}
