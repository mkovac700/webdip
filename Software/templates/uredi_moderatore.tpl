<div class="navbar_admin">
<a href="/admin/racuni.php">Upravljanje računima</a>
<a href="" style="color: red">Konfiguracija sustava</a>
<a href="/admin/dnevnik.php">Dnevnik aktivnosti</a>
<a href="/admin/moderatori.php">Upravljanje moderatorima</a>
<a href="/admin/gorivo.php">Upravljanje vrstama goriva</a>
<a href="/admin/lokacije.php">Upravljanje lokacijama</a>
</div>

<main class="admin-main">


<div style="text-align: center;">
    <form id="uredi" class="lokacije" method="POST" action="uredi_moderatore.php"> 
        <input type="hidden" id="id" name="id" value="{$id}">

        <label for="id_korisnik">Korisnik: </label>
        <select name="id_korisnik" id="id_korisnik">
        {while $redak = mysqli_fetch_array($korisnici, MYSQLI_NUM)}
            <option value="{$redak[0]}" {if $id_korisnik == $redak[0]}selected{/if}>{$redak[1]}</option>
        {/while}
        </select>

        <label for="id_benzinska_postaja">Benzinska postaja: </label>
        <select name="id_benzinska_postaja" id="id_benzinska_postaja">
        {while $redak = mysqli_fetch_array($benzinske_postaje, MYSQLI_NUM)}
            <option value="{$redak[0]}" {if $id_benzinska_postaja== $redak[0]}selected{/if}>{$redak[1]}</option>
        {/while}
        </select>

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    {$greska}
</div>

</main>