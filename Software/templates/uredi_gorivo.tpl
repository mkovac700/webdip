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
    <form id="uredi" class="gorivo" method="POST" action="uredi_gorivo.php"> 
        <input type="hidden" id="id" name="id" value="{$id}">
        <label for="tip">Tip goriva: </label>
        <input type="text" id="tip" name="tip" value="{$tip}">
        <label for="naziv">Naziv goriva: </label>
        <input type="text" id="naziv" name="naziv" value="{$naziv}">

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    {$greska}
</div>

</main>

