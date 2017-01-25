<?PHP 
include("config/config.php");
?>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<p><a name="top"></a></p>

<?PHP
if (isset($_SESSION['auth']) && 1==$_SESSION['auth']) 
{
echo "Здравствуйте ".$_SESSION['name'];
echo "&nbsp;<a href='exit.php'>Выход</a>";
}
?>
<br>
<hr>

<?PHP

	?>
	<H4 align="center">Автовокзал Шира. Ниже представлен список доступных маршрутов по Средиземью</H4> 
		<center><fieldset style="heiht:400px; width:60%;">
  		<legend align=center><a name="route">Маршруты из Шира</a></legend>
		<table bgcolor="" cellspacing="0" cellpadding="3" bordercolor="" border="1">
		<tr bgcolor="silver">
		<th>Id маршрута</th>
		<th>Нормер маршрута</th>
		<th>Назначение</th>
		<th>Время выезда</th>
		<th>Время в пути</th>
		<th>Id автомобиля</th>
		</tr>
	<?php
  $userstable="route";

  $query="SELECT * FROM $userstable";

  $result=mysqli_query($connect,$query);
    if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
           return false;
           }

	while ($row = mysqli_fetch_array($result))
	{
		echo "<tr><td>".$row['id_route'];
		echo "<td>".$row['numroute'];
		echo "<td>".$row['destination'];
		echo "<td>".$row['timeturnout'];
		echo "<td>".$row['timeroad'];
		echo "<td>".$row['id_auto'];
	};

 echo "</table></fieldset>";

?>

<H4 align="center">Автопарк</H4> 

		<center><fieldset style="heiht:400px; width:60%;">
  		<legend align=center><a name="auto">Автопарк</a></legend>
		<table bgcolor="" cellspacing="0" cellpadding="3" bordercolor="" border="1">
		<tr bgcolor="silver">
		<th>Id автомобиля</th>
		<th>Марка машины</th>
		<th>Год</th>
		<th>Номер vin</th>
		<th>Места для пассажиров</th>
		</tr>
	<?php
  $userstable="bus";
  $query="SELECT * FROM $userstable";
  $result=mysqli_query($connect,$query);
    if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
           return false;
           }
	while ($row = mysqli_fetch_array($result))
	{
		echo "<tr><td>".$row['id_auto'];
		echo "<td>".$row['mark1'];
		echo "<td>".$row['yearmaking'];
		echo "<td>".$row['vin'];
		echo "<td>".$row['numberofplace'];
	};

 echo "</table></fieldset>";
	?>
	
		<H4 align="center">Таблица с клиентами</H4>
	
		<center><fieldset style="heiht:400px; width:40%;">
  		<legend align=center><a name="client">Клиенты</a>&nbsp;&nbsp;<a href="enterClients.php"> Ввести данные</a></legend>
		<table bgcolor="" cellspacing="0" cellpadding="3" bordercolor="" border="1">
		<tr bgcolor="silver">
		<th>Имя</th>
		<th>Фамилия</th>	
		<th>Отчество</th>
		<th>Номер паспорта</th>
		<th>Телефон</th>
		</tr>
	<?php
  $userstable="clients";
  $query="SELECT * FROM $userstable order by firstname,lastname,patronym,numberpassp";
 // echo "$query";
  //Выполнение запроса к БД, сохраненное в переменной $result
  $result=mysqli_query($connect,$query);
    if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
           return false;
           }
										
	//вывод данных
	while ($row = mysqli_fetch_array($result))
	{
		echo "<tr><td>".$row['firstname'];
		echo "<td>".$row['lastname'];
		echo "<td>".$row['patronym'];
		echo "<td>".$row['numberpassp'];
		echo "<td>".$row['phonenumber'];
	};

 echo "</table></fieldset>";

?>

