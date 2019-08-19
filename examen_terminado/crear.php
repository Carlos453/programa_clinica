
<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Datos</title>
  </head>
  <body>
<?php
include('conexion.php');
$nombre=$_POST['nombre'];
$fecha_nacimiento=$_POST['fecha'];
$residencia=$_POST['residencia'];
$edad=$_POST['edad'];
$telefono=$_POST['telefono'];
$nombre=$_POST['nombre'];
if(isset($_POST['nombre'])){
  if(is_null($_POST['nombre'])
   or $_POST['nombre']==''){
}else{
$sql = "insert into paciente(nombre,fecha_nacimiento,residencia,edad,telefono) values ('$nombre','$fecha_nacimiento','$residencia','$edad','$telefono')";
}
}

?>
<form action= "crear.php" method="post" name="formulario">
<p><label>Nombre: <input type = "text" name="nombre" placeholder="Ingrese el nombre"/></label></p>
<p><label>Fecha de nacimiento: <input type = "text" name="fecha" placeholder="Ingrese fecha de nacimiento"/></label></p>
<p><label>Residencia : <input type = "text" name="residencia" placeholder="Ingrese residencia"/></label></p>
<p><label>Edad: <input type = "text" name="edad" placeholder="Ingrese edad "/></label></p>
<p><label>Telefono: <input type = "text" name="telefono" placeholder="Numero telefonico"/></label></p>
<input type= "submit" value="Enviar"/>


</form>


<?php
$ver=mysql_query($sql);
include 'tabla_historial.php';
?>


</body>
<html>
