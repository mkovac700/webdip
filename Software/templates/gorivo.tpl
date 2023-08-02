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

    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>ID</th> 
    <th>Tip</th>
    <th>Naziv</th>
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

{literal}
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script>

    <script type="text/javascript">
    // Function
    function updatedata(id){
        //location.href = -- moze se koristiti back
        //location.replace() -- ne moze se koristiti back
        location.href = '/admin/uredi_gorivo.php?id='+id;
    }

    function deletedata(id){
        $(document).ready(function(){
          $.ajax({
            // Action
            url: '/skripte/brisanje_gorivo.php', //'/skripte/brisanje.php'
            // Method
            type: 'POST',
            data: {
              // Get value
              id: id,
              action: "delete"
            },
            success:function(response){
              // Response is the output of action file
              if(response == 1){
                alert("Zapis obrisan!");
                document.getElementById(id).style.display = "none";
              }
              else if(response == 0){
                alert("Greška u brisanju zapisa!");
              }
            },
            error: function(ts) { alert(ts.responseText) }
          });
        });
    }

    function adddata(){
        location.href = '/admin/uredi_gorivo.php?id=';
    }
    </script>
{/literal}