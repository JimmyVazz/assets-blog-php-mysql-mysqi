<?php

$mysqli = new mysqli('localhost', 'root', '', 'abarrotes');

if($mysqli->connect_error){
    die("Error en la conexion" . $mysqli->connect_error);
}else{
    echo "<h1> Database connected </h1>";
    
    $SQL = "SELECT * FROM productos";

    if ($resultado = $mysqli->query($SQL)) {
        
        while ($row = $resultado->fetch_assoc()) {
            echo "<p>" . $row["idProducto"]  . $row["nombreProducto"] . $row["precio"]
            . $row["fecha_caducidad"] . $row["stock"] . "</p>";           
            echo "<br>";
        }
        // Liberamos memoria
        $resultado->close();
    }
}

?>