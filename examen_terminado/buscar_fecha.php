
<?php
include 'conexion.php';
$variable=$_POST['buscar2'];
$registros=mysql_query("select * from consulta where fecha_nacimiento='$variable'");
while($registro=mysql_fetch_array($registros)){

echo "<b>Nombre:</b>",$registro['nombre'];
echo "<br>";
echo "<b>Fecha de nacimiento:</b>",$registro['fecha_nacimiento'];
echo "<br>";
echo "<b>Residencia:</b>",$registro['residencia'];
echo "<br>";
echo "<b>Edad:</b>",$registro['edad'];
echo "<br>";
echo "<b>Telefono:</b>",$registro['telefono'];
echo "<br>";
echo "<b>Fecha de su consulta:</b>",$registro['fecha_consulta'];
echo "<br>";
echo "<b>Hora de la consulta:</b>", $registro['hora_consulta'];
echo "<br>";
echo "<b>Sintomas del paciente:</b>",$registro['sintomas'];
echo "<br>";
echo "<b>Receta:</b>",$registro['receta'];
}


?>
<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <p>Para progrmar otra cita a este paciente  presione
    <a href="programar_cita1.php">Aquí</a><br>
  </body>
</html>
