<div class="navbar_moderator">
<a href="/moderator/vrste_goriva.php?id={$id_bp}">Upravljaj vrstama goriva</a>
<a href="/moderator/mjesta.php?id={$id_bp}">Upravljaj mjestima</a>
<a href="/moderator/popis_goriva.php?id={$id_bp}">Popis goriva</a>
<a href="/moderator/naplata.php?id={$id_bp}">Naplata</a>
<a href="/moderator/statistika_tocenja.php?id={$id_bp}">Statistika točenja</a>
</div>

<main class="admin-main">


<div style="text-align: center;">
    <div style="text-align: center;">
    <br>
    <div id="greske" style="text-align: center;">
        {$poruka}
    </div>
    <br>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
        <th>#</th> 
        <th>Vrsta goriva</th>
        <th>Količina (L)</th>
        <th>Na raspolaganju</th>
    </tr>
    {$suma = 0}
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[1]}</td>
        {if $redak[2]!=0}
            <td>{$redak[2]}</td>
            {else}
                <td style="color: red">{$redak[2]}</td> 
        {/if}
        <td>
        {if $redak[3]}
            Da
            {else}
                Ne
        {/if}
        </td>
        </tr>

        {$suma=$suma+$redak[2]}
    {/while}
        <tr>
            <td style="font-weight: bold">Ukupno (L): </td>
            <td colspan=3>{$suma}</td>
        </tr>

    </table>

    </div>
</div>

</main>

