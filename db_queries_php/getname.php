<?php
    $con = mysqli_connect("localhost","root","","darkcheck");

    if(mysqli_connect_errno($con)){
        echo "Failed to connect to MySQL: ". mysqli_connect_error();
        exit();
    }else{
//        echo "Connection successful established";
    }
//check incoding UTF-8
if(!$con->set_charset("utf8")){
    printf("Ошибка при загрузке набора символов utf-8: %s\n", $mysqli->error);
    exit();
}

$phonenum=$_POST['phonenum'];

$query ="SELECT name FROM blacklistapp_blackclient where phone=".$phonenum;

$result = mysqli_query($con,$query);
$datas = array();
$row = mysqli_fetch_array($result);


        echo $row[0];

mysqli_close($con);
?>