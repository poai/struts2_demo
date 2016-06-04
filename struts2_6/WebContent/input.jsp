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
<!--三 、Struts 表单标签  -->
	<!--1.form  -->
	
	<%-- <s:set name="theme" value="'xhtml'" scope="request"></s:set> --%>
	<s:form action="input.action" method="post" >
		<!--2.textfield  -->
		<s:textfield name="code" label="Code" theme="simple"></s:textfield>
		<!--3.password  -->
		<s:password name="pass" label="Pass"></s:password>
		<!--4.radio  -->
		<s:radio list="{'男','女'}" name="sex" label="Sex"></s:radio>
		<!--5.checkboxlist  -->
		<s:checkboxlist list="{'篮球','足球','排球','棒球'}" name="likes" label="Likes"></s:checkboxlist>
		<s:select list="{'西北师范大学','兰州交通大学','甘肃政法学院'}" name="school" label="School"></s:select>
		<s:submit value="提交"></s:submit>
	</s:form>
</body>
</html>
<!--四 、Struts 的主题 
	.simple 	简单的主题
	.xhtml 		默认的主题 xhtml的标准
	.css_xhtml  css_xhtml的标准
	.ajax       ajax主题(目前无效)
	
	1.配置主题
		.在独立的标签中配置  theme
		.在form 元素中配置 theme
		.在 page,request,session,application 域中存储key为theme的字段
		.在struts.xml中配置
			struts.ui.theme
		
		
-->