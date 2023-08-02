function editdata(id_row){
    //alert("test");
    $(document).ready(function(){
      $.ajax({
        // Action
        url: '/skripte/naplati_mjesto.php', //'/skripte/brisanje.php'
        // Method
        type: 'POST',
        dataType: "JSON",
        data: {
          // Get value
          id: id_row,
          action: "update"
        },
        success:function(response){
          // Response is the output of action file
          if(response.result == 1){
            alert("Zapis azuriran!");
            location.reload();
            //document.getElementById(id).style.display = "none";
          }
          else if(response.result == 0){
            alert("Greška u azuriranju zapisa!");
          }
        },
        error: function(ts) { alert(ts.responseText) }
      });
    });
}