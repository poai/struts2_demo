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
	<!--1.使用s:property访问字段的错误消息  -->
	<s:property value="fieldErrors.code[0]"/>
	<br />
	<!--2.使用s:fielderror访问字段的错误消息  -->
	<s:fielderror key="name"></s:fielderror>
	<s:form action="input.action" method="post" theme="simple">
		<s:textfield name="students[0].id" label="Code"></s:textfield>
		<br />
		<s:textfield name="students[0].name" label="Name"></s:textfield>
		<br />
		<s:textfield name="students[0].birth" label="Birth"></s:textfield>
		<br />
		<hr />
		<s:textfield name="students[1].id" label="Code"></s:textfield>
		<br />
		<s:textfield name="students[1].name" label="Name"></s:textfield>
		<br />
		<s:textfield name="students[1].birth" label="Birth"></s:textfield>
		
		<s:submit vlaue="提交"></s:submit>
	</s:form>
</body>
</html>