<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="/struts-tags" prefix="s" %>

<%
	List<String> sexs=new ArrayList<>();
	sexs.add("男");
	sexs.add("女");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<s:select label="label" name="name" list="{'name1','name2','name3'}" value="'name2'" />
<s:form action="input.action" method="post">
		<s:textfield name="code" label="Code"></s:textfield>
		<s:textfield name="name" label="Pass"></s:textfield>
		<s:radio list="#{'boy':'男','girl':'女 '}" name="sex"></s:radio>
		<s:submit label="提交"></s:submit>
</s:form>
</head>
<body>
</body>
</html>