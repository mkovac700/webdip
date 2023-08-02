



    //ajax provjera korisnickog imena

    //alert("test"); 
    $(document).ready(function(){
        $('#korime').blur(function(){
            var korime = $(this).val();

            if(korime == ""){
                $('#ajax_dostupno').html(''); //da ne ispisuje za prazan string
            }
            else{
                $.ajax({
                    //url datoteka mora bit u istom folderu kao registracija.php ili u drugom folderu (na root direktoriju ne radi)
                    //koristiti / za relativnu putanju pocevsi od root direktorija!!!
                    url:'/skripte/provjera.php', 
                    method:"POST",
                    data:{kor_ime : korime},
                    success: function(data){
                        if(data == '0'){
                            $('#ajax_dostupno').html('<p style="color: green">Korisničko ime je dostupno!</p>');
                        }
                        else{
                            $('#ajax_dostupno').html('<p style="color: red">Korisničko ime je zauzeto!</p>');
                        }
                    },
                    error: function(ts) { alert(ts.responseText) }
                })
            }
        });

    });
 
    document.addEventListener("DOMContentLoaded", ucitavanjeStranice);

    function ucitavanjeStranice(){
        var validno = false;

        var kontaktbr = document.getElementById("kontaktbr");

        kontaktbr.addEventListener("focusout", function(event){
            validno = provjeriKontaktBroj(kontaktbr);
        })

        var email = document.getElementById("email");

        email.addEventListener("focusout", function(event){
            validno = provjeriEmail(email);
        })

        var lozinka = document.getElementById("lozinka");

        lozinka.addEventListener("focusout", function(event){
            validno = provjeriLozinku(lozinka);
        })

        var lozinka_potvrda = document.getElementById("lozinka_potvrda");

        lozinka_potvrda.addEventListener("focusout", function(event){
            validno = provjeriLozinkuPotvrda(lozinka, lozinka_potvrda);
        })

        var ime = document.getElementById("ime");

        ime.addEventListener("focusout", function(event){
            validno = provjeriIme(ime);
        })

        var prezime = document.getElementById("prezime");

        prezime.addEventListener("focusout", function(event){
            validno = provjeriPrezime(prezime);
        })

        var formRegistracija = document.getElementById("reg");

        formRegistracija.addEventListener("submit", function(event){
            if(!validno){
                document.getElementById("greske").innerHTML = 'Provjerite sva polja!';
                event.preventDefault();
            }
            else{
                document.getElementById("greske").innerHTML = '';
            }
        })
        
    }

    function provjeriKontaktBroj(kontaktbr){
        var ispravno = true;
        var sadrzaj = kontaktbr.value;
        var nedozvoljeniZnakovi = /[`!@#$%^&*()_\-=\[\]{};':"\\|,.<>\/?~]/;

        if(nedozvoljeniZnakovi.test(sadrzaj)){
            ispravno = false;
            document.getElementById("js_kontaktbr_greska").innerHTML = '<p style="color: red">Neispravan format!</p>';
        } 
        else{
            ispravno = true;
            document.getElementById("js_kontaktbr_greska").innerHTML = '';
        }

        return ispravno;
    }

    function provjeriEmail(email){
        var ispravno = true;
        var sadrzaj = email.value;
        var nedozvoljeniZnakovi = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

        if(!nedozvoljeniZnakovi.test(sadrzaj)){
            ispravno = false;
            document.getElementById("js_email_greska").innerHTML = '<p style="color: red">Neispravan format!</p>';
        } 
        else{
            ispravno = true;
            document.getElementById("js_email_greska").innerHTML = '';
        }

        return ispravno;
    }

    function provjeriLozinku(lozinka){
        var ispravno = true;
        var sadrzaj = lozinka.value;
        var nedozvoljeniZnakovi = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,50}$/;

        if(!nedozvoljeniZnakovi.test(sadrzaj)){
            ispravno = false;
            document.getElementById("js_lozinka_greska").innerHTML = '<p style="color: red">Lozinka mora sadržavati minimalno jedno veliko i malo slovo te broj!</p>';
        } 
        else{
            ispravno = true;
            document.getElementById("js_lozinka_greska").innerHTML = '';
        }

        return ispravno;
    }

    function provjeriLozinkuPotvrda(lozinka, lozinka_potvrda){
        var ispravno = true;

        if(lozinka.value != lozinka_potvrda.value){
            ispravno = false;
            document.getElementById("js_lozinka_potvrda_greska").innerHTML = '<p style="color: red">Lozinke se ne podudaraju!</p>';
        } 
        else{
            ispravno = true;
            document.getElementById("js_lozinka_potvrda_greska").innerHTML = '';
        }

        return ispravno;
    }

    function provjeriIme(ime){
        var ispravno = true;
        var sadrzaj = ime.value;
        var nedozvoljeniZnakovi = /\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+/;

        if(!nedozvoljeniZnakovi.test(sadrzaj)){
            ispravno = false;
            document.getElementById("js_ime_greska").innerHTML = '<p style="color: red">Ime ne smije sadržavati brojeve i posebne znakove!</p>';
        }
        else{
            ispravno = true;
            document.getElementById("js_ime_greska").innerHTML = '';
        }

        return ispravno;
    }

    function provjeriPrezime(prezime){
        var ispravno = true;
        var sadrzaj = prezime.value;
        var nedozvoljeniZnakovi = /\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+/;

        if(!nedozvoljeniZnakovi.test(sadrzaj)){
            ispravno = false;
            document.getElementById("js_prezime_greska").innerHTML = '<p style="color: red">Prezime ne smije sadržavati brojeve i posebne znakove!</p>';
        }
        else{
            ispravno = true;
            document.getElementById("js_prezime_greska").innerHTML = '';
        }

        return ispravno;
    }