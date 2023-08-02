<script type="text/javascript" src="../js/moje_benzinske_postaje.js"></script>

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
    <div>
        <h2>Moje benzinske postaje</h2>
    </div>
    <br>
    <div id="greske" style="text-align: center;">
        {$poruka}
    </div>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>ID benzinske postaje</th> 
    <th>ID lokacije</th>
    <th>Oznaka</th>
    <th>Adresa</th>
    <th>Kontakt broj</th>
    <th>Odaberi</th>
    </tr>
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$redak[0]}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td>{$redak[3]}</td>
        <td>{$redak[4]}</td>
        <td> <button type="button" name="button_uredi" onclick="openpage({$redak[0]})">Odaberi</button></td>
        </tr>
    {/while}

    </table>

    </div>
</div>

</main>