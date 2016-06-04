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

<!--3.访问异常  
		.exception 				异常对象
		.exception.message 		异常消息
		.exceptionStack 		异常栈
-->
<s:debug></s:debug>
exception:<s:property  value="exception"/>
<br />
exception.message:<s:property value="exception.message"/>
<br />
exceptionStack:<s:property value="exceptionStack"/>
</body>
</html>