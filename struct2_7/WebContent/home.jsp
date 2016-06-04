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
	<!-- Struts 数据标签
	1.action 	跳转到Action
	2.bean  	创建JavaBean实例
	3.date 		格式化输出一个日期
	4.debug 	在页面中输出调试链接
	5.i18n 		用于指定国际化资源文件的baseName
	6.include 	用于在JSP页面中包含其他的JSP文件或者Servlet
	7.param 	用于设置一个参数，通常是用作bean或者url的子标签
	8.push 		用于将某个值放入ValueStack的栈顶
	9.set 		用于设置一个新变量，并可以将值放入指定的范围
	10.text 	用于输出国际化消息
	11.url 		用于生成一个URL
	12.property 用于输出某个值，包括输出ValueStack,Stack Context,和ActionContext中的值

 -->
	<!-- action 
 		name :action的名称
 		namespace :命名空间
 		executeResult:action 的处理结果是否要包含到本页面
 		ignoreContextParams :该页面的参数是否需要传入新Action的参数中
 -->
	<s:action name="index" executeResult="false" namespace="/"
		ignoreContextParams="false">index</s:action>
	<br />
	<!-- bean
 	
  -->
	<s:bean name="cn.com.zjf.cxsw.Student" var="student">
		<s:param name="code" value="100"></s:param>
		<s:param name="name" value="'cxsw'"></s:param>
		<s:param name="age" value="20"></s:param>
		<!-- s:bean 内部存在于ValueStack 的栈顶 -->
		<s:property value="[0].code" />
		<s:property value="name" />
		<s:property value="age" />
	</s:bean>
	<br />
	<!-- 从Object Stack 中访问  并同时存在于requestScope中-->
	<s:property value="#student" />
	<br /> ${requestScope.student }
	<br />

	<!-- date
			format  格式
			nice 	是否输出时差
			name 	要格式化的日期值
			value 	格式化后的字符串被放入Stack Context中 并放入请求域中;
	 -->

	<s:bean name="java.util.Date" var="date"></s:bean>
	<s:date name="#date" format="yyyy/MM/dd" nice="false" />
	<br />
	<s:date name="#date" nice="false" />
	<br />
	<s:date name="#date" format="yyyy/MM/dd" nice="true" />
	<br /> ${requestScope.date }
	<!-- include param
	 		value  被包含的页面或者Servlet的路径
	  -->
	<%-- 
	  <s:include value="index.jsp">
	  	<s:param name="code" >100</s:param>
	  	<s:param name="name" value="'xiaobaitu'"></s:param>
	  	<s:param name="name" value="age"></s:param>
	  </s:include> 
	  --%>

	<!-- push 将某个值放在ValueStack 的栈顶,当push结束的时候栈顶元素被移除
	   		value  将要被放到栈顶的bean对象;
	   -->
	<br />
	<s:push value="#student">
		<s:property value="[0].code" />
		<s:property value="name" />
		<s:property value="age" />
	</s:push>
	<br />
	<hr />
	<!-- set  将某个值放入指定的范围
	
	 -->
	<s:set var="flag" value="'flag'" scope="page"></s:set>
	<s:set var="flag" value="'flag'" scope="request"></s:set>
	<s:set var="flag" value="'flag'" scope="session"></s:set>
	<s:set var="flag" value="'flag'" scope="application"></s:set>
	<s:set var="flag" value="'flag'" scope="action"></s:set>
	<br> page_:
	<s:property value="#page.flag" />
	page:${pageScope.flag } request:
	<s:property value="#request.flag" />
	session:
	<s:property value="#session.flag" />
	application:
	<s:property value="#application.flag" />
	action:
	<s:property value="#flag" />



	<!-- url url用于生成一个URL地址,可以通过URL标签指定子元素，从而向指定URL发送请求参数
		.action
		.anchor
		.encode
		.escapeAmp
		.forceAddSchemeHostAndPort
		.includeContext
		.includeParams
		.method
		.namespace
		.proletMode
		.scheme
		.value
		.var
	
	
	 -->
	<br />
	<br />
	<s:url value="editGadget.action" scheme="ftp" forceAddSchemeHostAndPort="true"></s:url>
	<br></br>
	<s:debug></s:debug>
</body>
</html>