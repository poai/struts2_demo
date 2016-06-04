<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>考试结果</title>
</head>
<body>
<?php
session_start();
$conn=new mysqli("localhost","root","root","exam");
if($conn->connect_error){
    die("数据库服务异常");
}else{
    $sql="SELECT CODE,GRADE FROM GRADE WHERE CODE='$_SESSION[code]'";   
    /*echo $sql;*/
    $result=$conn->query($sql);
    while($row=$result->fetch_assoc()){
        echo "code:".$row['CODE']."<br>";
        echo "grade:".$row['GRADE']."<br>";
        if($row['CODE']<60){
            echo "同志抄PPT吧......";
        }
    }
    
}
?>    
</body>
</html>