<?php
/* Smarty version 4.0.0, created on 2022-06-21 02:28:59
  from '/var/www/html/templates/gorivo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b110cb81b343_67813931',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '62d2e4c2b49def3bebc16b162e34311a029cf7e2' => 
    array (
      0 => '/var/www/html/templates/gorivo.tpl',
      1 => 1655586543,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b110cb81b343_67813931 (Smarty_Internal_Template $_smarty_tpl) {
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
    <div>
        <button type="button" name="button_dodaj" onclick="adddata()">Dodaj</button>
    </div>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>ID</th> 
    <th>Tip</th>
    <th>Naziv</th>
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

</main>


    <?php echo '<script'; ?>
 src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
 type="text/javascript">
    // Function
    function updatedata(id){
        //location.href = -- moze se koristiti back
        //location.replace() -- ne moze se koristiti back
        location.href = '/admin/uredi_gorivo.php?id='+id;
    }

    function deletedata(id){
        $(document).ready(function(){
          $.ajax({
            // Action
            url: '/skripte/brisanje_gorivo.php', //'/skripte/brisanje.php'
            // Method
            type: 'POST',
            data: {
              // Get value
              id: id,
              action: "delete"
            },
            success:function(response){
              // Response is the output of action file
              if(response == 1){
                alert("Zapis obrisan!");
                document.getElementById(id).style.display = "none";
              }
              else if(response == 0){
                alert("Greška u brisanju zapisa!");
              }
            },
            error: function(ts) { alert(ts.responseText) }
          });
        });
    }

    function adddata(){
        location.href = '/admin/uredi_gorivo.php?id=';
    }
    <?php echo '</script'; ?>
>
<?php }
}
