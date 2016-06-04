<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:form action="add_student.action" method="post">
	<s:textfield name="student.code" label="Code"/>
	<s:textfield name="student.name" label="Name"/>
	<s:radio list="{'男','女'}" name="student.sex" label="性别"></s:radio>
	<s:checkboxlist list="{'篮球','足球','排球','棒球'}" name="student.likes" label="爱好"></s:checkboxlist>
	<s:submit value="添加"></s:submit>
</s:form>
<hr />
<a href="query_student.action">query_student.action</a>
</body>
</html>