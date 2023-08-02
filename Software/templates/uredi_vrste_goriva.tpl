<div class="navbar_moderator">
<a href="/moderator/vrste_goriva.php?id={$id_bp}">Upravljaj vrstama goriva</a>
<a href="/moderator/mjesta.php?id={$id_bp}">Upravljaj mjestima</a>
<a href="/moderator/popis_goriva.php?id={$id_bp}">Popis goriva</a>
<a href="/moderator/naplata.php?id={$id_bp}">Naplata</a>
<a href="/moderator/statistika_tocenja.php?id={$id_bp}">Statistika točenja</a>
</div>

<main class="admin-main">


<div style="text-align: center;">
    <form id="vrste_goriva" class="vrste_goriva" method="POST" action="uredi_vrste_goriva.php?id_bp={$id_bp}"> 
        <input type="hidden" id="id_bpvg" name="id_bpvg" value="{$id_bpvg}">
        <input type="hidden" id="id_bp" name="id_bp" value="{$id_bp}">
        <input type="hidden" id="id_vg" name="id_vg" value="{$id_vg}">

        <label for="id_vg">Vrsta goriva: </label>
        <select name="id_vg" id="id_vg">
        {while $redak = mysqli_fetch_array($dropdown_vals, MYSQLI_NUM)}
            <option value="{$redak[0]}" {if $id_vg == $redak[0]}selected{/if}>{$redak[1]}</option>
        {/while}
        </select>

        <label for="kolicina">Količina: </label>
        <input type="text" id="kolicina" name="kolicina" value="{$kolicina}">
        <label for="cijena">Cijena: </label>
        <input type="text" id="cijena" name="cijena" value="{$cijena}">

        <label for="na_raspolaganju">Na raspolaganju: </label>
        <select name="na_raspolaganju" id="na_raspolaganju">
            <option value="1" {if $na_raspolaganju==1}selected{/if}>Da</option>
            <option value="0" {if $na_raspolaganju==0}selected{/if}>Ne</option>
        </select>

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    
    </form>
    
</div>
<br>
<div id="greske" style="text-align: center">
    {$greska}
</div>

</main>