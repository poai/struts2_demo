<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setAttribute("count", 100);

%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="home.action?code=1">home.action</a>
	<br />
	<s:property value="#request.count"/>
	<br />
	<!-- if elseif  else -->
	<s:if test="%{#request.count<100}">
		<h1>count&lt;100</h1>
	</s:if>
	<s:elseif test="#request.count>100">
		<h1>count&gt;100</h1>
	</s:elseif>
	<s:else>
		<h1>count==100</h1>
	</s:else>
	<!-- iterator 用于将集合迭代输出 -->
	<!-- 当作普通的for循环来使用 -->
	<s:iterator begin="1" end="100" step="1" var="temp">
		<span><s:property value="#temp"/></span>
	</s:iterator>
	
	<hr />
	<!-- 用来遍历集合 
		status 状态对象:
				.isFirst()
				.getIndex()
				.isEven() 		是否是偶数
				.isLast() 		
				.isOdd() 		是否是奇数
	-->
	<!-- List -->
	<s:iterator value="myList1" status="st" var="item">
	
		<s:if test="#st.isFirst()">
			first:<s:property value="#item"/>
			<br />
		</s:if>
		<span>
			<s:property value="#item"/>
		</span>
	</s:iterator>	
	<br />
	<!-- map -->
	<s:iterator value="#{'code':'2015001','name':'张金锋','pass':'root' }"  var="ss" >
		<span>
			<s:property value="#ss.value"/>
		</span>	
		<br />
	</s:iterator>
	
	<!-- append 用于将多个集合拼接为一个集合 -->
	<s:append var="newconnection">
		<s:param value="myList1"></s:param>
		<s:param value="myList2"></s:param>
		<s:param value="myList3"></s:param>
	</s:append>
	<br />
	<!-- 遍历合成的新集合 -->
	<s:iterator value="#newconnection" id="item" status="st">
		<span>
			<s:property value="#st.getIndex()+'****'+#item"/>
		</span>
	</s:iterator>
	<!-- marge  用于将多个集合合并为一个集合，排列的顺序有所不同而已  -->
	<s:merge var="newconnection_1">
		<s:param value="myList1"></s:param>
		<s:param value="myList2"></s:param>
		<s:param value="myList3"></s:param>
	</s:merge>
	<br />
	<!-- 遍历合成的新集合 -->
	<s:iterator value="#newconnection_1" id="item" status="st">
		<span>
			<s:property value="#st.getIndex()+'****'+#item"/>
		</span>
	</s:iterator>
	<br />
	<!-- generator  可以将指定字符串按指定分隔符分割成多个子串 -->
	<br />
	<s:generator separator="," val="'创新思维,教育成就卓越未来,明天会更好'" var="result">
	</s:generator>
	<!-- 迭代结果 -->
	<s:iterator value="#result" var="item">
		<span>
			<s:property value="#item"/>
		</span>
	</s:iterator>
	<br />
	<!-- sort
		comparator --实现了Comparator接口的实例对象;
		var 	   --对象存储的key;
		**s:sort  排序后的对象并没有永久的存储在StackValue中而是存储在了当前页面的pageContext域中;
	 	-->
		
	<s:bean name="cn.com.zjf.cxsw.MyComparator" var="mycomparator"></s:bean>
	<s:sort comparator="#mycomparator" var="sort_result" source="myList2" id="sort_result">
		<s:iterator value="#sort_result" var="item" >
			<span>
				<s:property value="#item"/>
			</span>
		</s:iterator>
		<s:debug></s:debug>
	</s:sort>
	<br />
	${pageScope.sort_result}
	<br></br>
	
	<!--  -->
	<s:iterator value="#attr.sort_result" id="item" >
		<span>
			<s:property value="#item"/>
		</span>
	</s:iterator>
	<br />
	
	<br />
	
	<!-- subset 截取子集合
		count :数量;
		source  :截取的集合对象;
		var    :page范围内存储的变量名称;
	
	 -->
	<s:subset count="2" source="myList2" var="sub_result">
	</s:subset>
	<!--  -->
	<s:iterator value="#attr.sub_result" id="item" >
		<span>
			<s:property value="#item"/>
		</span>
	</s:iterator>
	<br />
	<s:debug></s:debug>
</body>
</html>