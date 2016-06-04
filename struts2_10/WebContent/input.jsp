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

	<s:debug></s:debug>
	<!--Struts2 国际化资源文件
		1.Action范围内的国际化资源文件
			.ActionClassName_language_country.properties
			.对经过当前Action的页面有效
		2.Package 范围内的国际化资源文件
			.package_language_country.properties
			.对经过当前package中的Action的页面有效
			
		3.国际化资源必须通过Action才能访问,且Action必须实现TextProvider 接口
			.ActionSupport 实现了TextProvider 接口
			
		4.在表单元素中使用国际化资源文件
			.表单元素的key属性可以引用一个国际化资源文件
			.优先查找Action范围的国际化资源,没有则从Package范围查找
	
		5.在非表单元素中访问国际化资源文件
			.s:property value="getText('student.code')"
			.s:text name="student.code"
		6.通过URL 修改语义环境
			.URL?request_locale=en_US
			.URL?request_locale=zh_CN
			
			
		7.Struts2 在Session范围内存储了之前提交的语义环境
			WW_TRANS_I18N_LOCALE=en_US
		8.Struts 定义全局国际化资源文件
		
			.在Struts.xml 中使用struts.custom.i18n.resources 定义全局国际化资源文件名称
			.可以定义不同语义下的国际化资源文件
		9.国际化资源文件的查找过程
			.Action 范围
			.Package 范围
			.Global 范围
		10.i18n拦截器
		
			向Session中存储Local对象,请求参数中获取?存储至Session:(从Session中获取?Session中存储的:默认的)
			
		11.在Action获取国际化资源文件
	  -->
	student.code:<s:property value="getText('student.code')"/>
	<br />
	student.code:<s:text name="student.code"></s:text>
	
	
	<s:form action="input.action" method="post">
		<s:textfield name="code" key="student.code"></s:textfield>
		<s:textfield name="name" key="student.name"></s:textfield>
		<s:textfield name="age" key="student.age"></s:textfield>
		<s:radio list="{'男','女'}" key="student.sex"></s:radio>
		
		<s:submit></s:submit>
	</s:form>
</body>
</html>