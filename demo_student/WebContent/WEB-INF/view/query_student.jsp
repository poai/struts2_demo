<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table{
		width:800px;
		border-collapse: collapse;
	}
	table,tr,th,td{
		border: 1px solid  blue;
	}

</style>
</head>
<body>
	<table>
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>操作</th>
		</tr>
		<s:iterator value="#request.students">
			<tr>
				<td><s:property value="code"/> </td>
				<td><s:property value="name"/></td>
				<td><s:property value="sex"/></td>
				<td>
					<s:a href="editor_student.action?student.id=%{id}">编辑</s:a>
					<s:a href="delete_student.action?student.id=%{id}">删除</s:a>
				</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>