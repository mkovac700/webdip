function updatedata(id, blokiran){
    $(document).ready(function(){
        $.ajax({
        // Action
        url: '/skripte/blokiraj.php',
        // Method
        type: 'POST',
        dataType: "JSON",
        data: {
            // Get value
            id: id,
            blokiran: blokiran,
            action: "update"
        },
        success:function(response){
            // Response is the output of action file
            if(response.result == 1){
                //alert("Data Updated Successfully");
                //document.getElementById(id).style.display = "none";
                $('#'+id+' td:nth-child(4)').html(response.blokiran);
            }
            else if(response.result == 0){
                //alert("Data Cannot Be Updated");
            }
        }
        });
    });
    }