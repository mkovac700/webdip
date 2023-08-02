
<body style="background-color: white">
    <main>
        <form id="validacija" class="validacija" method="POST" action="aktivacija.php" style="text-align: center; padding-top:15em">
            <p>Molimo Vas da u nastavku unesete aktivacijski kod koji smo vam poslali na email adresu.</p>
            <p>Napomena: Aktivacijski kod vrijedi 1 sat. </p>
            <label for="aktivacijski_kod">Aktivacijski kod: </label>
            <input type="text" id="aktivacijski_kod" name="aktivacijski_kod"><br>
        </form>
        <form id="redirekcija" class="redirekcija" method="POST" action="/index.php">
        </form>
        <br><br>
        <div>
            <button name="gumb" type="submit" class="gumb" form="validacija">
                Potvrdi
            </button>
            <br>
            <button name="gumb" type="submit" class="gumb" form="redirekcija"> 
                Početna stranica 
            </button>
            
        </div>
        <br>
        <div id="poruka" style="text-align: center">
            {$poruka}
        </div>
       
    </main>
</body>
</html>