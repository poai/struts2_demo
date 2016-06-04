<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	table{
		width:500px;
		border-collapse: collapse;
	}
	table,tr,td{
		border: 1px,solid,blue;
	
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<hr />
	<s:form action="emp-save.action" method="post">
		<s:textfield name="firstName" label="FirstName"></s:textfield>
		<br />
		<s:textfield name="lastName" label="LastName"></s:textfield>
		<br />
		<s:textfield name="email" label="Email"></s:textfield>
		<br />
		<s:submit value="提交"></s:submit>
	</s:form>
	<hr />
	<table>
		<thead>
			<tr>
				<td>ID</td>
				<td>FirstName</td>
				<td>LastName</td>
				<td>Email</td>
				<td>Edit</td>
				<td>Delete</td>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="#request.emps">
				<tr>
					<td>${employeeId }</td>
					<td>${firstName }</td>
					<td>${lastName }</td>
					<td>${email }</td>
					<td><a href="emp-edit?employeeId=${employeeId}">Edit</a></td>
					<td><a href="emp-delete?employeeId=${employeeId}">Delete</a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>