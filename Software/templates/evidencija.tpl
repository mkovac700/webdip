
<main class="admin-main">


<div style="text-align: center;">
    <div style="text-align: center;">
    <br>
    <div id="greske" style="text-align: center;">
        {$poruka}
    </div>
    <br>
    <br>

    <form id="filter" class="filter" method="POST" action="">
        <input type="hidden" id="id_mjesta" name="id_mjesta" value="{$id_mjesta}">

        <label for="vozilo">Odaberi vozilo: </label>
        <select name="vozilo" id="vozilo">
            {while $red = mysqli_fetch_array($vozila, MYSQLI_NUM)}
                <option value="{$red[0]}">{$red[1]} {$red[2]}</option>
            {/while}
        </select>
        
        <br><br>
        
        <label for="gorivo">Natočeno gorivo: </label>
        <select name="gorivo" id="gorivo">
            {while $red = mysqli_fetch_array($gorivo, MYSQLI_NUM)}
                <option value="{$red[0]}">{$red[1]} ({$red[2]})</option>
            {/while}
        </select>
        
        <br><br>

        <label for="prijedeno_km">Prijeđeno (km): </label>
        <input type="text" id="prijedeno_km" name="prijedeno_km">

        <br><br>

        <label for="gorivo_potroseno">Potrošeno goriva (L): </label>
        <input type="text" id="gorivo_potroseno" name="gorivo_potroseno">

        <br><br>

        <label for="gorivo_preuzeto">Preuzeto goriva (L): </label>
        <input type="text" id="gorivo_preuzeto" name="gorivo_preuzeto">

        <br><br>

        <input type="submit" id="btn" name="btn" value="Evidentiraj">
    </form>

    </div>
</div>

</main>
