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
<a href="index.action?request_locale=en_US">EN</a>
<a href="index.action?request_locale=zn_CH">CN</a>
<s:debug></s:debug>
<s:form action="index.action" method="post" theme="simple">
	<!-- 使用OGNL表达式从国际化资源文件中获取数据 -->
	<s:text name="username" /><s:textfield name="username"></s:textfield>
	<br />
	<!-- 使用key属性加载国际化资源文件 -->
	<s:text name="username" /><s:textfield ></s:textfield>
	<br />
	<s:text name="password" /><s:textfield ></s:textfield>
	<s:text name="time">
		<s:param name="date" value="date">
			
		</s:param>
	</s:text>
	<br />
</s:form>

</body>
</html>