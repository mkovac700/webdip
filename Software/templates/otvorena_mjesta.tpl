<script type="text/javascript" src="../js/otvorena_mjesta.js"></script>

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
        <label for="vgoriva">Odaberi vrstu goriva: </label>

        <select name="vgoriva" id="vgoriva">
            <option value="0">---Sve---</option>
            {while $red = mysqli_fetch_array($vgoriva, MYSQLI_NUM)}
                <option value="{$red[0]}" {if $selected == $red[0]}selected{/if}>{$red[1]}</option>
            {/while}
        </select>

        <input type="submit" id="btn" name="btn" value="Pretraži">
    </form>

    <br>
    
    <table cellspacing = 0 cellpadding = 10>
    <tr>
    <th>#</th> 
    <th>Oznaka mjesta</th>
    <th>Status</th>
    {* 
    <th>ID BENZ</th>
    <th>ID VR</th>
     *}
    <th>Opcije</th>
    </tr>
    {$i=1}
    {while $redak = mysqli_fetch_array($rezultat, MYSQLI_NUM)} 
        <tr id = {$redak[0]}>
        <td>{$i++}</td>
        <td>{$redak[1]}</td>
        <td>{$redak[2]}</td>
        {* 
        <td>{$redak[3]}</td>
        <td>{$redak[4]}</td>
         *}
        <td>
            <button type="button" name="button_open" onclick="openpage({$redak[0]})">Evidentiraj točenje</button>
        </td>
        </tr>
    {/while}

    </table>
    
    <br><br>

    </div>
</div>

</main>
