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
<!--Struts 表单标签  -->
	<s:form action="inputAction.action" method="post">
		<s:textfield name="code" label="Code"></s:textfield>
		<s:textfield name="name" label="Name"></s:textfield>
		<!--1.使用OGNL表达式定义List集合  -->
		<%-- <s:radio list="{'男','女'}" name="sex"></s:radio> --%>
		<!--2.使用OGNL表达式定义Map集合  -->
		<s:radio list="#{'boy':'男','girl':'女'}" name="sex"></s:radio>
		<s:submit value="提交"></s:submit>
	</s:form>
</body>
</html>