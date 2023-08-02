<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="author" content="Marijan Kovač">
    <meta name="description" content="Zadaća 01 - 27.3.2022.">

    <link rel="stylesheet" type="text/css" href="../css/mkovac.css"/>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <noscript>Preglednik ne može izvršiti JavaScript!</noscript>
    
    <title>{$title}</title>
</head>

<body id="tijelo">
    <header id="zaglavlje">
        <div style="display: flex;">
            <div style="display: flex;">
                <a class="hamburger" href="#zaglavlje">
                    <img class="hamburger_icon" src="../materijali/hamburger.jpg" alt="Hamburger icon" width="80" height="80">
                </a>
            </div>

            <div style="display: flex; margin: auto;">
                <a class="zaglavlje_logo" href="../index.php">
                    <img src="../materijali/oil.png" alt="Fuel logo" width="50" height="50">            
                </a>
                    
                <a class="naslov" href="#tijelo">
                    <h1>{$naslov}</h1>
                </a>
            </div>

            <div style="visibility: hidden;">
                
                <a class="hamburger" href="#zaglavlje">
                    <img class="hamburger_icon" src="../materijali/hamburger.jpg" alt="Hamburger icon" width="80" height="80">
                </a>
                
            </div>
        </div>
    </header>

    <nav class="navigacija">
        <ul>
            <!-- 1=nereg 2=reg 3=mod 4=admin -->

            {if isset($smarty.session.uloga) && $smarty.session.uloga == 1}
                <li><a class="poveznica" href="{$putanjaMeni}/index.php">Početna stranica</a></li>
                <li><a class="poveznica" href="{$putanjaMeni}/obrasci/registracija.php">Registracija</a></li>
                <li><a class="poveznica" href="{$putanjaMeni}/obrasci/prijava.php">Prijava</a></li>
            {/if}

            {if isset($smarty.session.uloga) && $smarty.session.uloga != 1}
                <li><a class="poveznica" href="{$putanjaMeni}/index.php">Početna stranica</a></li>
                <li><a class="poveznica" href="{$putanjaMeni}/skripte/odjava.php">Odjava - {$smarty.session.korisnik}</a></li>
            {/if}
                <li><a class="poveznica" href="{$putanjaMeni}/gost/rang_lista.php">Rang lista</a></li>
                <li><a class="poveznica" href="{$putanjaMeni}/gost/galerija.php">Galerija</a></li>
            {if isset($smarty.session.uloga) && $smarty.session.uloga > 1}
                <li><a class="poveznica" href="{$putanjaMeni}/korisnik/moja_vozila.php">Moja vozila</a></li>
                <li><a class="poveznica" href="{$putanjaMeni}/korisnik/pretrazivanje.php">Benzinske postaje</a></li>
            {/if}

            {if isset($smarty.session.uloga) && $smarty.session.uloga > 2}
                <li><a class="poveznica" href="{$putanjaMeni}/moderator/moje_benzinske_postaje.php">Moje benzinske postaje</a></li>
            {/if}

            {if isset($smarty.session.uloga) && $smarty.session.uloga > 3}
                <li><a class="poveznica" href="{$putanjaMeni}/admin/dashboard.php">Upravljačka ploča</a></li>
            {/if}
        </ul>
    </nav>