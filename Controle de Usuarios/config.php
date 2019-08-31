<?php
	$dsn = "mysql:dbname=dadrika;host:localhost";
	$dbuser = "root";
	$dbpass = "";

	try 
	{
		$pdo = new PDO($dsn, $dbuser, $dbpass);
		
	} 
	catch (PDOException $e) 
	{
		echo "Falhou a conexão com o Banco de Dados".$e->getMessage();
	}

