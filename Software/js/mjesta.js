function adddata(id_bp){
    location.href = '/moderator/uredi_mjesta.php?id_bp='+id_bp;
}

function updatedata(id_bp, id_row){
    location.href = '/moderator/uredi_mjesta.php?id_bp='+id_bp+'&id_row='+id_row;
}

function editdata(id_bp, id_row){
    location.href = '../moderator/uredi_mjesta_vg.php?id_bp='+id_bp+'&id_row='+id_row;
}