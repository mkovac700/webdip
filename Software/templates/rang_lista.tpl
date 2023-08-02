<script type="text/javascript" src="../js/rang_lista.js"></script>

<main class="admin-main">


<div style="text-align: center;">
    <div style="text-align: center;">
    <br>
    <div id="greske" style="text-align: center;">
        {$poruka}
    </div>
    <br>
    <br>

    <br>
    
    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Oznaka</th>
    <th>Adresa</th>
    <th>Ukupno natočeno</th>
    <th>Opcije</th>
    </tr>
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM)} 
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td>{$redak[3]}</td>
        <td> 
            <button type="button" name="button_open" onclick="openpage({$redak[0]})">Informacije o cijenama goriva</button>
        </td>
        </tr>
    {/while}

    </table>
    
    <br><br>

    </div>
</div>

</main>
