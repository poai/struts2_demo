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
<s:debug></s:debug>

<s:property value="fieldErrors.code[0]"/>
<hr />
<s:property value="errors.code[0]"/>
<hr />
<s:property value="actionMessages[0]"/>
<hr />

<s:form action="input.action" method="post" theme="css_xhtml">
	<s:textfield name="code" label="Code" ></s:textfield>
	<s:textfield name="name" label="Name"></s:textfield>
	<s:radio list="{'男','女'}"  name="sex" label="性别"></s:radio>
	<s:checkboxlist list="{'篮球','足球','排球','棒球'}" name="likes" label="爱好" ></s:checkboxlist>
	<s:select list="{'西北师范大学','兰州交通大学','甘肃政法学院'}" name="school" ></s:select>
	<s:submit value="提交"></s:submit>
</s:form>
</body>
</html>