<?php
    include 'connect.php';
    session_start();
    $_SESSION['refresh'] = 1;

    $id = $_GET['id'];

    $sql = "SELECT datum, naslov, podnaslov, sazetak, tekst, slika, kategorija FROM artikli WHERE id=?";
    $stmt = mysqli_stmt_init($dbc);

    if(mysqli_stmt_prepare($stmt, $sql)){
        mysqli_stmt_bind_param($stmt, 'i', $id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);

        $datum= null;
        $naslov= null;
        $podnaslov= null;
        $sazetak= null;
        $sadrzaj= null;
        $slika= null;
        $kategorija = null;

        mysqli_stmt_bind_result($stmt, $datum, $naslov, $podnaslovm, $sazetak, $sadrzaj, $slika, $kategorija);
        mysqli_stmt_fetch($stmt);

    }
?>

<!DOCTYPE html>
<html lang="hr">
<head>
    <title><?php echo $naslov ?></title>
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
    <section class="milanArtikl">
        <h1> <?php echo $naslov; ?> </h1>
        <h3> <?php echo $datum; ?> </h3>
        <h4> <?php echo $sazetak; ?> </h4>
        <img src="img/<?php echo $slika; ?>" alt="milan_pobjeda">
        <p> <?php echo $sadrzaj; ?> </p>
    </section>
</main>
<footer class="milanArtikl">
    <p> Marko Zaninović | mzaninovi@tvz.hr | 2021.</p>
</footer>
</body>
</html>