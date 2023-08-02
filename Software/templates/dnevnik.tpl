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
    <br><br>
    <form id="opcije" class="dnevnik" method="POST" action="dnevnik.php"> 
            
    <div class="dnevnik_radiobuttons">
        <input type="checkbox" id="razdoblje" name="razdoblje" value="razdoblje">
        <label for="razdoblje">Odaberi razdoblje: </label>
        <input type="date" id="datum_od" name="datum_od">
        <label> - </label>
        <input type="date" id="datum_do" name="datum_do">
        <br><br>
        <label>Odaberi korisnika: </label>
        <input type="radio" id="svi" name="svi" value="svi">
        <label for="svi">Svi</label>
        <input type="radio" id="neregistrirani" name="neregistrirani" value="neregistrirani">
        <label for="neregistrirani">Neregistrirani</label>
        <input type="radio" id="unos" name="unos" value="unos">
        <label for="unos">Unesi ID ili korisničko ime: </label>
        <input type="text" id="korisnik" name="korisnik">
        <br><br>
        <input type="submit" id="btn" name="btn" value="Potvrdi">

        <div class="greske">
            {$greska}
        </div>
    </div>
    </form>

    <br><br>

    <table border = 1 cellspacing = 0 cellpadding = 10>
    <tr>
    <th>ID</th> 
    <th>ID korisnik</th>
    <th>ID tip radnje</th>
    <th>Vrijeme</th>
    <th>Zapis</th>
    </tr>
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM) }
        <tr id = {$redak[0]}>
        <td>{$redak[0]}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        <td>{$redak[3]}</td>
        <td>{$redak[4]}</td>
        </tr>
    {/while}
    {if mysqli_num_rows($rezultat) == 0}
        <tr>
        <td colspan=5>Nema podataka!</td>
        </tr>
    {/if}
    
    </table>
</div>

<div>
    <br><br><br><br><br>
</div>

</main>