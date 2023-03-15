<?php
    print_r($_POST);

    if(!isset($_POST['id_medicion'])){
        header('Location: agregar.php?mensaje=error');
    }

    include 'conexion.php';
    $id_medicion = $_POST['id_medicion'];
    $psi = $_POST['medicion'];
    $id_pozo = $_GET['id_pozo'];


    $sentencia = $bd->prepare("UPDATE medicion SET psi = ? where id_medicion = ?;");
    $resultado = $sentencia->execute([$psi, $id_medicion]);

    if ($resultado === TRUE) {
        header('Location: agregar.php?mensaje=editado&id_pozo='.$id_pozo);
    } else {
        header('Location: agregar.php?mensaje=error&id_pozo='.$id_pozo);
        exit();
    }
    
?>