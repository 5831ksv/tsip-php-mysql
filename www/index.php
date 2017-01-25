<?PHP 
session_start();
include("config/config.php");
?>
<html>
<head>
<meta charset="UTF-8">
<script language="JavaScript">
</script>
</head>
<body>
<?PHP 
if (isset($_SESSION['auth']) && ($_SESSION['auth']==1))
{
include("tableSelect.php");
}
else 
{

	if (!isset($_POST['login']))
	{
	echo "<form action='' method='POST'>
	Введите логин и пароль<br>
	<input type='text' name='login' placeholder='логин' required>
	<input type='password' name='password' placeholder='пароль' required>
	<input type='submit' name='submit' value='OK'>
	<a href='formRegistration.php'>Регистрация</a>
	";
	include("tableSelect.php");
	}
	elseif(isset($_POST['login']))  
	{

		$query="SELECT count(*) as cnt FROM users where login='".$_POST['login']."' and password ='".md5($_POST['password'])."'";

		$result=mysqli_query($connect,$query);
		if (!$result)
	           {
        	   $dberror=mysqli_error($connect);
	           echo $dberror;
	           return false;
	           }

		while ($row = mysqli_fetch_array($result))
		{

			if ($row['cnt']=='1')
			{
				$query1="SELECT name FROM users where login='".$_POST['login']."'";

				$result1=mysqli_query($connect,$query1);
				if (!$result)
	           		{
        	   			$dberror=mysqli_error($connect);
	          			echo $dberror;
	           			return false;
	           		}
				while ($row1 = mysqli_fetch_array($result1))
				{
					$_SESSION['name']=$row1['name'];
				}
				$_SESSION['auth']=1;
				include("tableSelect.php");
				
			}
			else
			{
				echo "<font color=red>Не верный логин или пароль!</font>";
				echo "<br><a href='index.php'>Назад</a>";
			}
		}
			
	}
}
?>
</body>
</html>