<?php
/* Smarty version 4.0.0, created on 2022-06-21 18:27:03
  from '/var/www/html/templates/popis_goriva.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b1f157820468_47032607',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6909b4a90b5fb993d950702f2397675482f2a1a7' => 
    array (
      0 => '/var/www/html/templates/popis_goriva.tpl',
      1 => 1655828822,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b1f157820468_47032607 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="navbar_moderator">
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
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
        <th>#</th> 
        <th>Vrsta goriva</th>
        <th>Količina (L)</th>
        <th>Na raspolaganju</th>
    </tr>
    <?php $_smarty_tpl->_assignInScope('suma', 0);?>
    <?php $_smarty_tpl->_assignInScope('i', 1);?>
    <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['rezultat']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable1);?>
        <tr id = <?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
>
        <td><?php echo $_smarty_tpl->tpl_vars['i']->value++;?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</td>
        <?php if ($_smarty_tpl->tpl_vars['redak']->value[2] != 0) {?>
            <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[2];?>
</td>
            <?php } else { ?>
                <td style="color: red"><?php echo $_smarty_tpl->tpl_vars['redak']->value[2];?>
</td> 
        <?php }?>
        <td>
        <?php if ($_smarty_tpl->tpl_vars['redak']->value[3]) {?>
            Da
            <?php } else { ?>
                Ne
        <?php }?>
        </td>
        </tr>

        <?php $_smarty_tpl->_assignInScope('suma', $_smarty_tpl->tpl_vars['suma']->value+$_smarty_tpl->tpl_vars['redak']->value[2]);?>
    <?php }?>

        <tr>
            <td style="font-weight: bold">Ukupno (L): </td>
            <td colspan=3><?php echo $_smarty_tpl->tpl_vars['suma']->value;?>
</td>
        </tr>

    </table>

    </div>
</div>

</main>

<?php }
}
