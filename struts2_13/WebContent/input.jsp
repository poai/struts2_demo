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
	<s:form action="input.action" method="post">
	
		<!-- 生成一个隐藏域,隐藏域的值和Session域的值保持同步关系 -->
		<s:token></s:token>
		<s:textfield name="id" label="ID"> </s:textfield>
		<s:textfield name="name" label="NAME"> </s:textfield>
		<s:submit></s:submit>
	</s:form>
</body>
</html>