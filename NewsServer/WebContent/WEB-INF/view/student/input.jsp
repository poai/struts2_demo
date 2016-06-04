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
	<h1>学生信息添加</h1>
	
	<s:form theme="css_xhtml" action="student/add.action" method="post">
		<s:textfield label="学号" name="code"></s:textfield>
		<s:fielderror fieldName="code"></s:fielderror>
		<s:textfield label="姓名" name="name"></s:textfield>
		<s:fielderror fieldName="name"></s:fielderror>
		<s:radio list="{'男','女' }" name="sex" label="性别"></s:radio>
		<s:fielderror fieldName="sex"></s:fielderror>
		<s:select list="{'甘肃政法大学','兰州交通大学','西北师范大学','西北名族大学'}" label="学校" name="school">
		<s:fielderror fieldName="school"></s:fielderror>
		
		</s:select>
		<s:submit value="提交"></s:submit>
	</s:form>
	


</body>
</html>