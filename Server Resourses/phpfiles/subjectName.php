<?php

	if (isset($_POST["subject"]) && isset($_POST["course"])){
		$subject = $_POST["subject"];
		$course = $_POST["course"];

		$result = subjectName($subject, $course);
		echo json_encode($result);
	}

	function subjectName($subject, $course){
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
		$sql = "SELECT nombre FROM asignatura WHERE id = ? AND curso = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "ss", $subject, $course);
		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		// Binding results
		$aux->bind_result($res1);
		$array = array();

		// Fetch for every class
		// Preparing return values
		$aux->fetch();
		$array['name'] = $res1;

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