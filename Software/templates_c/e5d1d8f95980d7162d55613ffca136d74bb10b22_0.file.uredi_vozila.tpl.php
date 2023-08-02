<?php
/* Smarty version 4.0.0, created on 2022-06-22 02:08:34
  from '/var/www/html/templates/uredi_vozila.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b25d82ea02f0_68356870',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e5d1d8f95980d7162d55613ffca136d74bb10b22' => 
    array (
      0 => '/var/www/html/templates/uredi_vozila.tpl',
      1 => 1655856509,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b25d82ea02f0_68356870 (Smarty_Internal_Template $_smarty_tpl) {
?>
<main class="admin-main">


<div style="text-align: center;">
    <form id="uredi_vozila" class="uredi_vozila" method="POST" action="uredi_vozila.php?id=<?php echo $_smarty_tpl->tpl_vars['id_vozilo']->value;?>
" enctype="multipart/form-data"> 
        <input type="hidden" id="id_vozilo" name="id_vozilo" value="<?php echo $_smarty_tpl->tpl_vars['id_vozilo']->value;?>
"> <!--hidden jer ga realno ne smije mijenjat-->
        
        <label for="registracija">Registracijska oznaka: </label>
        <input type="text" id="registracija" name="registracija" value="<?php echo $_smarty_tpl->tpl_vars['registracija']->value;?>
">
        <label for="marka">Marka: </label>
        <input type="text" id="marka" name="marka" value="<?php echo $_smarty_tpl->tpl_vars['marka']->value;?>
">
        <label for="model">Model: </label>
        <input type="text" id="model" name="model" value="<?php echo $_smarty_tpl->tpl_vars['model']->value;?>
">
        <label for="prijedeni_km">Prijeđeni kilometri: </label>
        <input type="text" id="prijedeni_km" name="prijedeni_km" value="<?php echo $_smarty_tpl->tpl_vars['prijedeni_km']->value;?>
">
        <br><br>
        <label>Odaberi način prijenosa fotografije (opcionalno): </label><br><br>
        <input type="radio" id="racunalo" name="racunalo" value="racunalo">

        <label for="slika_rac">Datoteka: </label>
        <input type="file" id="slika_rac" name="slika_rac" accept="image/png, image/jpeg">

        <br><br>

        <input type="radio" id="net" name="net" value="net">

        <label for="slika_net">Poveznica: </label>
        <input type="text" id="slika_net" name="slika_net">

        <br><br>
        
        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    <?php echo $_smarty_tpl->tpl_vars['greska']->value;?>

</div>

</main><?php }
}
