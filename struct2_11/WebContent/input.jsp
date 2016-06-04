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
<s:form method="post" action="input.action" >
	<s:textfield name="age" label="Age"></s:textfield>
	<s:textfield name="birth" label="birth"></s:textfield>
	<s:textfield name="student"></s:textfield>
	<s:textfield name="student.name" label="Student.name"></s:textfield>
	<s:textfield name="student.code" label="Student.code"></s:textfield>
	<s:submit value="提交"></s:submit>
</s:form>
<hr />
<s:debug></s:debug>
<hr />
<s:form action="testConnection.action" method="post">
	<%-- <s:textfield name="students[0].name" label="students[0].name"></s:textfield>
	<s:textfield name="students[0].code" label="students[0].code"></s:textfield>
	<s:textfield name="students[1].name" label="students[1].name"></s:textfield>
	<s:textfield name="students[1].code" label="students[1].code"></s:textfield>
	<s:textfield name="students[2].name" label="students[2].name"></s:textfield>
	<s:textfield name="students[2].code" label="students[2].code"></s:textfield> --%>
	<s:textfield name="students[0]" label="students[0]"></s:textfield>
	<s:textfield name="students[1]" label="students[1]"></s:textfield>
	<s:textfield name="students[2]" label="students[2]"></s:textfield>
	<s:submit value="提交"></s:submit>
</s:form>
</body>
</html>