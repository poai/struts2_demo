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
<!--一、Struts 的控制标签  -->
<s:debug></s:debug>
grade:<s:property value="grade"/>
<br />
<!--1.if  -->
<s:if test="grade>=60">
	<h1>及格</h1>
</s:if>

<!--2. if else  -->
<s:if test="grade>=90">
	<h1>优秀</h1>
</s:if>
<s:else>
	<h1>不知道</h1>
</s:else>
<!--3. if elseif else  -->

<s:if test="grade>=90">
	<h1>优秀</h1>
</s:if>
<s:elseif test="grade>=60">
	<h1>及格</h1>
</s:elseif>
<s:else>不及格</s:else>

<!--3.iterator
		.在iterator 中默认会将遍历的对象压入栈顶作为栈顶元素,当循环结束的时候从栈顶移除
		.如果需要访问栈顶元素对象自身  可以直接使用 s:property  不加value || value="top"
		.[0] 代表的是栈本身  value="[0]" 来查看栈内的对象
		
   -->
<!--3.1 普通的for循环 -->
<s:iterator begin="1" end="10" step="2" var="i">
	<h1><s:property value="[0]"/> </h1>
</s:iterator>
<br />
<!--3.2 遍历List集合  -->
<s:iterator value="list"  status="sss">
	<s:debug></s:debug>
	<h1><s:property value="top"/></h1>
	<s:if test="#sss.last">last</s:if>
</s:iterator>
<!--3.3 遍历Map<String,String>集合  -->

<s:iterator value="map" var="item" status="sss">
	<h1><s:property value="key"/> ||<s:property value="[0]"/>  </h1>
</s:iterator>


<!--二、数据标签  -->

<!--1.debug  -->
<s:debug></s:debug>
<!--2.property  -->
<s:property default="<html></html>" value="flag" escapeHtml="true" />

<!--3.text 
		.获取国际化资源
		.首先从国际化资源中查找 name对象的字符串的 资源
		.name 属性默认不支持OGNL表达式   如要要使用OGNL表达式 %{OGNL表达式}
 -->
<br />
grade：<s:text name="%{grade}"  searchValueStack="true" >
</s:text>

<!--4.set
		.向其它对象中设置值
		.scope  范围 application, session, request, page, or action.
  -->
<br />
<s:set name="grade" scope="request" value="#action.grade"></s:set>
grade:<s:property value="#request.grade"/>
</body>
</html>