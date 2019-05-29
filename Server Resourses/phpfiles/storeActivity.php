<?php

	if (isset($_POST["subject"]) && isset($_POST["group"]) && isset($_POST["course"]) && isset($_POST["date1"]) && isset($_POST["date2"]) && isset($_POST["user"]) && isset($_POST["app"]) && isset($_POST["time"])){
		$subject = $_POST["subject"];
		$group = $_POST["group"];
		$course = $_POST["course"];
		$date1 = $_POST["date1"];
		$date2 = $_POST["date2"];
		$user = $_POST["user"];
		$app = $_POST["app"];
		$time = $_POST["time"];

		$result = activity($subject, $group, $course, $date1, $date2, $user, $app, $time);
		echo json_encode($result);
	}

	function activity($subject, $group, $course, $date1, $date2, $user, $app, $time){
		// Variables to connect
		$database = "auxaulabd";
		$hostDB = "localhost";
		$userDB = "root";
		$passDB = "";

		// Connection process
		$connection = mysqli_connect($hostDB, $userDB, $passDB, $database);
	
		// If failed
		if (!$connection) die("Connection failed.");


		mysqli_set_charset($connection, "UTF8");


		// First deleting previous activity
		$sql = "DELETE FROM actividad WHERE asignatura = ? AND grupo = ? AND curso = ? AND fecha_inicio = ? AND fecha_fin = ? AND alumno = ? AND aplicacion = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "sssssss", $subject, $group, $course, $date1, $date2, $user, $app); 

		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");

		// Second, inserting the new activity
		$sql = "INSERT INTO actividad (alumno, asignatura, grupo, curso, fecha_inicio, fecha_fin, aplicacion, tiempo) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "ssssssss", $user, $subject, $group, $course, $date1, $date2, $app, $time); 

		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		$res["success"] = $query;

		// Close connection
		$close = mysqli_close($connection);

		return $res;
	}
	   
?>