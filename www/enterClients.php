<html>
<head>

<meta charset="UTF-8">
<title>Запись нового клиента</title>

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
	var form = document.forms.client;
	nameReg = /^[а-яА-Я]+(-[а-яА-Я]+)?$/
	console.log("nameReg="+form.firstname.value.match(nameReg));
	name_true = false
	if (form.firstname.value.match(nameReg)) 
	{
		show_error("nameCheck",1);
		name_true = true;
	} else {
		show_error("nameCheck",0);
	}

	if (name_true) {
		form.submit();
	}
}
</script>
</head>
<body>
<H2>Запись нового клиента </H2>
<table border=0>
	<form name='client' action='' method='POST'>
		<tr><td>Имя<td><input type='text' name='firstname' size=30 maxsize=50 placeholder='Имя' required><td><div id='nameCheck'></div>
		<tr><td>Фамилия <td><input type='text' name='lastname' size=30 maxsize=50 placeholder='Фамилия' required>
		<tr><td>Отчество<td><input type='text' name='patronym' size=30 maxsize=50 placeholder='Отчество' required>
		<tr><td>Номер паспорта<td><input type='text' name='numberpassp' size=30 maxsize=50 placeholder='Номер паспорта' required><td>
		<tr><td>Телефон<td><input type='text' name='phonenumber' size=30 maxsize=50 placeholder='Телефон' required><td>
		<tr><td><td><input type='hidden' name='action' value='enterdata'>
		<tr><td><td><input type='button' value='Добавить запись' onclick='validate();'><input type='reset' value='Сброс'>
	</form>
</table>

<?PHP
include("config/config.php");

if (isset($_POST['firstname'])&&isset($_POST['lastname'])&&isset($_POST['patronym'])&&isset($_POST['numberpassp'])&&isset($_POST['phonenumber']))
{

	$my_insert="insert into clients value (null,'".$_POST['firstname']."','".$_POST['lastname']."','".$_POST['patronym']."','".$_POST['numberpassp']."','".$_POST['phonenumber']."')";
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
	{echo "Данные занесены .<br> <a href='index.php'>на главную</a>";}	
}	
?>
</body>
</html>