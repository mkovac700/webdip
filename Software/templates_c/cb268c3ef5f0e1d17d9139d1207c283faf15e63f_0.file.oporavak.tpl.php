<?php
/* Smarty version 4.0.0, created on 2022-06-12 23:01:45
  from '/var/www/html/templates/oporavak.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62a6543949eca3_14977819',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cb268c3ef5f0e1d17d9139d1207c283faf15e63f' => 
    array (
      0 => '/var/www/html/templates/oporavak.tpl',
      1 => 1655067702,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62a6543949eca3_14977819 (Smarty_Internal_Template $_smarty_tpl) {
?><body style="background-color: white">
    <main>
        <form id="oporavak" class="oporavak" method="POST" action="oporavak.php" style="text-align: center; padding-top:15em">
            <p>Molimo Vas da u nastavku unesete email adresu s kojom ste se registrirali u sustav.</p>
            <p>Napomena: Na navedeni email ćemo poslati novu lozinku s kojom ćete se moći prijaviti u sustav.</p>
            <label for="email">Email: </label>
            <input type="text" id="email" name="email"><br>
        </form>
        <form id="redirekcija" class="redirekcija" method="POST" action="/index.php">
        </form>
        <br><br>
        <div>
            <button name="gumb" type="submit" class="gumb" form="oporavak">
                Pošalji
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
