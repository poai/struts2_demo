<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:debug></s:debug>
	<s:fielderror name="code" theme="simple"></s:fielderror>
	<hr />
	<s:form action="input.action" method="post">
		<s:textfield name="code" label="Code"></s:textfield>
		<s:textfield name="name" label="Name"></s:textfield>
		<s:textfield name="birth" label="Birth"></s:textfield>
		<s:submit></s:submit>
	</s:form>
</body>
</html>