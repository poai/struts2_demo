<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:debug></s:debug>
<s:fielderror></s:fielderror>
<s:form method="post" enctype="multipart/form-data" action="upload.action" theme="simple">
	<s:file name="file"></s:file>
	<s:textfield name="fileDesc[0]"></s:textfield>
	<br />
	<s:file name="file"></s:file>
	<s:textfield name="fileDesc[1]"></s:textfield>
	<br />
	<s:file name="file"></s:file>
	<s:textfield name="fileDesc[2]"></s:textfield>
	<br />
	<s:submit value="提交"></s:submit>
</s:form>
</body>
</html>