<?php
	$usuario=$_POST['usuario'];
	$clave=$_POST['clave'];
	
	//conectar base de datos
	$conexion=mysqli_connect("localhost", "root", "", "mi_negocio");
	$consulta="SELECT * FROM usuarios WHERE username='$usuario' and password='$clave'";
	$resultado=mysqli_query($conexion, $consulta);
	
	if($usuario =="") echo  "debe ingresar usuario";
		
	if ($clave =="") echo "debe ingresar clave";
	
	$filas=mysqli_num_rows($resultado);
	if ($filas>0) {
		header("location:index.php");
	}
	else{
		echo "Error en la autentificacion";
	}
	
	mysqli_free_result($resultado);
	mysqli_close($conexion);
?>