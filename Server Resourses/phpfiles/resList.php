<?php

	if (isset($_POST["user"]) && isset($_POST["subject"]) && isset($_POST["group"]) && isset($_POST["course"])){
		$user = $_POST["user"];
		$subject = $_POST["subject"];
		$group = $_POST["group"];
		$course = $_POST["course"];

		$result = resList($user, $subject, $group, $course);
		echo json_encode($result);
	}

	function resList($user, $subject, $group, $course){
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
		$sql = "SELECT fecha_inicio, nota FROM resultados WHERE alumno = ? AND asignatura = ? AND grupo = ? AND curso = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "ssss", $user, $subject, $group, $course);
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
			$array[$i]['day'] = $res1;
			$array[$i]['score'] = $res2;
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