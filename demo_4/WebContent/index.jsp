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
	
	<s:set value="60" var="grade" scope="page"></s:set>
	<!--1.if  -->
	<s:if test="true">true</s:if>
	<br />
	<!--2. if else -->
	${pageScope.grade }
	<s:property value="#page.grade"/>
	<s:if test="#attr.grade>=90">优秀</s:if>
	<s:else>不知道</s:else>
	<br />
	<!--3.if elseif else  -->
	<s:if test="#attr.grade>=90">优秀</s:if>
	<s:elseif test="#attr.grade>=60">及格</s:elseif>
	<s:else>不及格</s:else>
	<!--iterator  -->
	<!--空的for循环  -->
	<s:iterator begin="1" end="10" step="2" var="i" >
		<!--访问栈顶的元素  -->
		<h1><s:property value="top"/> </h1>
	</s:iterator>
	<!--遍历List集合  -->
	<s:iterator value="list" var="item" >
		<h1><s:property value="item"/> </h1>
	</s:iterator>
	<!--变厉鬼Map集合  -->
	<s:iterator value="map" var="item" >
		<h1><s:property value="key"/>||<s:property value="value"/> </h1>
	</s:iterator>
	
	<hr />
	<!-- s:property -->
	<s:property default="<html></html>" escapeHtml="true" value="ss"/>
	<br />
	<s:text name="%{list[0]}"  searchValueStack="true" ></s:text>
		
	<s:debug></s:debug>
</body>
</html>