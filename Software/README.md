# Upute za pokretanje projekta

NAPOMENA: Za pokretanje je potreban Linux operativni sustav s instaliranim MySql-om i Apache2 serverom. Preporuka je koristiti Linux Mint, jer je projekt rađen upravo na njemu. Prije prvog pokretanja potrebno je izvršiti sve korake u nastavku, dok je kod svakog idućeg pokretanja potrebno preskoćiti korake 2, 3, 4.

1. Otvoriti terminal i izvršiti slijedeće komande:
   a. service mysql start
   b. service apache2 start
--------------------------------------------------------------------------------------------------------
2. Smjestiti datoteke izvornoga koda u /var/www/html
3. Otvoriti u pregledniku http://localhost/phpmyadmin/ i napraviti slijedeće:
   a. za username i password unijeti 'root'
   b. kreirati novu bazu podataka pod nazivom 'WebDiP2021x051' (važno je da naziv baze bude točan)
   c. importati (ili kopirati) SQL skriptu WebDiP2021x051.sql iz mape Software te ju izvršiti
4. Preuzeti Smarty template s https://github.com/smarty-php/smarty/releases/tag/v4.0.0 te smjestiti mapu smarty-4.0.0 u mapu vanjske_biblioteke
--------------------------------------------------------------------------------------------------------
5. Otvoriti u pregledniku http://localhost/
