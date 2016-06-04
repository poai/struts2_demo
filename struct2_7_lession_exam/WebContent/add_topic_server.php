<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>添加试题</title>
</head>
<body>
<span>请稍等.........</span>
<?
function geny_code(){
    $str=date("YmdHis"); 
    $str+=rand(100,1000);
    return $str;
}
?>
<?
$type=$_POST["type"];
if($type=="single"){
    $name=$_POST["single_name"];
    $sa=$_POST["single_A"];
    $sb=$_POST["single_B"];
    $sc=$_POST["single_C"];
    $sd=$_POST["single_D"];
    $value=$_POST["single"];
    $single="single";
    //echo $name."_".$sa."_".$sb."_".$sc."_".$sd."_".$value;
    
    $code=geny_code();
    $conn=new mysqli("localhost","root","root","exam");
    if($conn->connect_error){
        die("数据库连接异常");
    }else{
        $stmt=$conn->prepare("INSERT INTO TOPIC(CODE,NAME,A,B,C,D,ANSWER,TYPE)VALUES(?,?,?,?,?,?,?,?)");
        $stmt->bind_param("ssssssss",$code,$name,$sa,$sb,$sc,$sd,$value,$single);  
        $stmt->execute();
        echo"<script>window.location.href='add_topic.html'</script>";
    }
    
}else if($type=="mult"){
    $name=$_POST["mult_name"];
    $ma=$_POST["mult_A"];
    $mb=$_POST["mult_B"];
    $mc=$_POST["mult_C"];
    $md=$_POST["mult_D"];
    $value=$_POST["mult"];
    $values="";
    if($value&&count($value)){
        foreach($value as $str){
            $values.=$str;
        }
    }
    $mult="mult";
    echo $name."_".$ma."_".$mb."_".$mc."_".$md."_".$values;
    
    $code=geny_code();
    $conn=new mysqli("localhost","root","root","exam");
    if($conn->connect_error){
        die("数据库连接异常");
    }else{
        $stmt=$conn->prepare("INSERT INTO TOPIC(CODE,NAME,A,B,C,D,ANSWER,TYPE)VALUES(?,?,?,?,?,?,?,?)");
        $stmt->bind_param("ssssssss",$code,$name,$ma,$mb,$mc,$md,$values,$mult);  
        $stmt->execute();
        echo"<script>window.location.href='add_topic.html'</script>";
    }
}
?>

</body>
</html>