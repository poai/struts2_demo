<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="login.action" method="post">
	<label>code</label>
	<input type="text" name="userCode">
	<br>
	<label>pass</label>
	<input type="text" name="userPass">
	<br>
	<label>age</label>
	<input type="text" name="userAge">
	<br>
	<label>sex</label>
	<input type="radio" name="userSex" value="男">男
	<input type="radio" name="userSex" value="女">女
	<br>
	<label>likes</label>
	<input type="checkbox" name="userLikes" value="篮球">篮球
	<input type="checkbox" name="userLikes" value="足球">足球
	<input type="checkbox" name="userLikes" value="网球">网球
	<br>
	<input type="submit" value="提交"/>	
</form>
</body>
</html>