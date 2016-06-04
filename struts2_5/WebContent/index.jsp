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
<s:debug></s:debug>
<!--1.使用OGNL表达式访问 ValueStack 中root(CompontRoot 栈)对象中的属性  
	.访问栈中的对象属性不要指定对象，Struts 默认会去从栈顶元素开始依次向下去寻找该属性,找到即返回
	.可以通过下标指定从栈顶的第几个位置开始向下查找属性 
			[2].code;
-->
code:<s:property value="code"/>
<br />
name:<s:property value="name"/>
<hr />

code:<s:property value="[2].code"/>
name:<s:property value="[1].name"/>

<hr />

<!--2.使用OGNL表达式访问 ValueStack 中context(Map<String,Object>) 对象中的属性或者对象的属性
		.要访问context 中的对象需要使用"#" 作为前缀
		.语法 #key.属性 || #key.属性.属性....
  -->
code:<s:property value="#parameters.code"/>
<br />
session:<s:property value="#session.session"/>
<br />
application.people.code:<s:property value="#application.people.code"/>
<br />
arr.people.code:<s:property value="#attr.people.code"/>
<hr />

<!-- 4.使用OGNL 表达式访问静态的属性和方法
		.访问静态的属性   	@class@static_property
		.访问静态的方法	@class@static_method
					.Struts2 中默认不允许访问静态的方法		struts.ognl.allowStaticMethodAccess:true
					.修改排除的条件					struts.ognl.allowStaticMethodAccess  删除Class
 -->
 myName:<s:property value="@cn.com.zjf.action.InputAction@myName"/>
 <br />
 PI:<s:property value="@java.lang.Math@PI"/>
 <br />
 随机数:<s:property value="@java.lang.Math@random()"/>
 <br />
 myName:<s:property value="@cn.com.zjf.action.InputAction@getMyName()"/>
</body>
</html>