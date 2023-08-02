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
    <th>Tip</th>
    <th>Naziv</th>
    <th>Cijena</th>
    <th>Datum od</th>
    <th>Datum do</th>
    <th>Aktualno</th>
    </tr>
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM)} 
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td>{$redak[3]}</td>
        <td>{$redak[4]}</td>
        <td>{$redak[5]}</td>
        <td>
            {if empty($redak[5])}
                Da
                {else}
                    Ne
            {/if}
        </td>
        </tr>
    {/while}

    </table>
    
    <br><br>

    </div>
</div>

</main>
