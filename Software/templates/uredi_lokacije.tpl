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
    <form id="uredi" class="lokacije" method="POST" action="uredi_lokacije.php"> 
        <input type="hidden" id="id" name="id" value="{$id}">
        <label for="tip">Naziv lokacije: </label>
        <input type="text" id="naziv" name="naziv" value="{$naziv}">
        <label for="naziv">Oznaka: </label>
        <input type="text" id="oznaka" name="oznaka" value="{$oznaka}">

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    {$greska}
</div>

</main>