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
${exception}
<br />
${exception.message }
<br />
${exception.getMessage()}
<br />
<s:property value="exception"/>
<br />
<s:property value="exception.message"/>
<br />
<!-- 打印异常信息栈 -->
<s:property value="exceptionStack"/>
</body>
</html>