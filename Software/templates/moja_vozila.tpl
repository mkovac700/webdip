<script type="text/javascript" src="../js/moja_vozila.js"></script>

<main class="admin-main">


<div style="text-align: center;">
    <div style="text-align: center;">
    <br>
    <div id="greske" style="text-align: center;">
        {$poruka}
    </div>
    <br>

    <div>
        <button type="button" name="button_dodaj" onclick="adddata()">Dodaj</button>
    </div>
    <br>

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Registracijska oznaka</th>
    <th>Marka</th>
    <th>Model</th>
    <th>Prijeđeni kilometri</th>
    <th>Fotografija</th>
    <th>Opcije</th>
    </tr>
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td>{$redak[3]}</td>
        <td>{$redak[4]}</td>
        <td><img src="{$redak[5]}" width="40%" height="40%" alt="{$redak[5]}"></td>
        <td> 
            <button type="button" name="button_uredi" onclick="updatedata({$redak[0]})">Ažuriraj</button>
            <button type="button" name="button_obrisi" onclick="deletedata({$redak[0]})">Obriši</button>
        </td>
        </tr>
    {/while}

    </table>

    <br><br>

    </div>
</div>

</main>
