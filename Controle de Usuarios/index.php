<?php
require 'config.php';
?>
<a href="adicionarusuario.php">Adicionar novo Usuário</a>
<table border="0" width"100%">
	<tr>
		<th>Nome</th>
		<th>Data Cadastro</th>
		<th>Login</th>
		<th>Senha</th>
		<th>Status</th>
		<th>Ações</th>
	</tr>
	<?php
	$sql = "SELECT * FROM usuarios";
	$sql = $pdo->query($sql);
	if ($sql->rowCount() > 0) 
	{
		foreach ($sql->fetchAll() as $usuarios) 
		{
			echo '<tr>'; 
			echo '<td>'.$usuarios['NOME_USUARIO'].'</td>';
			echo '<td>'.$usuarios['DATA_USUARIO'].'</td>';
			echo '<td>'.$usuarios['LOGIN_USUARIO'].'</td>';
			echo '<td>'.$usuarios['SENHA_USUARIO'].'</td>';
			echo '<td>'.$usuarios['STATUS_USUARIO'].'</td>';
			echo '<td><a href="editarusuario.php?id='.$usuarios['ID_USUARIO'].'">Editar</a> - <a href="excluirusuario.php?id='.$usuarios['ID_USUARIO'].'">Excluir</a> '.'</td>';
			echo '</tr>';
		}
	}
	?>
</table>	