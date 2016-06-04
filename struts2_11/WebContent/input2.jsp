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
	
	<s:debug></s:debug>
	<s:fielderror ></s:fielderror>
	<!--age 40-60  -->
	<h1>40-60</h1>
	<s:form action="input2.action" method="post">
		<s:textfield name="age" key="student.age"></s:textfield>
		<s:textfield name="name" key="student.name"></s:textfield>
		<s:radio list="{'男','女'}" key="student.sex" name="sex"></s:radio>
		<s:submit></s:submit>
	</s:form>
</body>
</html>