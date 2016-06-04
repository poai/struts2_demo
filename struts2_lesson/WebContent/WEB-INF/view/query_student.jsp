<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table{
	
		width: 800px;
		border-collapse: collapse;
	}
	table,tr,th,td{
		border: solid 1px blue;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th>code</th>
			<th>name</th>
			<th>sex</th>
			<th>school</th>
			<th>操作</th>
		</tr>
		<s:iterator value="#request.students" var="ss">
			
			<tr>
				<td><s:property value="value.code"/> </td>
				<td><s:property value="value.name"/></td>
				<td><s:property value="value.sex"/></td>
				<td><s:property value="value.school"/></td>
				<td>
					<s:a href="delete_student.action?id=%{value.id}">删除</s:a>
					<s:a href="editor_student.action?id=%{value.id}">修改</s:a>
				</td>
			</tr>
		
		</s:iterator>
	
	</table>
</body>
</html>