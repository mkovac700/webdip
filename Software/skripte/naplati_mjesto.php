
<?php
    //$conn = mysqli_connect("localhost", "root", "", "data");

    $putanja = dirname(getcwd()); //isto sto i __FILE__
    require "$putanja/baza.class.php";

    $baza = new Baza();
    $veza = $baza->spojiDB();

    if(isset($_POST["action"])){
        // Choose a function depends on value of $_POST["action"]
        if($_POST["action"] == "update"){
            update();
        }
    }

    function update(){
        global $baza;

        $id = $_POST["id"];

        $upit = "UPDATE mjesto SET id_status_mjesto = 2 WHERE id_mjesto = '{$id}'";

        $rezultat = $baza->selectDB($upit);

        
        $retval = 0;
        //mysqli_query($veza, "DELETE FROM tb_data WHERE id = $id");
        if(mysqli_num_rows($rezultat)) $retval = 0; //echo 0
        else $retval = 1;

        $polje = array("result" => $retval);

        echo json_encode($polje);
        
    }

    $baza->zatvoriDB();
?>