<?php

	if (isset($_POST["subject"]) && isset($_POST["group"]) && isset($_POST["course"]) && isset($_POST["date1"]) && isset($_POST["date2"])){
		$subject = $_POST["subject"];
		$group = $_POST["group"];
		$course = $_POST["course"];
		$date1 = $_POST["date1"];
		$date2 = $_POST["date2"];

		$result = exercises($subject, $group, $course, $date1, $date2);
		echo json_encode($result);
	}

	function exercises($subject, $group, $course, $date1, $date2){
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
		$sql = "SELECT id, nombre, enlace FROM ejercicio e where e.id IN (SELECT ejercicio FROM relacion_ejercicio_dia WHERE asignatura = ? AND grupo = ? AND curso = ? AND fecha_inicio >= ? AND fecha_inicio <= ?)";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "sssss", $subject, $group, $course, $date1, $date2);
		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		// Binding results
		$aux->bind_result($res1, $res2, $res3);
		$array = array();
		$i = 0;

		// Fetch for every class
		// Preparing return values
		while($aux->fetch()){
			$array[$i]['id'] = $res1;
			$array[$i]['name'] = $res2;
			$array[$i]['link'] = $res3;
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