<?php
/* Smarty version 4.0.0, created on 2022-06-21 20:23:05
  from '/var/www/html/templates/uredi_mjesta.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b20c89b87599_28292921',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4d8acfe61da0454f5abb8c31b4396db79fc59249' => 
    array (
      0 => '/var/www/html/templates/uredi_mjesta.tpl',
      1 => 1655835783,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b20c89b87599_28292921 (Smarty_Internal_Template $_smarty_tpl) {
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
    <form id="vrste_goriva" class="vrste_goriva" method="POST" action="uredi_mjesta.php?id_bp=<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
"> 
        <input type="hidden" id="id_bp" name="id_bp" value="<?php echo $_smarty_tpl->tpl_vars['id_bp']->value;?>
"> <!--hidden jer ga realno ne smije mijenjat-->
        <input type="hidden" id="id_mjesto" name="id_mjesto" value="<?php echo $_smarty_tpl->tpl_vars['id_mjesto']->value;?>
">
        
        <label for="oznaka">Oznaka: </label>
        <input type="text" id="oznaka" name="oznaka" value="<?php echo $_smarty_tpl->tpl_vars['oznaka']->value;?>
">

        <label for="status_mjesto">Status mjesta: </label>
        <select name="status_mjesto" id="status_mjesto">
        <?php while ($_prefixVariable1 = mysqli_fetch_array($_smarty_tpl->tpl_vars['statusi_mjesta']->value,MYSQLI_NUM)) {
$_smarty_tpl->_assignInScope('redak', $_prefixVariable1);?>
            <option value="<?php echo $_smarty_tpl->tpl_vars['redak']->value[0];?>
" <?php if ($_smarty_tpl->tpl_vars['redak']->value[0] == $_smarty_tpl->tpl_vars['id_status_mjesto']->value) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['redak']->value[1];?>
</option>
        <?php }?>

        </select>

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    <?php echo $_smarty_tpl->tpl_vars['greska']->value;?>

</div>

</main><?php }
}
