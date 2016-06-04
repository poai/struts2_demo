<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("A", "A");
	session.setAttribute("A", "A");
	application.setAttribute("A", "A");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="testActionContext.action?flag=1&flag=2">testActionContext.action</a>
<br />

<a href="testAwareAction.action?flag=1&flag=2">testAwareAction</a>
<br />
<a href="testServletActionContext.action?flag=1&flag=2">testServletActionContext</a>
<br />
<a href="testServletAware.action?flag=1&flag=2">testServletAware</a>
<br />
</body>
</html>