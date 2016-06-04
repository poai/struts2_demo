<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<!-- 查看ValueStack的内容 -->
<s:debug></s:debug>

<br>
${studentcode}
<br>
<!-- 访问ValueObjeck的属性 -->
<s:property value="[1].studentCode"/>
<br />
<s:property value="[1].studentName"/>
<br />
<s:property value="[2].studentAge"/>
<br />
<s:property value="[0].studentCode"/>
<s:property value="[0].studentName"/>
<s:property value="[0].studentAge"/>
<hr />
${requestScope.student.studentCode }
<br />
${sessionScope.test.studentCode}
<br />

<s:property value="#request.student.studentName"/>
<br />
<s:property value="#session.test.studentName"/>
<br />
<hr />
<s:property value="@java.lang.Math@PI"/>
<br />
<s:property value="@java.lang.Math@random()"/>
<br />
<s:property value="setStudentName('zhangjinfeng')"/>
<br />
<s:property value="studentName"/>
<%
	String []names={"zjf","zhl","zrb","zl"};
	request.setAttribute("names", names);
%>
<s:property value="#attr.names.length"/>
<s:property value="#attr.names[2]"/>
<br />	
<br />
