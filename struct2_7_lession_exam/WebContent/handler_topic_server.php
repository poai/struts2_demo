<?php
session_start();
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Document</title>
    </head>

    <body>
    <?php
    $conn=new mysqli("localhost","root","root","exam");
    if($conn->connect_error){
        die("数据库服务异常");
    }else{
        $code=$_SESSION['code'];
        $sql="SELECT CODE FROM GRADE WHERE CODE='$code'";
        $result=$conn->query($sql);
        if($result->num_rows>0){
            echo "<script>window.location.href='isexam.php'</script>";
        }else{
            
            $answers="";
            $total =0;
            $sql="SELECT CODE,ANSWER,TYPE FROM TOPIC";
            $result=$conn->query($sql);
            if($result->num_rows>0){
                while($row=$result->fetch_assoc()){
                    echo $row['TYPE'];
                    if($row['TYPE']=="single"){
                         if(isset($_POST[$row['CODE']])){
                            $answer=$_POST[$row['CODE']];
                            if($answer==$row['ANSWER']){
                                $total+=3;
                            }
                            $answers.=$row['CODE']."_".$answer.",";
                        }else{
                             $answers.=$row['CODE']."_N,";
                        }
                    }else{
                        if(isset($_POST[$row['CODE']])){
                            $temp=$_POST[$row['CODE']]; 
                            $answer=implode($temp);
                            echo $answer."<br>";
                            if($answer==$row['ANSWER']){
                                $total+=4;
                            }
                            $answers.=$row['CODE']."_".$answer.",";
                        }else{
                            $answers.=$row['CODE']."_N,"; 
                        }
                    }
                }
            }
            echo $answers;
            $date=date("Y-m-d");
            $name=$_SESSION['name'];
            $sql="INSERT INTO GRADE(CODE,NAME,GRADE,ANSWER,SUBMIT_TIME) VALUES('$_POST[user]','$name','$total','$answers','$date')";
           /* echo $sql;*/
            if($conn->query($sql)){
                echo "提交成功"."<br>";
            }
            echo "总分:".$total."<br>";
            if($total>=90){
                echo "不错哦继续加油啦!!!"; 
            }else if($total>=80){
                echo "再接再励哈,还可以做到更好的哦!!!"; 
            }else if($total>=60){
                echo "考的不理想吧?要奋力追赶了哈!!!"; 
            }else{
                echo "该抄PPT了吧......"; 
            }   
        }
    }
?>
    </body>

    </html>
