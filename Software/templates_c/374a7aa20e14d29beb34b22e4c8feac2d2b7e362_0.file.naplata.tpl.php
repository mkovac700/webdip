<?php
/* Smarty version 4.0.0, created on 2022-06-21 18:35:29
  from '/var/www/html/templates/naplata.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b1f351949115_59715104',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '374a7aa20e14d29beb34b22e4c8feac2d2b7e362' => 
    array (
      0 => '/var/www/html/templates/naplata.tpl',
      1 => 1655829328,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b1f351949115_59715104 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/naplata.js"><?php echo '</script'; ?>
>

<div class="navbar_moderator">
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
    <div style="text-align: center;">
    <br>
    <div id="greske" style="text-align: center;">
        <?php echo $_smarty_tpl->tpl_vars['poruka']->value;?>

    </div>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Oznaka</th>
    <th>Status</th>
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
        <td> 
            <button type="button" name="button_uredi" onclick="editdata(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Naplati</button>
        </td>
        </tr>
    <?php }?>


    </table>

    </div>
</div>

</main><?php }
}
