<?php
$conectardb=mysql_connect('localhost','root','123456');

if(!$conectardb){
echo "No se pudo conectar con el servidor";

}else{
$sconectar=mysql_select_db('clinica');
}

?>
