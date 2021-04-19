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

$query ="SELECT tag_name FROM blacklistapp_blackclient_tags_added as badt join blacklistapp_blackclient as bb join blacklistapp_tags as bt where bb.id=badt.blackclient_id and bt.id = badt.tags_id and bb.phone =".$phonenum;

$result = mysqli_query($con,$query);
$datas = array();

if(mysqli_num_rows($result)>0){
    while($row=mysqli_fetch_assoc($result)){
        $datas[]=$row;
        echo $row['tag_name']."<br>";
    }
}

mysqli_close($con);
?>