<H4 align="center">Компании перевозчики</H4> 

		<center><fieldset style="heiht:400px; width:40%;">
  		<legend align=center><a name="carrier">Перевозчики</a></legend>
		<table bgcolor="" cellspacing="0" cellpadding="3" bordercolor="" border="1">
		<tr bgcolor="silver">
		<th>Название компании</th>
		<th>адресс</th>
		<th>Номер телефона</th>
		<th>Тип компании</th>
		</tr>
	<?php
  $userstable="carrier";
  $query="SELECT * FROM $userstable";
  $result=mysqli_query($connect,$query);
    if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
           return false;
           }
	while ($row = mysqli_fetch_array($result))
	{
		echo "<tr><td>".$row['namecompany'];
		echo "<td>".$row['adress'];
		echo "<td>".$row['phonenumber'];
		echo "<td>".$row['typecompany'];
	};

 echo "</table></fieldset>";
	?>

	<H4 align="center">Диспетчеры</H4> 

		<center><fieldset style="heiht:400px; width:40%;">
  		<legend align=center><a name="dispatcher">Диспетчеры</a></legend>
		<table bgcolor="" cellspacing="0" cellpadding="3" bordercolor="" border="1">
		<tr bgcolor="silver">
		<th>Id диспетчера</th>
		<th>Имя</th>
		<th>Фамилия</th>
		<th>Отчество</th>
		<th>Номер телефона</th>
		</tr>
	<?php
  $userstable="dispatcher";
  $query="SELECT * FROM $userstable";
  $result=mysqli_query($connect,$query);
    if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
           return false;
           }
	while ($row = mysqli_fetch_array($result))
	{
		echo "<tr><td>".$row['id_disp'];
		echo "<td>".$row['firstname'];
		echo "<td>".$row['lastname'];
		echo "<td>".$row['patronym'];
		echo "<td>".$row['phonenumber'];
	};

 echo "</table></fieldset>";
	?>

		<H4 align="center">Водители</H4> 

		<center><fieldset style="heiht:400px; width:60%;">
  		<legend align=center><a name="driver">Водители</a></legend>
		<table bgcolor="" cellspacing="0" cellpadding="3" bordercolor="" border="1">
		<tr bgcolor="silver">
		<th>Id водителя</th>
		<th>Имя</th>
		<th>Фамилия</th>
		<th>Отчество</th>
		<th>Стаж</th>
		<th>Категория</th>
		<th>Номер телефона</th>
		<th>Дата рождения</th>
		</tr>
	<?php
  $userstable="driver";
  $query="SELECT * FROM $userstable";
  $result=mysqli_query($connect,$query);
    if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
           return false;
           }
	while ($row = mysqli_fetch_array($result))
	{
		echo "<tr><td>".$row['id_driver'];
		echo "<td>".$row['firstname'];
		echo "<td>".$row['lastname'];
		echo "<td>".$row['patronym'];
		echo "<td>".$row['experience'];
		echo "<td>".$row['category'];
		echo "<td>".$row['phonenumber'];
		echo "<td>".$row['dateofborn'];
	}

 echo "</table></fieldset>";
	?>
	
		<H4 align="center">Страхование</H4> 

		<center><fieldset style="heiht:400px; width:50%;">
  		<legend align=center><a name="insuranc">Страховые компании</a></legend>
		<table bgcolor="" cellspacing="0" cellpadding="3" bordercolor="" border="1">
		<tr bgcolor="silver">
		<th>Id компании</th>
		<th>Название</th>
		<th>Адрес</th>
		<th>Номер телефона</th>
		<th>Тип компании</th>
		</tr>
		
	<?php
  $userstable="insuranc";
  $query="SELECT * FROM $userstable";
  $result=mysqli_query($connect,$query);
    if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
           return false;
           }
	while ($row = mysqli_fetch_array($result))
	{
		echo "<tr><td>".$row['id_insurcompany'];
		echo "<td>".$row['namecompany'];
		echo "<td>".$row['adress'];
		echo "<td>".$row['phonenumber'];
		echo "<td>".$row['typecompany'];
	}

 echo "</table></fieldset>";
	?>

	
		<H4 align="center">Кассиры</H4> 

		<center><fieldset style="heiht:400px; width:30%;">
  		<legend align=center><a name="trader">Кассиры</a></legend>
		<table bgcolor="" cellspacing="0" cellpadding="3" bordercolor="" border="1">
		<tr bgcolor="silver">
		<th>Id кассира</th>
		<th>Имя</th>
		<th>Фамилия</th>
		<th>Отчество</th>
		<th>Номер телефона</th>
		</tr>
		
	<?php
  $userstable="trader";
  $query="SELECT * FROM $userstable";
  $result=mysqli_query($connect,$query);
    if (!$result)
           {
           $dberror=mysqli_error($connect);
           echo $dberror;
           return false;
           }
	while ($row = mysqli_fetch_array($result))
	{
		echo "<tr><td>".$row['id_trader'];
		echo "<td>".$row['firstname'];
		echo "<td>".$row['lastname'];
		echo "<td>".$row['patronym'];
		echo "<td>".$row['phonenumber'];
	}

 echo "</table></fieldset>";
	?>
	
<p><a href="#top">Наверх</a></p>

</body>
</html>