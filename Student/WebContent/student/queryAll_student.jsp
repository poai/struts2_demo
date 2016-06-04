<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,cn.com.cxsw.model.*"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/Student/css/queryallstudent.css">
<title>Insert title here</title>
</head>
<body>
	<div class="box">
		<div class="title">查询全部学生信息</div>

		<div class="content">
			<s:debug></s:debug>
			<table>
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>学校</th>
				</tr>
				<s:iterator value="#request.students" var="student">
					<tr>
						<td><s:property value="code"/> </td>
						<td><s:property value="name"/></td>
						<td><s:property value="sex"/></td>
						<td><s:property value="school"/></td>
					</tr>
				</s:iterator>

			</table>
		</div>
	</div>

</body>
</html>