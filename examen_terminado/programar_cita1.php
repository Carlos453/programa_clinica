<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <h1><strong>¿Que citas programamos Doctor?</strong></h1>
  </head>
  <body>

    <?php
    include('conexion.php');
    $nombre=$_POST['nombre'];
    $sexo=$_POST['sexo'];
    $residencia=$_POST['residencia'];
    $edad=$_POST['edad'];
    $telefono=$_POST['telefono'];
    $fecha_consulta=$_POST['proxima_consulta'];
    $hora_consulta=$_POST['hora'];

    $nombre=$_POST['nombre'];
    if(isset($_POST['nombre'])){
      if(is_null($_POST['nombre'])
       or $_POST['nombre']==''){
    }else{
    $sql = "insert into programa_cita(nombre,sexo,residencia,edad,telefono,fecha_cita,hora_cita) values ('$nombre','$sexo','$residencia','$edad','$telefono','$fecha_consulta','$hora_consulta')";
    }
    }
     ?>
    <form class="" action="programar_cita1.php" method="post">
   <p><label><strong>Nombre:</strong> <input type = "text" name="nombre" placeholder="Ingrese el nombre"/></label></p>
      <p><label><strong>Sexo:</strong> <input type = "text" name="sexo" placeholder="Fecha de nacimiento"/></label></p>
      <p><label><strong>Residencia :<strong> <input type = "text" name="residencia" placeholder="Ingrese la residencia"/></label></p>
      <p><label><strong>Edad:<strong><input type = "text" name="edad" placeholder="Ingrese la edad"/></label></p>
      <p><label><strong>Tel&eacutefono:</strong> <input type = "text" name="telefono" placeholder="Numero telefonico"/></label></p>
      <p><label><strong>Fecha para la consulta:</strong> <input type = "text" name="proxima_consulta" placeholder="Ingrese el nombre"/></label></p>
      <p><label><strong>Hora:</strong> <input type = "text" name="hora" placeholder="¿A que hora es la consulta?"/></label></p>
      <input type= "submit" value="Enviar"/>
      </form>
      <?php
      $ver=mysql_query($sql);
      include 'tabla_citas1.php';
      ?>
      <p>Para regresar al menu presione
      <a href="menu.php">Aquí</a><br>
    </body>
  </html>
