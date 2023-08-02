<main>
<div class="title_region">
    <h2>Prijava</h2>
</div>
<form id="prijava" class="registracija_prijava" method="post" action="prijava.php">
    <label for="korime">Korisničko ime:</label><br>
    <input type="text" id="korime" name="korime" value={$korime_val}><br>
    <label for="lozinka">Lozinka:</label><br>
    <input type="password" id="lozinka" name="lozinka"><br>

    <div class="prijava_checkboxes">
        <input type="checkbox" id="zapamti" name="zapamti" value="zapamti">
        <label for="zapamti">Zapamti me</label><br>
    </div>

    <br>

    <div class="prijava_link">
        <a href="/obrasci/oporavak.php">Zaboravljena lozinka</a>
    </div>
    
</form>
<div class="gumb_region">
    <button name="gumb" type="submit" class="gumb" form="prijava">
        Prijavi se
    </button>
    <br>
    <div id="greske" style="text-align: center">
        {$greska}
    </div>
</div>
<br><br><br>


</main>