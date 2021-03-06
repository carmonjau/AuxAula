<?php

	if (isset($_POST["subject"]) && isset($_POST["group"]) && isset($_POST["course"])){
		$subject = $_POST["subject"];
		$group = $_POST["group"];
		$course = $_POST["course"];

		$result = numberS($subject, $group, $course);
		echo json_encode($result);
	}

	function numberS($subject, $group, $course){
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
		$sql = "SELECT alumno FROM relacion_alumno_grupo WHERE asignatura = ? AND grupo = ? AND curso = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "sss", $subject, $group, $course);
		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		// Binding results
		$aux->bind_result($res1);
		$array = array();
		$i = 0;

		// Fetch for every class
		// Preparing return values
		while($aux->fetch()){
			$array[$i]['id'] = $res1;
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