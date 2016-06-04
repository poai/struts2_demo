<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>INPUT.JSP</h1>
	<s:debug></s:debug>
	<s:fielderror name="age"></s:fielderror>
	<s:fielderror name="count"></s:fielderror>
	<s:form action="handler2.action" method="post">
		<!-- 显示非字段验证消息 -->
		<s:actionerror />
		<s:textfield name="age" label="Age"></s:textfield>
		<br />
		<s:password name="password" label="password"></s:password>
		<br />
		<s:password name="password2" label="password2"></s:password>
		<s:textfield name="count"></s:textfield>
		<s:textfield name="idCard" label="IDCard"></s:textfield>
		<s:submit></s:submit>
	</s:form>
</body>
</html>