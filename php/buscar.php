<?php
// Traigo mi configuración
include 'config.php';

$url = "https://restcountries.eu/rest/v2/callingcode/";

for ($codigo = 1; $codigo <= 300; $codigo++) {
    // Traigo el arreglo json
    $json = @file_get_contents(($url) . (string) $codigo);
    $obj = json_decode($json);

    if ($obj != null) {
        // Recorro cada objeto del arreglo
        foreach ($obj as $o) {
            $nombrePais = (string) $o->name;
            $capitalPais = (string) $o->capital;
            $region = (string) $o->region;
            $poblacion = $o->population;
            $latitud = $o->latlng[0];
            $longitud = $o->latlng[1];
            $codigoPais = $codigo;

            // Para los nombres que incluyen apostrofes
            $capitalPais = addslashes($capitalPais);
            $nombrePais = addslashes($nombrePais);

            // Busco el pais en la base de datos
            $sql = "SELECT * FROM pais WHERE codigoPais = $codigo";
            $result = mysqli_query($conn, $sql);
            $paisSql = mysqli_fetch_array($result);

            if ($paisSql !== null) {

                // Si el pais existe hago un update

                $sqlUpdate = "UPDATE pais SET nombrePais = '{$nombrePais}', capitalPais = '{$capitalPais}', region = '{$region}', poblacion = '{$poblacion}', latitud = '{$latitud}', longitud = '{$longitud}' WHERE codigoPais = $codigo";

                if ($conn->query($sqlUpdate) === TRUE) {
                    echo $codigo . " || Registro actualizado!" . "\n";
                } else {
                    echo "ERROR: No se ejecuto $sqlUpdate. " . mysqli_error($conn);
                }

            } else {
               
                // Si el pais no existe hago un insert

                $sqlInsert = "INSERT INTO pais (codigoPais, nombrePais, capitalPais, region, poblacion, latitud, longitud) VALUES ('{$codigoPais}', '{$nombrePais}', '{$capitalPais}', '{$region}', '{$poblacion}', '{$latitud}', '{$longitud}')";

                if ($conn->query($sqlInsert) === TRUE) {
                    echo $codigo . " || Nuevo registro creado!" . "\n";
                } else {
                    echo "Error: " . $sqlInsert . "<br>" . mysqli_error($conn);
                }
            }
        }
    } else {
        continue;
    }
}


