<?php

	if (isset($_POST["user"]) && isset($_POST["document"]) && isset($_POST["notes"])){
		$user = $_POST["user"];
		$document = $_POST["document"];
		$notes = $_POST["notes"];

		$result = storeNotes($user, $document, $notes);
		echo json_encode($result);
	}

	function storeNotes($user, $document, $notes){
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

		// First deleting previous notes
		$sql = "DELETE FROM student_notes WHERE student = ? AND document = ?";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "ss", $user, $document); 

		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");

		// Second, inserting the new notes
		$sql = "INSERT INTO student_notes (student, document, notes) VALUES (?, ?, ?)";
		$aux = mysqli_prepare($connection, $sql);
		mysqli_stmt_bind_param($aux, "sss", $user, $document, $notes); 

		$query = $aux->execute();

		// If query failed
		if (!$query) die("Query failed.");
		
		$res["success"] = $query;

		// Close connection
		$close = mysqli_close($connection);

		return $res;
	}
	   
?>