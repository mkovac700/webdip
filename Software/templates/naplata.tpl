<script type="text/javascript" src="../js/naplata.js"></script>

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

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Oznaka</th>
    <th>Status</th>
    <th>Opcije</th>
    </tr>
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td> 
            <button type="button" name="button_uredi" onclick="editdata({$redak[0]})">Naplati</button>
        </td>
        </tr>
    {/while}

    </table>

    </div>
</div>

</main>