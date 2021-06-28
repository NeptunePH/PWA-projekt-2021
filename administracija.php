<?php
    session_start();
    include 'connect.php';

    if(isset($_POST['delete'])){
        $sql = "DELETE FROM artikli WHERE id=?";
        $stmt = mysqli_stmt_init($dbc);
        $id = $_POST['id'];

        if(mysqli_stmt_prepare($stmt, $sql)){
            mysqli_stmt_bind_param($stmt, 'i', $id);
            mysqli_stmt_execute($stmt);
        }
        $_SESSION['refresh'] = 1;
    }
    elseif(isset($_POST['update'])){
        $_SESSION['refresh'] = 1;
        $picture = $_FILES['pphoto']['name'];
        $naslov=$_POST['title'];
        $podnaslov = $_POST['subtitle'];
        $sazetak=$_POST['about'];
        $tekst=$_POST['content'];
        $kategorija=$_POST['category'];


        if(isset($_POST['archive'])){
            $archive=1;
        }
        else{
            $archive=0;
        }

        if($_FILES['pphoto']['name'] != ''){
            $target_dir = 'img/'.$picture;
            move_uploaded_file($_FILES["pphoto"]["tmp_name"], $target_dir);
            $id=$_POST['id'];

            $sql = "UPDATE artikli SET naslov=?, podnaslov=?, sazetak=?, tekst=?, 
                   slika=?, kategorija=?, arhiva=? WHERE id=?";
            $stmt = mysqli_stmt_init($dbc);

            if(mysqli_stmt_prepare($stmt, $sql)){
                mysqli_stmt_bind_param($stmt, 'ssssssii', $naslov, $podnaslov, $sazetak,
                    $tekst, $picture, $kategorija, $archive, $id);
                mysqli_stmt_execute($stmt);
            }
        }
        else{
            $id=$_POST['id'];
            $sql = "UPDATE artikli SET naslov=?, podnaslov=?, sazetak=?, tekst=?, 
                   kategorija=?, arhiva=? WHERE id=?";
            $stmt = mysqli_stmt_init($dbc);

            if(mysqli_stmt_prepare($stmt, $sql)){
                mysqli_stmt_bind_param($stmt, 'sssssii', $naslov, $podnaslov, $sazetak,
                    $tekst, $kategorija, $archive, $id);
                mysqli_stmt_execute($stmt);
            }
        }

    }

    if(isset($_SESSION['refresh'])) {
        if ($_SESSION['refresh'] == 1) {
            $_SESSION['refresh'] = 0;
            header("Refresh:0");
        }
    }

    $login = false;
    $level = false;
    if(isset($_SESSION['login'])) {
        $login = true;
        if($_SESSION['level'] == 1) {
            $level = true;

            $query = 'SELECT * FROM artikli';
            $result = mysqli_query($dbc, $query);
        }
    }
?>
<!DOCTYPE html>
<html lang='hr'>
<head>
    <title>Administracija</title>
    <meta charset='UTF-8'>
    <link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet'>
    <link rel='stylesheet' type='text/css' href='style.css'>
    <link rel='icon' href='img/stern_logo.png' type='image/gif' sizes='16x16'>
</head>
<body>
    <header>
        <img id='logo' src='img/stern_logo.png' alt='logo'>
        <h1>stern</h1>
        <nav>
            <ul>
                <li><a href='index.php'>Home</a></li>
                <li><a href='kategorija.php?id=kultura'>Kultura</a></li>
                <li><a href='kategorija.php?id=sport'>Sport</a></li>
                <li><a href='unos.html'>Unos artikla</a></li>
                <li><a href='prijava.php'>Prijava</a></li>
                <li><a href='registracija.php'>Registracija</a></li>
                <li><a href="odjava.php">Odjava</a></li>
                <li id='desni' class='crveni'><a href='administracija.php'>Administracija</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <?php
        if($level && $login) {
            echo "Dobrodošli " . $_SESSION['username'] . "<br>";
            while ($row = mysqli_fetch_array($result)) {
                echo "
                   <form class='admin' enctype='multipart/form-data' action='' method='POST'>
                        <input type='hidden' name='id' class='form-field-textual' value='" . $row['id'] . "'>
                        <label for='title'>Naslov vjesti:</label> <br>
                        <input type='text' name='title'value='" . $row['naslov'] . "'><br>
                        <label for='subtitle'>Podnaslov vjesti:</label> <br>
                        <input type='text' name='subtitle' id='subtitle' value='" . $row['podnaslov'] . "'><br>
                        <label for='about'>Kratki sadržaj vijesti (do 50 znakova):</label><br>
                        <textarea name='about' id='' cols='50' rows='10'>" . $row['sazetak'] . "</textarea><br>
                        <label for='content'>Sadržaj vijesti:</label><br>
                        <textarea name='content' id='' cols='50' rows='10'>" . $row['tekst'] . "</textarea><br>
                        <label for='pphoto'>Slika:</label><br>
                        <input type='file' id='pphoto' value='img/" . $row['slika'] . "' name='pphoto'/> <br>
                        <img src='img/" . $row['slika'] . "' width=100px><br>
                        <label for='category'>Kategorija vijesti:</label><br>
                        <select name='category' id='' value='" . $row['kategorija'] . "'>
                             <option value='sport'>Sport</option>
                             <option value='kultura'>Kultura</option>
                        </select><br>
                        <label>Spremiti u arhivu:";
                if ($row['arhiva'] == 0) {
                    echo "<input type='checkbox' name='archive' id='archive'/>";
                } else {
                    echo "<input type='checkbox' name='archive' id='archive' checked/>";
                }
                echo "
                        </label> <br>
                        <input type='hidden' name='id' value='" . $row['id'] . "'><br>
                        <button class='button_admin' type='reset' value='Poništi'>Poništi</button>
                        <button class='button_admin' type='submit' name='update' value='Prihvati'>Izmijeni</button>
                        <button class='button_admin' type='submit' name='delete' value='Izbriši'>Izbriši</button> <br>
                    </form><br><hr>";
            }
        }
        else{
            if(!$login){
                echo "Niste prijavljeni.\n";
            }
            else{
                if(!$level){
                    echo "Nemate pravo uvida u ovaj sadržaj.\n";
                }
            }
        }
        ?>
    </main>
    <footer class='milanArtikl'>
        <p> Marko Zaninović | mzaninovi@tvz.hr | 2021.</p>
    </footer>
</body>
</html>