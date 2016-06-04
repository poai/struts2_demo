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
${students }
<hr />
<table>
	<s:iterator value="#request.students" >
	
		<tr>
			<td>${code}</td>
			<td>${name}</td>
			<td>${sex }</td>
			<td>${school }</td>
			<td>
				<a href="/Struts2_CRUD/student/delete?code=${code}">删除</a>
				<a href="/Struts2_CRUD/student/editor?code=${code}">编辑</a>
			</td>
		</tr>
	</s:iterator>
</table>
</body>
</html>