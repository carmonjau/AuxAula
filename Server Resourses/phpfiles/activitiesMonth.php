<?php

	if (isset($_POST["subject"]) && isset($_POST["group"]) && isset($_POST["course"]) && isset($_POST["date1"]) && isset($_POST["date2"]) && isset($_POST["user"])){
		$subject = $_POST["subject"];
		$group = $_POST["group"];
		$course = $_POST["course"];
		$date1 = $_POST["date1"];
		$date2 = $_POST["date2"];
		$user = $_POST["user"];

		$result = activity($subject, $group, $course, $date1, $date2, $user);
		echo json_encode($result);
	}

	function activity($subject, $group, $course, $date1, $date2, $user){
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

		// Making the query
		$sql = "SELECT asignatura, grupo, curso, fecha_inicio, fecha_fin, aplicacion, tiempo FROM actividad WHERE asignatura = ? AND grupo = ? AND curso = ? AND fecha_inicio >= ? AND fecha_fin < ? AND alumno = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "ssssss", $subject, $group, $course, $date1, $date2, $user);
		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		// Binding results
		$aux->bind_result($res1, $res2, $res3, $res4, $res5, $res6, $res7);
		$array = array();
		$i = 0;

		// Fetch for every class
		// Preparing return values
		while($aux->fetch()){
			$array[$i]['subject'] = $res1;
			$array[$i]['group'] = $res2;
			$array[$i]['course'] = $res3;
			$array[$i]['dateStart'] = $res4;
			$array[$i]['dateEnd'] = $res5;
			$array[$i]['app'] = $res6;
			$array[$i]['time'] = $res7;
			$i++;
		}

		//Making the array with the state and data
		$res = array();
		if ($res1 != "")
			$res["success"] = $query;
		else
			$res["success"] = FALSE;
		$res["data"] = $array;

		// Close connection
		$close = mysqli_close($connection);

		return $res;
	}
	   
?>