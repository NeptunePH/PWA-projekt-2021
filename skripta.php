<?php
    session_start();
    $_SESSION['refresh'] = 1;
    include 'insert.php';
?>

<!DOCTYPE html>
<html lang="hr">
    <head>
        <title>Sport</title>
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
                    <li class="crveni"><a href="unos.html">Unos artikla</a></li>
                    <li><a href="prijava.php">Prijava</a></li>
                    <li><a href="registracija.php">Registracija</a></li>
                    <li><a href="odjava.php">Odjava</a></li>
                    <li id="desni"><a href="administracija.php">Administracija</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <section class="milanArtikl">
                <h1 id="kategorijaArtikla"> <?php echo $kategorijaVijesti;?> </h1>
                <h1> <?php echo $naslovArtikla;?> </h1>
                <h4> <?php echo $sazetakVijesti;?> </h4>
                <img src="<?php echo $target;?>" alt='slika_artikla'>
                <p> <?php echo $sadrzajArtikla;?> </p>
            </section>
        </main>
        <footer class="milanArtikl">
            <p> Marko Zaninović | mzaninovi@tvz.hr | 2021.</p>
        </footer>
    </body>
</html>