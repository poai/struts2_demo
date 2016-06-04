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
	msg:<s:text name="hello" ></s:text>
	<br />
	msg:<s:property value="getText('hello')"/>
	<br />
	sss:<s:text name="ss"></s:text>
	<br />
	codes:<s:text name="%{getText('codes')}"></s:text>
	<br />
	student.name:<s:text name="student.name"></s:text>
	
	<s:form >
		<s:textfield key="code"></s:textfield>
		<br />
		<s:textfield></s:textfield>
	</s:form>
</body>
</html>