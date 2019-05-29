<?php

	if (isset($_POST["subject"]) && isset($_POST["group"]) && isset($_POST["course"]) && (isset($_POST["date"]))){
		$subject = $_POST["subject"];
		$group = $_POST["group"];
		$course = $_POST["course"];
		$date = $_POST["date"];

		$result = classList($subject, $group, $course, $date);
		echo json_encode($result);
	}

	function classList($subject, $group, $course, $date){
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
		$sql = "SELECT fecha_inicio, fecha_fin FROM calendario_grupo WHERE asignatura = ? AND grupo = ? AND curso = ? AND fecha_inicio <= ? AND fecha_fin >= ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "sssss", $subject, $group, $course, $date, $date);
		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		// Binding results
		$aux->bind_result($res1, $res2);
		$array = array();
		$i = 0;

		// Fetch for every class
		// Preparing return values
		while($aux->fetch()){
			$array[$i]['start'] = $res1;
			$array[$i]['end'] = $res2;
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