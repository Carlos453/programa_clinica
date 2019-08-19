<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Incripciones en m&iacute blog</title>
  </head>
  <body>
    <?php
    include 'conexion.php';
    $sql="select * from consulta";
    $regresar=mysql_query($sql);
     ?>
     <div>
       <table border="2">
         <thead>
           <tr>

             <th>Nombre</th>
             <th>fecha_nacimiento</th>
             <th>Residencia</th>
             <th>Edad</th>
             <th>Telefono</th>
             <th>Fecha para la cinsulta</th>
             <th>Hora de la consulta</th>
             <th>Sintomas del paciente</th>
             <th>Recete</th>

         </tr>
    </thead>
    <tbody>
      <?php while ($filas=mysql_fetch_assoc($regresar)){
         ?>
      <tr>

             <td><?php echo $filas['nombre'] ?></td>
             <td><?php echo $filas['fecha_nacimiento'] ?></td>
             <td><?php echo $filas['residencia'] ?></td>
             <td><?php echo $filas['edad'] ?></td>
             <td><?php echo $filas['telefono'] ?></td>
             <td><?php echo $filas['fecha_consulta'] ?></td>
             <td><?php echo $filas['hora_consulta'] ?></td>
             <td><?php echo $filas['sintomas'] ?></td>
            <td><?php echo $filas['receta'] ?></td>

        </td>
       </tr>
     <?php } ?>
 </table>
   </div>

 </tbody>
 <p>Para programar una nueva consulta presione
 <a href="programar_cita1.php">Aquí</a><br>
 <p>Para consultar por nombre presione
 <a href="busqueda_paciente.php">Aquí</a><br>
 <p>Para consultar por edad presione
 <a href="busqueda_por_edad">Aquí</a><br>
 <p>Para consultar por fecha presione
 <a href="busqueda_por_fecha.php">Aquí</a><br>
 <p>Para regresar al menu presione
 <a href="menu.php">Aquí</a><br>

  </body>
</html>
