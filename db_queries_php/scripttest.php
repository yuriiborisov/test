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

//$phonenum=$_POST['phonenum'];

$result = mysqli_query($con,"SELECT t3.tag_name FROM `blacklistapp_blackclient` t1 JOIN `blacklistapp_blackclient_tags_added` t2 ON t2.blackclient_id=t1.id JOIN `blacklistapp_tags` t3 ON t3.id=t2.tags_id WHERE t1.phone='+79778519389' ");// where phone=".$phone_num;

$row = mysqli_fetch_array($result,MYSQLI_NUM);

printf ("%s (%s)\n", $row[0], $row[1]);
$data = $row;


    printf("%s ", $row[1]);

if($data){
    echo $data;
}

mysqli_close($con);
?>