
<main class="admin-main">


<div style="text-align: center;">
    <form id="uredi_vozila" class="uredi_vozila" method="POST" action="uredi_vozila.php?id={$id_vozilo}" enctype="multipart/form-data"> 
        <input type="hidden" id="id_vozilo" name="id_vozilo" value="{$id_vozilo}"> <!--hidden jer ga realno ne smije mijenjat-->
        
        <label for="registracija">Registracijska oznaka: </label>
        <input type="text" id="registracija" name="registracija" value="{$registracija}">
        <label for="marka">Marka: </label>
        <input type="text" id="marka" name="marka" value="{$marka}">
        <label for="model">Model: </label>
        <input type="text" id="model" name="model" value="{$model}">
        <label for="prijedeni_km">Prijeđeni kilometri: </label>
        <input type="text" id="prijedeni_km" name="prijedeni_km" value="{$prijedeni_km}">
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
    {$greska}
</div>

</main>