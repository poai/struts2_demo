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
	<s:form action="input.action" method="post" enctype="multipart/form-data">
		<s:textfield name="dist" label="描述"></s:textfield>
		<s:file name="image" label="头像"></s:file>
		<s:submit></s:submit>
	</s:form>
</body>
</html>