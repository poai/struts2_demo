<?php session_start()?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Login Service</title>
    </head>

    <body>
        <?
$code=$_POST["code"];
$pass=$_POST["pass"];
if(!$code||!$pass){
    echo "<script>window.location.href='index.html'</script>";
}else{
    $conn=mysql_connect("localhost","root","root");   
    mysql_selectdb("exam");
    
        $sql="SELECT NAME FROM USER WHERE CODE='".$code."' and pass='".$pass."'";
        $result=mysql_query($sql,$conn);
        $numrows=mysql_num_rows($result);
        if($numrows>0){
            $_SESSION['code']=$code;
            if($row = mysql_fetch_array($result)){
               $_SESSION['name']=$row['NAME'];  
            }
            $sql="SELECT CODE FROM GRADE WHERE CODE='$code'";
            $result=mysql_query($sql,$conn);
            if(mysql_num_rows($result)>0){
                echo "<script>window.location.href='isexam.php'</script>";
                
            }else{
                echo "<script>window.location.href='paper.php'</script>";
            }
        }else{
            echo "<script>window.location.href='index.html'</script>";
        }
}

    
?>
    </body>

    </html>
