<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	table{
		width:500px;
		border-collapse: collapse;
	}
	table,tr,td{
		border: 1px,solid,blue;
	
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<hr />
	<s:debug></s:debug>
	<s:form action="emp-update.action" method="post">
		<s:hidden name="employeeId"></s:hidden>
		<s:textfield name="firstName" label="FirstName"></s:textfield>
		<br />
		<s:textfield name="lastName" label="LastName"></s:textfield>
		<br />
		<s:textfield name="email" label="Email"></s:textfield>
		<br />
		<s:submit value="提交"></s:submit>
	</s:form>
</body>
</html>