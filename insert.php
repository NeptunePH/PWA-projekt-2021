<?php
    include 'connect.php';

    $datumArtikla = date('Y-m-d');
    $naslovArtikla = $_POST['naslovArtikla'];
    $podnaslovArtikla = $_POST['podnaslovArtikla'];
    $sazetakVijesti = $_POST['sazetakVijesti'];
    $sadrzajArtikla = $_POST['sadrzajArtikla'];
    $kategorijaVijesti = $_POST['kategorijaVijesti'];
    $slikaArtikla = $_FILES['slikaArtikla']['name'];

    if(isset($_POST['arhiva'])){
        $archive = 0;
    }
    else{
        $archive = 1;
    }

    $target = 'img/'.$slikaArtikla;
    move_uploaded_file($_FILES['slikaArtikla']['tmp_name'], $target);

    $sql = "INSERT INTO artikli(datum, naslov, podnaslov, sazetak, tekst, slika, kategorija, arhiva) 
                  VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = mysqli_stmt_init($dbc);

    if(mysqli_stmt_prepare($stmt, $sql)){
        mysqli_stmt_bind_param($stmt, 'sssssssi', $datumArtikla, $naslovArtikla, $podnaslovArtikla,
            $sazetakVijesti, $sadrzajArtikla, $slikaArtikla, $kategorijaVijesti, $archive);
        mysqli_stmt_execute($stmt);
    }
    mysqli_close($dbc);
?>