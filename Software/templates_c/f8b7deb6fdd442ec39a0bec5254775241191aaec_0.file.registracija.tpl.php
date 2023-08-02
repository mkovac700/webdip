<?php
/* Smarty version 4.0.0, created on 2022-06-06 11:46:38
  from 'C:\Users\Marijan\OneDrive - Fakultet Organizacije i Informatike Varaždin\Kolegiji\6. semestar\Web dizajn i programiranje\Labosi\LV5 - PHP i mjerenje opterecenja sustava\zadaca4\predano\templates\registracija.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_629de91e5273f0_28788085',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f8b7deb6fdd442ec39a0bec5254775241191aaec' => 
    array (
      0 => 'C:\\Users\\Marijan\\OneDrive - Fakultet Organizacije i Informatike Varaždin\\Kolegiji\\6. semestar\\Web dizajn i programiranje\\Labosi\\LV5 - PHP i mjerenje opterecenja sustava\\zadaca4\\predano\\templates\\registracija.tpl',
      1 => 1654034461,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_629de91e5273f0_28788085 (Smarty_Internal_Template $_smarty_tpl) {
?>
    <main>
        <div class="title_region">
            <h2>Registracija</h2>
        </div>
        <form id="reg" class="registracija_prijava" method="GET" action="registracija.php"> <!--https://barka.foi.hr/WebDiP/2021/materijali/zadace/ispis_forme.php -->
            <label for="imeprezime">Ime i prezime:</label><br>
            <input type="text" id="imeprezime" name="imeprezime" autofocus><br>
            <label for="godina">Godina rođenja:</label><br>
            <input type="text" id="godina" name="godina"><br>
            <label for="email">E-mail:</label><br>
            <input type="email" id="email" name="email" placeholder="ldap@foi.hr"><br>

            <?php if ((isset($_smarty_tpl->tpl_vars['postoji']->value)) && $_smarty_tpl->tpl_vars['postoji']->value == true) {?> 
                <label for="korime" style="color: red" >Korisničko ime:</label><br> 
                <input type="text" id="korime" name="korime" maxlength="25" style="border-style: solid; border-width: 1px; border-color: red"><br>
            <?php }?>
            <?php if ((isset($_smarty_tpl->tpl_vars['postoji']->value)) && $_smarty_tpl->tpl_vars['postoji']->value == false) {?>
                <label for="korime" style="color: green" >Korisničko ime:</label><br>
                <input type="text" id="korime" name="korime" maxlength="25" style="border-style: solid; border-width: 1px; border-color: green"><br>
            <?php }?>
            <?php if (!(isset($_smarty_tpl->tpl_vars['postoji']->value))) {?>
                <label for="korime" style="color: black">Korisničko ime:</label><br> 
                <input type="text" id="korime" name="korime" maxlength="25"><br>
            <?php }?>
            <label for="lozinka">Lozinka:</label><br>
            <input type="password" id="lozinka" name="lozinka" maxlength="50"><br>
            <label for="lozinka_potvrda">Potvrda lozinke:</label><br>
            <input type="password" id="lozinka_potvrda" name="lozinka_potvrda" maxlength="50"><br><br>

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
