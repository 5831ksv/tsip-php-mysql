<?PHP
$server = 'localhost'; 
$username = 'root'; 
$password = 'usbw'; 
$dbname = 'bus_station';

$connect = mysqli_connect($server,$username,$password,$dbname); 
mysqli_select_db($connect, $dbname);
?>