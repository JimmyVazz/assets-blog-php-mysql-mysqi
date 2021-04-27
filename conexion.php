<?php

$mysqli = new mysqli('localhost', 'root', '', 'abarrotes'); //Objeto mysqli

if($mysqli->connect_error){  //Si hubo algún error lanzamos con detalle 
    die("Error en la conexion" . $mysqli->connect_error);
}else{
    echo "<h1> Database connected </h1>"; // Si todo al 100%

    $SQL = "SELECT * FROM productos"; //query

    if ($resultado = $mysqli->query($SQL)) { //Si el query resulta OK, lo guardamos en resultado
        
        while ($row = $resultado->fetch_assoc()) { //Iteramos sobre cada fila, accediendo con el nombre del atributo
            echo "<p>" . $row["idProducto"]  . $row["nombreProducto"] . $row["precio"]
            . $row["fecha_caducidad"] . $row["stock"] . "</p>";           
            echo "<br>";
        }
        // Liberamos memoria
        $resultado->close();
    }
}

?>