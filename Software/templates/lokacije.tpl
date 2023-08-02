<script type="text/javascript" src="../js/lokacije.js"></script>

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
    <div>
        <button type="button" name="button_dodaj" onclick="adddata()">Dodaj</button>
    </div>
    <br>

    <table border = 1 cellspacing = 0 cellpadding = 10>
    <tr>
    <th>ID</th> 
    <th>Naziv</th>
    <th>Oznaka</th>
    <th>Uredi</th>
    <th>Obriši</th>
    </tr>
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$redak[0]}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td> <button type="button" name="button_uredi" onclick="updatedata({$redak[0]})">Uredi</button></td>
        <td> <button type="button" name="button_obrisi" onclick="deletedata({$redak[0]})">Obriši</button> </td>
        </tr>
    {/while}
    
    </table>
    
</div>

</main>