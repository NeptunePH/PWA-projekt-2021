<?php
session_start();
$_SESSION['refresh'] = 1;
include 'connect.php';
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
                <li class="crveni"><a href="prijava.php">Prijava</a></li>
                <li><a href="registracija.php">Registracija</a></li>
                <li><a href="odjava.php">Odjava</a></li>
                <li id="desni"><a href="administracija.php">Administracija</a></li>
            </ul>
        </nav>
    </header>
        <main>
            <form action="prijava.php" method="post">
                Korisnicko ime: <br><input type="text" name="korisnickoIme" id="korisnickoIme" required><br>
                Lozinka: <br><input type="password" name="lozinka" id="lozinka" required><br>
                <button class="button_admin" type="submit" name="submit" value="Prijava">Prijava</button> <br>
            </form> <br>
            <?php
                if(isset($_POST['korisnickoIme']) && isset($_POST['lozinka'])){
                    $korisnickoIme = $_POST['korisnickoIme'];
                    $sql = "SELECT korisnickoIme, lozinka, razina FROM korisnik WHERE korisnickoIme = ?";
                    $stmt = mysqli_stmt_init($dbc);

                    if(mysqli_stmt_prepare($stmt, $sql)){
                        mysqli_stmt_bind_param($stmt, 's', $korisnickoIme);
                        mysqli_stmt_execute($stmt);
                        mysqli_stmt_store_result($stmt);

                        $korisnickoImeBaza = null;
                        $lozinkaHash = null;
                        $razina = null;

                        mysqli_stmt_bind_result($stmt, $korisnickoImeBaza, $lozinkaHash, $razina);
                        mysqli_stmt_fetch($stmt);

                        if(password_verify($_POST['lozinka'], $lozinkaHash)){
                            echo "Prijava uspješna.\n";
                            $_SESSION['login'] = true;
                            $_SESSION['level'] = $razina;
                            $_SESSION['username'] = $korisnickoIme;
                            mysqli_close($dbc);
                            header("Location: administracija.php");
                            exit;
                        }
                        else{
                            echo "Neuspješna prijava.\n";
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