<?php

	if (isset($_POST["user"])){
		$user = $_POST["user"];

		$result = groups($user);
		echo json_encode($result);
	}

	function groups($user){
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
		$sql = "SELECT asignatura, grupo, curso FROM relacion_alumno_grupo WHERE alumno = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "s", $user);
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
			$array[$i]['subject'] = $res1;
			$array[$i]['group'] = $res2;
			$array[$i]['course'] = $res3;
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