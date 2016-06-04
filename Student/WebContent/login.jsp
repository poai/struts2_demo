<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/Student/css/login.css">
<script>
	function checkCode(){
		var obj=document.getElementById("code");
		if(obj.value=""){
			alert("请输入用户名");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<s:debug></s:debug>
	<div class="center">
		<s:form action="login.action" method="post" theme="simple">
			<div class="v_center">
				<label>UserCode</label> <s:textfield  name="userCode" class="text" id="code"/>
				<s:fielderror  fieldName="userCode"></s:fielderror>
				<br>
				<label>UserPass</label> <s:password type="password" name="userPass" class="text" id="pass"/>
				<s:fielderror fieldName="userPass"></s:fielderror>
				<br>
				<s:submit value="登陆"/>
			</div>
		</s:form>

	</div>
</body>
</html>