<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<?
$conn=mysql_connect("localhost","root","root");
mysql_select_db("exam",$conn);

$code=$_POST["code"];
$name=$_POST["name"];
$pass=$_POST["pass"];
$sql="INSERT INTO USER(CODE,NAME,PASS) VALUES('$code','$name','$pass')";


$result=mysql_query($sql,$conn);

if($result>0){
    echo "<script>window.location.href='add_user.html'</script>";
}else{
    echo "Error<a href='add_user.html'>用户添加</a>";
}
?>
</body>
</html>