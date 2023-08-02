<div class="navbar_moderator">
<a href="/moderator/vrste_goriva.php?id={$id_bp}">Upravljaj vrstama goriva</a>
<a href="/moderator/mjesta.php?id={$id_bp}">Upravljaj mjestima</a>
<a href="/moderator/popis_goriva.php?id={$id_bp}">Popis goriva</a>
<a href="/moderator/naplata.php?id={$id_bp}">Naplata</a>
<a href="/moderator/statistika_tocenja.php?id={$id_bp}">Statistika točenja</a>
</div>

<main class="admin-main">


<div style="text-align: center;">
    <form id="vrste_goriva" class="vrste_goriva" method="POST" action="uredi_mjesta.php?id_bp={$id_bp}"> 
        <input type="hidden" id="id_bp" name="id_bp" value="{$id_bp}"> <!--hidden jer ga realno ne smije mijenjat-->
        <input type="hidden" id="id_mjesto" name="id_mjesto" value="{$id_mjesto}">
        
        <label for="oznaka">Oznaka: </label>
        <input type="text" id="oznaka" name="oznaka" value="{$oznaka}">

        <label for="status_mjesto">Status mjesta: </label>
        <select name="status_mjesto" id="status_mjesto">
        {while $redak = mysqli_fetch_array($statusi_mjesta, MYSQLI_NUM)}
            <option value="{$redak[0]}" {if $redak[0]==$id_status_mjesto}selected{/if}>{$redak[1]}</option>
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