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
	<!--Struts2 本地化资源文件
		1.Action范围内的本地化资源文件
			.ActionClassName.properties
			.对经过当前Action的页面有效
		2.Package 范围内的本地化资源文件
			.package.properties
			.对经过当前package中的Action的页面有效
			
		3.本地化资源必须通过Action才能访问,且Action必须实现TextProvider 接口
			.ActionSupport 实现了TextProvider 接口
			
		4.在表单元素中使用本地化资源文件
			.表单元素的key属性可以引用一个本地化资源文件
			.优先查找Action范围的本地化资源,没有则从Package范围查找
	
		5.在非表单元素中访问本地化资源文件
			.s:property value="getText('student.code')"
			.s:text name="student.code"
	  -->
	  
	student.code:<s:property value="getText('student.code')"/>
	<br />
	student.code:<s:text name="student.code"></s:text>
	
	
	<s:form acion="input.action" method="post">
		<s:textfield name="code" key="student.code"></s:textfield>
		<s:textfield name="name" key="student.name"></s:textfield>
		<s:radio list="{'男','女'}" key="student.sex"></s:radio>
		<s:submit></s:submit>
	</s:form>
</body>
</html>