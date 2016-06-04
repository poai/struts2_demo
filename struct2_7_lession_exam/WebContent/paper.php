<?
    session_start();
    if(!$_SESSION['code']){
       echo("<script>window.location.href='index.html'</script>"); 
    }
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>考试中心</title>
        <script src="jquery-tab/js/jquery-2.1.1.min.js"></script>
        <style>
            * {
                padding: 0px;
                margin: 0px;
                font-falimy: 楷体;
                color: black;
            }
            
            body {
                margin: 10px 0px 50px 0px;
            }
            
            .center {
                text-align: center;
            }
            
            .sj_1 {
                text-indent: 1em;
                margin: 5px 0px 5px 0px;
            }
            
            .sj_2 {
                text-indent: 2em;
                margin: 5px 0px 5px 0px;
            }
            
            div {
                margin: 10px 0px 10px 50px;
            }

        </style>
        <script>
            function submit_paper() {
                var count = 0;
                $(".single").each(function() {
                    var istrue = false;
                    $(this).find("input").each(function() {
                        if (eval(this).checked) {
                            istrue = true;
                        }

                    });
                    if (!istrue) {
                        count++;
                    }
                });
                $(".mulit").each(function() {
                    var istrue = false;
                    $(this).find("input").each(function() {
                        if (eval(this).checked) {
                            istrue = true;
                        }

                    });
                    if (!istrue) {
                        count++;
                    }
                });
                if (count > 0) {
                    if (confirm("您还有" + count + "个题目没有回答，确认提交?")) {
                    }else{
                     return;   
                    }
                }
                if (confirm("提交后不可修改！！确定要提交试卷吗?")) {
                    document.forms[0].submit();
                } else {

                }
            }
        </script>
        <style>
            h1 {
                font-size: 60px;
                color: #0099CC;
            }
            
            h2 {
                font-size: 40px;
                color: gray;
            }
            
            h3 {
                font-size: 25px;
                color: gray;
            }
            
            label {
                font-size: 20px;
                color: black;
            }
            
            a {
                font-size: 25px;
                color: #0099CC;
            }

        </style>
    </head>
    <?
$conn=new mysqli("localhost","root","root","exam");
if($conn->connect_error){
    die("数据库连接异常");
}else{
    $sql="SELECT CODE,NAME,A,B,C,D,ANSWER FROM TOPIC WHERE TYPE='single'";
    $result=$conn->query($sql);
}
?>

        <body>
            当前用户:<span style="color:red;"><? echo $_SESSION['name']."<hr />";?></span>

            <form action="handler_topic_server.php" method="post" enctype="application/x-www-form-urlencoded">
                <h1 class="center">卓越二期 HTML CSS 基础测试(卷一)</h1>
                <hr>
                <h2 class="sj_1">一、单项选择题(每题3分,共计3×20=60分)</h2>
                <? $count=0; ?>
                    <? while($row=$result->fetch_assoc()){ 
       $count++;
    ?>
                        <h3 class="sj_2"><? echo $count."、".htmlspecialchars($row['NAME']); ?></h3>
                        <div class="single">
                            <!--<div><? echo($row['ANSWER']);?></div>-->
                            <input type="radio" name="<? echo $row['CODE']; ?>" value="A">
                            <label for="">A、
                                <? echo htmlspecialchars($row["A"]);?>
                            </label>
                            <br>
                            <input type="radio" name="<? echo $row['CODE']; ?>" value="B">
                            <label for="">B、
                                <? echo htmlspecialchars($row["B"]);?>
                            </label>
                            <br>
                            <input type="radio" name="<? echo $row['CODE']; ?>" value="C">
                            <label for="">C、
                                <? echo htmlspecialchars($row["C"]);?>
                            </label>
                            <br>
                            <input type="radio" name="<? echo $row['CODE']; ?>" value="D">
                            <label for="">D、
                                <? echo htmlspecialchars($row["D"]);?>
                            </label>
                        </div>
                        <? } ?>
                            <?
        $sql="SELECT CODE,NAME,A,B,C,D,ANSWER FROM TOPIC WHERE TYPE='mult'";
        $result=$conn->query($sql);     
    ?>
                                <h2 class="sj_1">二、多项选择题(每题4分,共计4×10=40分)</h2>
                                <? $count=0; ?>
                                    <? while($row=$result->fetch_assoc()){ 
       $count++;
    ?>
                                        <h3 class="sj_2"><? echo $count."、".htmlspecialchars($row['NAME']); ?></h3>
                                        <div class="mulit">
                                            <!-- <div><? echo($row['ANSWER']);?></div>-->
                                            <input type="checkbox" name="<? echo $row['CODE']."[]"; ?>" value="A">
                                            <label for="">A、
                                                <? echo htmlspecialchars($row["A"]);?>
                                            </label>
                                            <br>
                                            <input type="checkbox" name="<? echo $row['CODE']."[]"; ?>" value="B">
                                            <label for="">B、
                                                <? echo htmlspecialchars($row["B"]);?>
                                            </label>
                                            <br>
                                            <input type="checkbox" name="<? echo $row['CODE']."[]"; ?>" value="C">
                                            <label for="">C、
                                                <? echo htmlspecialchars($row["C"]);?>
                                            </label>
                                            <br>
                                            <input type="checkbox" name="<? echo $row['CODE']."[]"; ?>" value="D">
                                            <label for="">D、
                                                <? echo htmlspecialchars($row["D"]);?>
                                            </label>
                                        </div>
                                        <? } ?>
                                            <hr>
                                            <input type="hidden" name="user" id="user" value="<?php echo $_SESSION['code'];?>" />
                                            <a href="javascript:void(0);" onclick="submit_paper()">提交试卷</a>
            </form>
        </body>

    </html>
