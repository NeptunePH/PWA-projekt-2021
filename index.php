<?php
    include 'connect.php';
    session_start();
    $_SESSION['refresh'] = 1;
?>
<!DOCTYPE html>
<html lang="hr">
    <head>
        <title>Stern</title>
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
                    <li class="crveni"><a href="index.php">Home</a></li>
                    <li><a href="kategorija.php?id=kultura">Kultura</a></li>
                    <li><a href="kategorija.php?id=sport">Sport</a></li>
                    <li><a href="unos.html">Unos artikla</a></li>
                    <li><a href="prijava.php">Prijava</a></li>
                    <li><a href="registracija.php">Registracija</a></li>
                    <li><a href="odjava.php">Odjava</a></li>
                    <li id="desni"><a href="administracija.php">Administracija</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <section>
                <h2> <a href="kategorija.php?id=kultura">KULTURA > </a></h2>
                <?php
                    $query = "SELECT * FROM artikli WHERE arhiva = 0 AND kategorija='kultura' LIMIT 3";
                    $result = mysqli_query($dbc, $query);

                    while($row = mysqli_fetch_array($result)) {
                        echo '<article class="artiklLink">';
                        $id = $row['id'];
                        echo "<a href=\"clanak.php?id=$id\">";
                        echo '<img src="img/' . $row['slika'] . '" alt="preview_slika">';
                        echo '<h3>'. $row['podnaslov'] .'</h3>';
                        echo '<p>' . $row['naslov'] . '</p></a>';
                        echo "</article>";
                    }?>
            </section>
            <section>
                <h2> <a href="kategorija.php?id=sport"> SPORT ></a></h2>
                <?php
                $query = "SELECT * FROM artikli WHERE arhiva = 0 AND kategorija='sport' LIMIT 3";
                $result = mysqli_query($dbc, $query);

                while($row = mysqli_fetch_array($result)) {
                    echo '<article class="artiklLink">';
                    $id = $row['id'];
                    echo "<a href=\"clanak.php?id=$id\">";
                    echo '<img src="img/' . $row['slika'] . '" alt="preview_slika">';
                    echo '<h3>'. $row['podnaslov'] .'</h3>';
                    echo '<p>' . $row['naslov'] . '</p></a>';
                    echo "</article>";
                }?>
            </section>
        </main>
        <footer>
            <p> Marko Zaninović | mzaninovi@tvz.hr | 2021.</p>
        </footer>
    </body>
</html>