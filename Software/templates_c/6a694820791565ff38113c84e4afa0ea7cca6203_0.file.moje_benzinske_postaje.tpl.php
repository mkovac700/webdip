<?php
/* Smarty version 4.0.0, created on 2022-06-21 02:29:17
  from '/var/www/html/templates/moje_benzinske_postaje.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b110dd4b2609_54918483',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6a694820791565ff38113c84e4afa0ea7cca6203' => 
    array (
      0 => '/var/www/html/templates/moje_benzinske_postaje.tpl',
      1 => 1655769576,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b110dd4b2609_54918483 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/moje_benzinske_postaje.js"><?php echo '</script'; ?>
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
    <div>
        <h2>Moje benzinske postaje</h2>
    </div>
    <br>
    <div id="greske" style="text-align: center;">
        <?php echo $_smarty_tpl->tpl_vars['poruka']->value;?>

    </div>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>ID benzinske postaje</th> 
    <th>ID lokacije</th>
    <th>Oznaka</th>
    <th>Adresa</th>
    <th>Kontakt broj</th>
    <th>Odaberi</th>
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
        <td> <button type="button" name="button_uredi" onclick="openpage(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Odaberi</button></td>
        </tr>
    <?php }?>


    </table>

    </div>
</div>

</main><?php }
}