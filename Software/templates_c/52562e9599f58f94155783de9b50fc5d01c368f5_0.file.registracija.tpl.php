<?php
/* Smarty version 4.0.0, created on 2022-06-21 00:47:39
  from '/var/www/html/templates/registracija.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b0f90b4c4a19_33717993',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '52562e9599f58f94155783de9b50fc5d01c368f5' => 
    array (
      0 => '/var/www/html/templates/registracija.tpl',
      1 => 1655765249,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b0f90b4c4a19_33717993 (Smarty_Internal_Template $_smarty_tpl) {
?>    <?php echo '<script'; ?>
 type="text/javascript" src="../js/registracija.js"><?php echo '</script'; ?>
>

    <main>

        <div class="title_region">
            <h2>Registracija</h2>
        </div>
        <form id="reg" class="registracija_prijava" method="POST" action="registracija.php"> 
            <label for="ime">Ime:</label><br>
            <input type="text" id="ime" name="ime" autofocus><br>
            <div id="js_ime_greska" style="text-align: center; font-size: small;"></div>
            <label for="prezime">Prezime:</label><br>
            <input type="text" id="prezime" name="prezime"><br>
            <div id="js_prezime_greska" style="text-align: center; font-size: small;"></div>
            <label for="dob">Datum rođenja:</label><br>
            <input type="text" id="dob" name="dob"><br>
            <label for="adresa">Adresa:</label><br>
            <input type="text" id="adresa" name="adresa"><br>
            <label for="kontaktbr">Kontakt broj:</label><br>
            <input type="text" id="kontaktbr" name="kontaktbr">
            <div id="js_kontaktbr_greska" style="text-align: center; font-size: small;"></div>
            
            <label for="email">E-mail:</label><br>
            <input type="email" id="email" name="email" placeholder="netko@example.com">
            <div id="js_email_greska" style="text-align: center; font-size: small;"></div>

            <?php if ((isset($_smarty_tpl->tpl_vars['postoji']->value)) && $_smarty_tpl->tpl_vars['postoji']->value == true) {?> 
                <label for="korime" style="color: red" >Korisničko ime:</label><br> 
                <input type="text" id="korime" name="korime" maxlength="25" style="border-style: solid; border-width: 1px; border-color: red">
            <?php }?>
            <?php if ((isset($_smarty_tpl->tpl_vars['postoji']->value)) && $_smarty_tpl->tpl_vars['postoji']->value == false) {?>
                <label for="korime" style="color: green" >Korisničko ime:</label><br>
                <input type="text" id="korime" name="korime" maxlength="25" style="border-style: solid; border-width: 1px; border-color: green">
            <?php }?>
            <?php if (!(isset($_smarty_tpl->tpl_vars['postoji']->value))) {?>
                <label for="korime" style="color: black">Korisničko ime:</label><br> 
                <input type="text" id="korime" name="korime" maxlength="25">
            <?php }?>
            
            <div id="ajax_dostupno" style="text-align: center; font-size: small"></div>

            <label for="lozinka">Lozinka:</label><br>
            <input type="password" id="lozinka" name="lozinka" maxlength="50">

            <div id="js_lozinka_greska" style="text-align: center; font-size: small;"></div>

            <label for="lozinka_potvrda">Potvrda lozinke:</label><br>
            <input type="password" id="lozinka_potvrda" name="lozinka_potvrda" maxlength="50">

            <div id="js_lozinka_potvrda_greska" style="text-align: center; font-size: small;"></div>

            <br>

            <div class="g-recaptcha" data-sitekey="6LeHkVkgAAAAANKEJQj4ZoLlM-0fUkrJ08Wraigo"></div><br>

            <!--

            <label>Odaberite dozvole korištenja kolačića: </label><br>

            <div class="registracija_checkboxes">
                <input type="checkbox" id="uvjeti" name="uvjeti" value="uvjeti">
                <label for="uvjeti"> Uvjeti korištenja</label><br>
                <input type="checkbox" id="zapamti" name="zapamti" value="zapamti">
                <label for="zapamti"> Zapamti me</label><br>
                <input type="checkbox" id="popuni" name="popuni" value="popuni">
                <label for="popuni"> Popuni podatke</label><br>
                <input type="checkbox" id="redoslijed" name="redoslijed" value="redoslijed">
                <label for="redoslijed"> Redoslijed prikazivanja</label><br>
            </div>

            -->

            <div class="registracija_checkboxes">
                <input type="checkbox" id="uvjeti_koristenja" name="uvjeti_koristenja" value="uvjeti_koristenja">
                <label for="uvjeti_koristenja">Prihvaćam <a href="">uvjete korištenja</a></label><br>
            </div>
        </form>
        <div class="gumb_region">
            <button name="gumb" type="submit" class="gumb" form="reg">
                Registriraj se
            </button>
            <br>
            <div id="greske" style="text-align: center">
                <?php echo $_smarty_tpl->tpl_vars['greska']->value;?>

            </div>
        </div>

        <br><br><br>

      
        
    </main>


    <!--registracija_footer-->
<?php }
}
