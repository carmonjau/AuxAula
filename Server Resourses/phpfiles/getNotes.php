<?php

	if (isset($_POST["user"]) && isset($_POST["document"])){
		$user = $_POST["user"];
		$document = $_POST["document"];

		$result = getNotes($user, $document);
		echo json_encode($result);
	}

	function getNotes($user, $document){
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
		$sql = "SELECT notes FROM student_notes WHERE student = ? AND document = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "ss", $user, $document); 

		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		// Binding results
		$aux->bind_result($res1);
		$array = array();

		// Fetch for the user
		// Preparing return values
		$aux->fetch();
		$array['notes'] = utf8_encode($res1);

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