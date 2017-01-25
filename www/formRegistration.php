<html>
<head>

<meta charset="UTF-8">
<title>Регистрация</title>

<script language="JavaScript">

function show_error(fieldName,p) {
	if (p==1)
	{
	document.getElementById(fieldName).innerText = "";
	document.getElementById(fieldName).style.color = "green";
	}
	else
	{
	document.getElementById(fieldName).innerText = "Некорректно заполнено поле";
	document.getElementById(fieldName).style.color = "red";
	}
}

function validate()
{
	var form = document.forms.registration;
	nameReg = /^[а-яА-Я]+(-[а-яА-Я]+)?$/
	console.log("nameReg="+form.name.value.match(nameReg));
	name_true = false
	if (form.name.value.match(nameReg)) 
	{
		show_error("nameCheck",1);
		name_true = true;
	} else {
		show_error("nameCheck",0);
	}
	var logReg = /[a-zA-Z0-9]$/

	log_true = false
	if (form.login.value.match(logReg)) 
	{
		show_error("logCheck",1);
		log_true = true;
	} else {
		show_error("logCheck",0);
	}

	if (name_true && log_true) {
		form.submit();
	}
}
</script>
</head>
<body>
<H2>Регистрация </H2>
Необходимо заполнить все поля.
<table border=0>
<form name='registration' action='' method='POST'>
<tr><td>Имя<td><input type='text' name='name' size=30 maxsize=50 placeholder='Имя' required><td><div id='nameCheck'></div>
<tr><td>Логин<td><input type='text' name='login' size=10 maxsize=10 placeholder='логин' required><td><div id='logCheck'></div>
<tr><td>Пароль<td><input type='password' name='password' size=10 maxsize=10 placeholder='пароль' required>
<tr><td><td><input type='hidden' name='action' value='registr_user'>
<tr><td><td><input type='button' value='Зарегистрироваться' onclick='validate();'><input type='reset' value='Сброс'>
</form>
</table>

<?PHP
include("config/config.php");
if (isset($_POST['login'])&&isset($_POST['password']))
{
	$my_insert="insert into users value ('".$_POST['login']."','".md5($_POST['password'])."','".$_POST['name']."')";
	echo "<!--".$my_insert."-->";
	$result=mysqli_query($connect,$my_insert);
	   $flag_error=false;
    	if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
	   echo "<br>Ошибка в ".$my_insert;
	   $flag_error=true;
           return false;
           }
	if ($flag_error==false)
	{echo "Пользователь ".$_POST['name']." Зарегистрирован.<br> <a href='index.php'>на главную</a>";}	
}	
?>
</body>
</html>