<script type="text/javascript" src="../js/racuni.js"></script>

<div class="navbar_admin">
<a href="/admin/racuni.php">Upravljanje računima</a>
<a href="" style="color: red">Konfiguracija sustava</a>
<a href="/admin/dnevnik.php">Dnevnik aktivnosti</a>
<a href="/admin/moderatori.php">Upravljanje moderatorima</a>
<a href="/admin/gorivo.php">Upravljanje vrstama goriva</a>
<a href="/admin/lokacije.php">Upravljanje lokacijama</a>
</div>

<main class="admin-main">


<div style="text-align: center;">
    <form id="opcije" class="racuni" method="POST" action="racuni.php"> 
        
        <div class="racuni_radiobuttons">
            <label>Odaberi prikaz: </label>
            <input type="radio" id="svi" name="svi" value="svi">
            <label for="svi">Sve</label>
            <input type="radio" id="blokirani" name="blokirani" value="blokirani">
            <label for="blokirani">Samo blokirani </label>

            <input type="submit" id="btn" name="btn" value="Potvrdi">
        </div>
    </form>

    <br>

    <table border = 1 cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th>
    <th>ID</th> 
    <th>Tip</th>
    <th>Korisnicko ime</th>
    <th>Blokiran</th>
    <th>Opcija</th>
    </tr>
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[0]}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td>
        {if $redak[3]}
            Da
            {else}
                Ne
        {/if}
        </td>
        <td> <button type="button" name="button" onclick="updatedata({$redak[0]},{$redak[3]})">Blokiraj/odblokiraj</button> </td>
        </tr>
    {/while}
    
    </table>
</div>

</main>