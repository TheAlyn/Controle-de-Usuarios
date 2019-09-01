<?php
require 'config.php';

$id = 0;
if (isset($_GET['id']) && empty($_GET['id']) == false){
	$id = addslashes($_GET['id']);
}
if (isset($_POST['nome']) && empty($_POST['nome']==false))
{
	$nome = addslashes($_POST['nome']);
	$data = addslashes($_POST['data']);
	$login = addslashes($_POST['login']);
	$senha = md5(addslashes($_POST['senha']));
	$status = addslashes($_POST['status']);

	$sql = "UPDATE usuarios SET NOME_USUARIO = '$nome', DATA_USUARIO = '$data', LOGIN_USUARIO = '$login', SENHA_USUARIO = '$senha', STATUS_USUARIO = '$status' WHERE ID_USUARIO = '$id'";
	$pdo->query($sql);
	
	

	header("Location: index.php");
}


	$sql = "SELECT * FROM usuarios WHERE ID_USUARIO = '$id'";
	$sql = $pdo->query($sql);
	if ($sql->rowCount() > 0) {
		$dado = $sql->fetch();

	}else{
	header("Location: index.php");
}
?>
<form method="POST">
	Nome:<br/>
	<input type="text" name="nome" value="<?php echo $dado['nome']; ?>"/><br/><br/>
	Data de Cadastro:<br/>					
	<input type="date" name="data" value="<?php echo $dado['data']; ?>" /><br/><br/>
	Login:<br/>
	<input type="text" name="login" value="<?php echo $dado['login']; ?>"/><br/><br/>
	Senha:<br/>
	<input type="password" name="senha" value="<?php echo $dado['senha']; ?>"/><br/><br/>
	Status: <br/>
	<input type="text" name="status" value="<?php echo $dado['status']; ?>"/><br/><br/>

	<input type="submit" value="Atualizar"/>
</form>