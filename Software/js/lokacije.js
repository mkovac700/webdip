function updatedata(id){
    //location.href = -- moze se koristiti back
    //location.replace() -- ne moze se koristiti back
    location.href = '/admin/uredi_lokacije.php?id='+id;
}

function deletedata(id){
    $(document).ready(function(){
      $.ajax({
        // Action
        url: '/skripte/brisanje_lokacije.php', //'/skripte/brisanje.php'
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
    location.href = '/admin/uredi_lokacije.php?id=';
}