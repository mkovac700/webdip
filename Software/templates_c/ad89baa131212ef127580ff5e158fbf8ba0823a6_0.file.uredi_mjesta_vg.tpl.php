<?php
/* Smarty version 4.0.0, created on 2022-06-21 20:29:41
  from '/var/www/html/templates/uredi_mjesta_vg.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b20e15b0bf94_30254177',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ad89baa131212ef127580ff5e158fbf8ba0823a6' => 
    array (
      0 => '/var/www/html/templates/uredi_mjesta_vg.tpl',
      1 => 1655836018,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b20e15b0bf94_30254177 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript" src="../js/uredi_mjesta_vg.js"><?php echo '</script'; ?>
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

    <form id="uredi_mjesta_vg" class="uredi_mjesta_vg" method="POST" action="">
        <label for="vrsta_goriva">Odaberi vrstu goriva za <?php echo $_smarty_tpl->tpl_vars['naziv_mjesta']->value;?>
: </label>
        <select name="vrsta_goriva" id="vrsta_goriva">
        <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['vrste_goriva']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable1);?>
            <option value="<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
"><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</option>
        <?php }?>

        </select>

        <input type="submit" id="btn" name="btn" value="Dodaj">
    
    </form>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>Vrsta goriva</th>
    <th>Opcije</th>
    </tr>
    <?php while ($_prefixVariable2 = mysqli_fetch_array($_smarty_tpl->tpl_vars['rezultat']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable2);?>
        <tr id = <?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
>
        <td><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</td>
        <td> 
            <button type="button" name="button_obrisi" onclick="deletedata(<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
)">Obriši</button>
        </td>
        </tr>
    <?php }?>


    </table>

    </div>
</div>

</main>
<?php }
}
