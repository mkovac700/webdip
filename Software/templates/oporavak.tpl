<body style="background-color: white">
    <main>
        <form id="oporavak" class="oporavak" method="POST" action="oporavak.php" style="text-align: center; padding-top:15em">
            <p>Molimo Vas da u nastavku unesete email adresu s kojom ste se registrirali u sustav.</p>
            <p>Napomena: Na navedeni email ćemo poslati novu lozinku s kojom ćete se moći prijaviti u sustav.</p>
            <label for="email">Email: </label>
            <input type="text" id="email" name="email"><br>
        </form>
        <form id="redirekcija" class="redirekcija" method="POST" action="/index.php">
        </form>
        <br><br>
        <div>
            <button name="gumb" type="submit" class="gumb" form="oporavak">
                Pošalji
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