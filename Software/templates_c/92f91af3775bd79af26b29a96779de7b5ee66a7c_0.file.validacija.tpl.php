<?php
/* Smarty version 4.0.0, created on 2022-06-18 20:03:19
  from '/var/www/html/templates/validacija.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62ae1367a46226_26126150',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '92f91af3775bd79af26b29a96779de7b5ee66a7c' => 
    array (
      0 => '/var/www/html/templates/validacija.tpl',
      1 => 1655158865,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62ae1367a46226_26126150 (Smarty_Internal_Template $_smarty_tpl) {
?>
<body style="background-color: white">
    <main>
        <form id="validacija" class="validacija" method="POST" action="aktivacija.php" style="text-align: center; padding-top:15em">
            <p>Molimo Vas da u nastavku unesete aktivacijski kod koji smo vam poslali na email adresu.</p>
            <p>Napomena: Aktivacijski kod vrijedi 1 sat. </p>
            <label for="aktivacijski_kod">Aktivacijski kod: </label>
            <input type="text" id="aktivacijski_kod" name="aktivacijski_kod"><br>
        </form>
        <form id="redirekcija" class="redirekcija" method="POST" action="/index.php">
        </form>
        <br><br>
        <div>
            <button name="gumb" type="submit" class="gumb" form="validacija">
                Potvrdi
            </button>
            <br>
            <button name="gumb" type="submit" class="gumb" form="redirekcija"> 
                Početna stranica 
            </button>
            
        </div>
        <br>
        <div id="poruka" style="text-align: center">
            <?php echo $_smarty_tpl->tpl_vars['poruka']->value;?>

        </div>
       
    </main>
</body>
</html><?php }
}
