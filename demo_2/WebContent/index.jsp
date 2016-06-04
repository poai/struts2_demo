<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:debug></s:debug>
code:<s:property value="code"/>
<br />
name:<s:property value="name"/>
<hr />

code:<s:property value="[2]['code']"/>
<br />
name:<s:property value="[1].name"/>
<hr />
code:<s:property value="#request.code"/>
<br />
name:<s:property value="#request.name"/>

<br />
<s:property value="@java.lang.Math@PI"/>
<br />
<s:property value="@cn.comn.zjf.action.StaticTest@time"/>
<hr />
<br />
<s:property value="@cn.comn.zjf.action.StaticTest@getTime()"/>
<br />
</body>
</html>