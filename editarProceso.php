<?php
    print_r($_POST);

    if(!isset($_POST['id_pozo'])){
        header('Location: index.php?mensaje=error');
    }

    include 'conexion.php';
    $id_pozo = $_POST['id_pozo'];
    $nombre = $_POST['txtpozo'];


    $sentencia = $bd->prepare("UPDATE pozo SET nombre = ? where id_pozo = ?;");
    $resultado = $sentencia->execute([$nombre, $id_pozo]);

    if ($resultado === TRUE) {
        header('Location: index.php?mensaje=editado');
    } else {
        header('Location: index.php?mensaje=error');
        exit();
    }
    
?>