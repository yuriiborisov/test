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

//$result = mysqli_query($con,"SELECT name FROM blacklistapp_blackclient where phone=".$phonenum);// get name
//$result = mysqli_query($con,"SELECT comment FROM blacklistapp_blackclient as bb join blacklistapp_comment as bc where //bb.id=bc.bclient_id");//.$phonenum);//get comments
$query ="SELECT comment FROM blacklistapp_blackclient as bb 
join blacklistapp_comment as bc where bb.id=bc.bclient_id and bb.phone=".$phonenum;
//$result = mysqli_query($con,"SELECT comment FROM blacklistapp_comment");
//$result = mysqli_query($con,"SELECT name FROM blacklistapp_blackclient where phone=".$phonenum);// where phone=".$phone_num;
$result = mysqli_query($con,$query);// where phone=".$phone_num;
$datas = array();

//$array = array('lastname', 'email', 'phone');
if(mysqli_num_rows($result)>0){
    while($row=mysqli_fetch_assoc($result)){
        $datas[]=$row;
        echo $row['comment']."<br>";
    }
}
//foreach($datas as $data){
//    echo $data;
//}


//$row = mysqli_fetch_row($result);

 //$data = $datas[0];

//if($data){
//print_r($datas[2]);
    //echo  $datas[2]; 
//}
//mysql_free_result($result);
mysqli_close($con);
?>