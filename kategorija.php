<?php
include 'connect.php';
session_start();
$_SESSION['refresh'] = 1;
$kategorija = $_GET['id'];
$query = "SELECT * FROM artikli WHERE kategorija='$kategorija' AND arhiva=0";
$result = mysqli_query($dbc, $query);
$titleKategorija = $kategorija;
$titleKategorija[0] = strtoupper($titleKategorija[0]);
?>
<!DOCTYPE html>
<html lang="hr">
<head>
    <title><?php echo $titleKategorija?></title>
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
            <?php
            if($kategorija == 'sport'){
                echo '<li><a href="kategorija.php?id=kultura">Kultura</a></li>
                        <li class="crveni"><a href="kategorija.php?id=sport">Sport</a></li>';
            }
            else{
                echo '<li class="crveni" ><a href="kategorija.php?id=kultura">Kultura</a></li>
                        <li><a href="kategorija.php?id=sport">Sport</a></li>';
            }
            ?>
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
        <?php
        while($row = mysqli_fetch_array($result)) {
        echo '<article class="artiklLink">';
            $id = $row['id'];
            echo "<a href=\"clanak.php?id=$id\">";
                echo '<img src="img/' . $row['slika'] . '" alt="preview_slika">';
                echo '<h3>'. $row['podnaslov'] .'</h3>';
                echo '<p>' . $row['sazetak'] . '</p></a>';
            echo "</article>";
        }?>
    </section>
</main>
<footer>
    <p> Marko Zaninović | mzaninovi@tvz.hr | 2021.</p>
</footer>
</body>
</html>