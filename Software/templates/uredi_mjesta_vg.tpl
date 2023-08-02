<script type="text/javascript" src="../js/uredi_mjesta_vg.js"></script>

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

    <form id="uredi_mjesta_vg" class="uredi_mjesta_vg" method="POST" action="">
        <label for="vrsta_goriva">Odaberi vrstu goriva za {$naziv_mjesta}: </label>
        <select name="vrsta_goriva" id="vrsta_goriva">
        {while $redak = mysqli_fetch_array($vrste_goriva, MYSQLI_NUM)}
            <option value="{$redak[0]}">{$redak[1]}</option>
        {/while}
        </select>

        <input type="submit" id="btn" name="btn" value="Dodaj">
    
    </form>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>Vrsta goriva</th>
    <th>Opcije</th>
    </tr>
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$redak[1]}</td>
        <td> 
            <button type="button" name="button_obrisi" onclick="deletedata({$redak[0]})">Obriši</button>
        </td>
        </tr>
    {/while}

    </table>

    </div>
</div>

</main>
