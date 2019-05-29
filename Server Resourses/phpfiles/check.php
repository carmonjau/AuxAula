<?php

	if (isset($_POST["user"]) && isset($_POST["pass"])){
		$user = $_POST["user"];
		$pass = $_POST["pass"];

		$result = check($user, $pass);
		echo json_encode($result);
	}

	function check($user, $pass){
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
		$sql = "SELECT id, pass, nombre FROM alumno WHERE id = ? AND pass = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "ss", $user, $pass); 

		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		// Binding results
		$aux->bind_result($res1, $res2, $res3);
		$array = array();

		// Fetch for the user
		// Preparing return values
		$aux->fetch();
		$array['id'] = $res1;
		$array['pass'] = $res2;
		$array['name'] = utf8_encode($res3);

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