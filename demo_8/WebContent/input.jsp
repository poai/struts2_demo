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
	<s:fielderror ></s:fielderror>
	<hr />
	<s:form action="input.action" method="post" enctype="multipart/form-data">
		<s:token ></s:token>
		<s:textfield name="code" label="Code"></s:textfield>
		<s:file name="file" label="Image"></s:file>
		<hr />
		<s:file name="file" label="Image"></s:file>
		<s:submit value="提交"></s:submit>
	</s:form>
</body>
</html>