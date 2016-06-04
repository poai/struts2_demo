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
	<s:form action="emp-save"  >
<%-- 	<s:form action="emp-save"  theme="simple"> --%>
		<s:textfield name="name" label="Name" theme="simple"> </s:textfield>
		<s:textfield name="passWord" label="PassWord"></s:textfield>
		<s:radio list="#{'1':'boy','0':'girl' }" name="gender" label="Gender"></s:radio>
		<s:select list="#request.depts" listKey="deptId" listValue="deptName" name="dept" label="Deptment"></s:select>
		<s:checkboxlist list="#request.roles" listKey="roleId" listValue="roleName" name="roles" label="Role"></s:checkboxlist>
		<s:textarea name="desc" label="Desc"></s:textarea>
		<s:submit></s:submit>
	</s:form>
</body>
</html>