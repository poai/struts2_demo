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
<s:form action="tokentest.action" method="post">
	<!-- 生成一个隐藏域，并向Session中存储字段 -->
	<s:token></s:token>
	<s:textfield name="username" label="userName"></s:textfield>
	<s:submit ></s:submit>
</s:form>
</body>
</html>