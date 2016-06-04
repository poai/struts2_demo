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
	<!-- strut2 表单标签
 -->
	<s:form>
		<!--文本域  -->
		<s:textfield name="student.code" type="text"></s:textfield>
		<br />
		<s:textfield name="student.pass" type="pass"></s:textfield>
		<br />
		<!-- 多选框 -->
		<s:checkbox name="like" value="xigua" label="西瓜"></s:checkbox>
		<s:checkbox name="like" value="nangua" label="南瓜"></s:checkbox>
		<!-- 使用checkboxlist 生成多选框 -->
		<s:checkboxlist list="{'item1','item2','item3'}" name="a" label="请选择1"
			labelposition="left">

		</s:checkboxlist>
		<s:checkboxlist
			list="#{'item1':'value1','item2':'value2','item3':'value3'}" name="a"
			label="请选择2" labelposition="left" listKey="key" listValue="value">

		</s:checkboxlist>
		<!-- 单选框 -->
		<s:radio list="{'item1','item2','item3'}" name="a" label="请选择1"
			labelposition="left" />
		<s:radio list="#{'item1':'value1','item2':'value2','item3':'value3'}"
			name="b" label="请选择2" labelposition="left" listKey="key"
			listValue="value">

		</s:radio>
		<!-- select 标签 -->
		<s:select list="{'item1','item2','item3'}" label="请选择"></s:select>
		<s:select list="#{'key1':'value1','key2':'value2','key3':'value3','key4':'value4'}" listKey="key" listValue="value"></s:select>
		<br />
	</s:form>

</body>
</html>