<script type="text/javascript" src="../js/pretrazivanje.js"></script>

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
        <label for="pretraga">Unesi lokaciju ili adresu: </label>

        <input type="text" id="pretraga" name="pretraga">

        <input type="submit" id="btn" name="btn" value="Pretraži">
    </form>

    <br>
    
    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Oznaka</th>
    <th>Adresa</th>
    <th>Lokacija</th>
    <th>Kontakt broj</th>
    <th>Opcije</th>
    </tr>
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM)} 
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td>{$redak[3]}</td>
        <td>{$redak[4]}</td>
        <td> 
            <button type="button" name="button_open" onclick="openpage({$redak[0]})">Mjesta za točenje</button>
        </td>
        </tr>
    {/while}

    </table>
    
    <br><br>

    </div>
</div>

</main>
