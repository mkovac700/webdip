<?php
/* Smarty version 4.0.0, created on 2022-06-23 02:20:09
  from '/var/www/html/templates/dnevnik.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b3b1b9961e06_41206940',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '465c599fec64f003cb2779335daed21dee60f8e8' => 
    array (
      0 => '/var/www/html/templates/dnevnik.tpl',
      1 => 1655943608,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b3b1b9961e06_41206940 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="navbar_admin">
<a href="/admin/racuni.php">Upravljanje računima</a>
<a href="" style="color: red">Konfiguracija sustava</a>
<a href="/admin/dnevnik.php">Dnevnik aktivnosti</a>
<a href="/admin/moderatori.php">Upravljanje moderatorima</a>
<a href="/admin/gorivo.php">Upravljanje vrstama goriva</a>
<a href="/admin/lokacije.php">Upravljanje lokacijama</a>
</div>

<main class="admin-main">

<div style="text-align: center;">
    <br><br>
    <form id="opcije" class="dnevnik" method="POST" action="dnevnik.php"> 
            
    <div class="dnevnik_radiobuttons">
        <input type="checkbox" id="razdoblje" name="razdoblje" value="razdoblje">
        <label for="razdoblje">Odaberi razdoblje: </label>
        <input type="date" id="datum_od" name="datum_od">
        <label> - </label>
        <input type="date" id="datum_do" name="datum_do">
        <br><br>
        <label>Odaberi korisnika: </label>
        <input type="radio" id="svi" name="svi" value="svi">
        <label for="svi">Svi</label>
        <input type="radio" id="neregistrirani" name="neregistrirani" value="neregistrirani">
        <label for="neregistrirani">Neregistrirani</label>
        <input type="radio" id="unos" name="unos" value="unos">
        <label for="unos">Unesi ID ili korisničko ime: </label>
        <input type="text" id="korisnik" name="korisnik">
        <br><br>
        <input type="submit" id="btn" name="btn" value="Potvrdi">

        <div class="greske">
            <?php echo $_smarty_tpl->tpl_vars['greska']->value;?>

        </div>
    </div>
    </form>

    <br><br>

    <table border = 1 cellspacing = 0 cellpadding = 10>
    <tr>
    <th>ID</th> 
    <th>ID korisnik</th>
    <th>ID tip radnje</th>
    <th>Vrijeme</th>
    <th>Zapis</th>
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
        </tr>
    <?php }?>

    <?php if (mysqli_num_rows($_smarty_tpl->tpl_vars['rezultat']->value) == 0) {?>
        <tr>
        <td colspan=5>Nema podataka!</td>
        </tr>
    <?php }?>
    
    </table>
</div>

<div>
    <br><br><br><br><br>
</div>

</main><?php }
}
