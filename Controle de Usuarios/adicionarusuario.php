<?php
require 'config.php';
if (isset($_POST['nome']) && empty($_POST['nome']==false))
{
	$nome = addslashes($_POST['nome']);
	$data = addslashes($_POST['data']);
	$login = addslashes($_POST['login']);
	$senha = md5(addslashes($_POST['senha']));
	$status = addslashes($_POST['status']);

	$sql = "INSERT INTO usuarios SET NOME_USUARIO = '$nome', DATA_USUARIO = '$data', LOGIN_USUARIO = '$login', SENHA_USUARIO = '$senha', STATUS_USUARIO = '$status'";
	$pdo->query($sql);

	header("Location: index.php");

}
?>
<form method="POST">
	Nome:<br/>
	<input type="text" name="nome" /><br/><br/>
	Data de Cadastro:<br/>
	<input type="date" name="data" /><br/><br/>
	Login:<br/>
	<input type="text" name="login" /><br/><br/>
	Senha:<br/>
	<input type="password" name="senha" /><br/><br/>
	Status: <br/>
	<input type="text" name="status" /><br/><br/>

	<input type="submit" value="Cadastrar"/>
</form>