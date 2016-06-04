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
<h1>INPUT.JSP</h1>
<s:debug></s:debug>

<s:text name="errors.age[0]"></s:text>
<s:fielderror name="age"></s:fielderror>
${fieldErrors.age[0] }
<s:form action="handler.action" method="post">
	<s:textfield name="age" label="Age"></s:textfield>
	<br />
	<s:submit></s:submit>
</s:form>
</body>
</html>