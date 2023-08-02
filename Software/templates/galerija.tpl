
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

        <label for="sort">Sortiranje: </label>
        <select name="sort" id="sort">
            <option value="zadano">Zadano</option>
            <option value="brojac">Prijeđeni kilometri</option>
            <option value="model">Model</option>
        </select>
        
        <label for="filter">Filtriranje: </label>
        <select name="filter" id="filter">
                <option value="0">Zadano</option>
            {while $red = mysqli_fetch_array($benzinske_postaje, MYSQLI_NUM)}
                <option value="{$red[0]}">{$red[1]} ({$red[2]})</option>
            {/while}
        </select>

        <input type="submit" id="btn" name="btn" value="Potvrdi">
    </form>

    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Marka</th>
    <th>Model</th>
    <th>Prijeđeni kilometri</th>
    <th>Fotografija</th>
    </tr>
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td>{$redak[3]}</td>
        <td><img src="{$redak[4]}" width="40%" height="40%" alt="{$redak[4]}"></td>
        </tr>
    {/while}

    </table>

    <br><br><br><br><br><br>

    </div>
</div>

</main>
