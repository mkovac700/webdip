    <script type="text/javascript" src="../js/registracija.js"></script>

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

            {if isset($postoji) && $postoji == true} 
                <label for="korime" style="color: red" >Korisničko ime:</label><br> 
                <input type="text" id="korime" name="korime" maxlength="25" style="border-style: solid; border-width: 1px; border-color: red">
            {/if}
            {if isset($postoji) && $postoji == false}
                <label for="korime" style="color: green" >Korisničko ime:</label><br>
                <input type="text" id="korime" name="korime" maxlength="25" style="border-style: solid; border-width: 1px; border-color: green">
            {/if}
            {if !isset($postoji)}
                <label for="korime" style="color: black">Korisničko ime:</label><br> 
                <input type="text" id="korime" name="korime" maxlength="25">
            {/if}
            
            <div id="ajax_dostupno" style="text-align: center; font-size: small"></div>

            <label for="lozinka">Lozinka:</label><br>
            <input type="password" id="lozinka" name="lozinka" maxlength="50">

            <div id="js_lozinka_greska" style="text-align: center; font-size: small;"></div>

            <label for="lozinka_potvrda">Potvrda lozinke:</label><br>
            <input type="password" id="lozinka_potvrda" name="lozinka_potvrda" maxlength="50">

            <div id="js_lozinka_potvrda_greska" style="text-align: center; font-size: small;"></div>

            <br>

            <div class="g-recaptcha" data-sitekey="6LeHkVkgAAAAANKEJQj4ZoLlM-0fUkrJ08Wraigo"></div><br>

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
                {$greska}
            </div>
        </div>

        <br><br><br>

      
        
    </main>


    <!--registracija_footer-->
