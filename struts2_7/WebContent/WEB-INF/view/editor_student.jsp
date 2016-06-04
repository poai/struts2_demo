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
	<s:form action="save_student.action" method="post">
	
		<!--使用隐藏域存储Student的id  -->
		<s:hidden name="id" ></s:hidden>
		<s:textfield name="code" label="Code"></s:textfield>
		<s:textfield name="name" label="Name"></s:textfield>
		<s:radio list="{'男','女'}" name="sex" label="sex"></s:radio>
		<s:checkboxlist list="{'篮球','足球','排球','棒球'}" name="likes" label="Likes"></s:checkboxlist>
		<s:select list="{'兰州交通大学','西北师范大学','甘肃政法学院'}" name="school" label="School"></s:select>
		<s:submit value="保存"></s:submit>
	</s:form>
	
</body>
</html>