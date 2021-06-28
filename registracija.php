<?php
include 'connect.php';
session_start();
$_SESSION['refresh'] = 1;
?>
<!DOCTYPE html>
<html lang="hr">
<head>
    <title>Administracija</title>
    <meta charset="UTF-8">
    <link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="icon" href="img/stern_logo.png" type="image/gif" sizes="16x16">
</head>
<body>
<header>
    <img id="logo" src="img/stern_logo.png" alt="logo">
    <h1>stern</h1>
    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="kategorija.php?id=kultura">Kultura</a></li>
            <li><a href="kategorija.php?id=sport">Sport</a></li>
            <li><a href="unos.html">Unos artikla</a></li>
            <li><a href="prijava.php">Prijava</a></li>
            <li class="crveni"><a href="registracija.php">Registracija</a></li>
            <li><a href="odjava.php">Odjava</a></li>
            <li id="desni"><a href="administracija.php">Administracija</a></li>
        </ul>
    </nav>
</header>
<main>
    <form action="registracija.php" method="post">
        Korisnicko ime: <br><input type="text" name="korisnickoIme" id="korisnickoIme"><br>
        <span id="korisnickoImePoruka"></span><br>
        Lozinka: <br><input type="password" name="lozinka" id="lozinka"><br>
        <span id="lozinkaPoruka"></span><br>
        Potvrdna lozinka: <br><input type="password" name="lozinka1" id="lozinka1"><br>
        <span id="lozinka1Poruka"></span><br>
        Ime: <br><input type="text" name="ime" id="ime"><br>
        <span id="imePoruka"></span><br>
        Prezime: <br><input type="text" name="prezime" id="prezime"><br>
        <span id="prezimePoruka"></span><br>
        <button class="button_admin" type="submit" name="submit" id="submit" value="Submit">Registracija</button> <br>
    </form>
    <script type="text/javascript">
        document.getElementById("submit").onclick = function(event) {
            var uvjet = true;
            var korisnickoImePolje = document.getElementById("korisnickoIme");
            var lozinkaPolje = document.getElementById("lozinka");
            var confirmLozinkaPolje = document.getElementById("lozinka1");
            var imePolje = document.getElementById("ime");
            var prezimePolje = document.getElementById("prezime");

            if (korisnickoImePolje.value.length == 0) {
                korisnickoImePolje.style.border = "dashed red 1px";
                document.getElementById("korisnickoImePoruka").innerHTML = "Korisnicko ime ne smije biti prazno";
                uvjet = false;
            }
            if (lozinkaPolje.value.length < 5) {
                lozinkaPolje.style.border = "dashed red 1px";
                document.getElementById("lozinkaPoruka").innerHTML = "Lozinka mora imati barem 5 znakova";
                uvjet = false;
            }
            if (confirmLozinkaPolje.value != lozinkaPolje.value) {
                confirmLozinkaPolje.style.border = "dashed red 1px";
                document.getElementById("lozinka1Poruka").innerHTML = "Lozinke se moraju podudarati";
                uvjet = false;
            }
            if (imePolje.value.length == 0) {
                imePolje.style.border = "dashed red 1px";
                document.getElementById("imePoruka").innerHTML = "Ime ne smije biti prazno";
                uvjet = false;
            }
            if (prezimePolje.value.length == 0) {
                prezimePolje.style.border = "dashed red 1px";
                document.getElementById("prezimePoruka").innerHTML = "Prezime ne smije biti prazno";
                uvjet = false;
            }

            if(!uvjet){
                event.preventDefault();
            }
        }
    </script>
    <?php
    if(isset($_POST['korisnickoIme']) && isset($_POST['lozinka']) && isset($_POST['lozinka1'])
        && isset($_POST['ime']) && isset($_POST['prezime'])){
        $korisnickoIme = $_POST['korisnickoIme'];
        $ime = $_POST['ime'];
        $prezime = $_POST['prezime'];
        $lozinka = $_POST['lozinka'];
        $lozinkaHash = password_hash($lozinka, CRYPT_BLOWFISH);
        $razina = 0;

        $sql = "SELECT korisnickoIme FROM korisnik WHERE korisnickoIme = ?";
        $stmt = mysqli_stmt_init($dbc);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, 's', $korisnickoIme);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);

            if(mysqli_stmt_num_rows($stmt) > 0){
                echo '<p style="color: red;"> Korisnicko ime vec postoji. </p>';
            }
            else{
                if($_POST['lozinka1'] == $lozinka) {
                    $sql = "INSERT INTO korisnik(ime, prezime, korisnickoIme, lozinka, razina)
                        VALUES(?, ?, ?, ?, ?)";
                    $stmt = mysqli_stmt_init($dbc);

                    if(mysqli_stmt_prepare($stmt, $sql)){
                        mysqli_stmt_bind_param($stmt, 'ssssi', $ime, $prezime, $korisnickoIme, $lozinkaHash, $razina);
                        mysqli_stmt_execute($stmt);
                        mysqli_stmt_store_result($stmt);
                        echo "Uspješna registracija.";
                        mysqli_close($dbc);
                    }
                }
            }
        }
    }
    ?>
</main>
<footer class="milanArtikl">
    <p> Marko Zaninović | mzaninovi@tvz.hr | 2021.</p>
</footer>
</body>
</html>