<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery-tab/js/jquery-2.1.1.min.js"></script>
<style>
* {
	padding: 0px;
	margin: 0px;
	font-falimy: 楷体;
	color: black;
}

body {
	margin: 10px 0px 50px 0px;
}

.center {
	text-align: center;
}

.sj_1 {
	text-indent: 1em;
	margin: 5px 0px 5px 0px;
}

.sj_2 {
	text-indent: 2em;
	margin: 5px 0px 5px 0px;
}

div {
	margin: 10px 0px 10px 50px;
}
</style>
<script>
	function submit_paper() {
		var count = 0;
		$(".single").each(function() {
			var istrue = false;
			$(this).find("input").each(function() {
				if (eval(this).checked) {
					istrue = true;
				}

			});
			if (!istrue) {
				count++;
			}
		});
		$(".mulit").each(function() {
			var istrue = false;
			$(this).find("input").each(function() {
				if (eval(this).checked) {
					istrue = true;
				}

			});
			if (!istrue) {
				count++;
			}
		});
		if (count > 0) {
			if (confirm("您还有" + count + "个题目没有回答，确认提交?")) {
			} else {
				return;
			}
		}
		if (confirm("提交后不可修改！！确定要提交试卷吗?")) {
			document.forms[0].submit();
		} else {

		}
	}
</script>
<style>
h1 {
	font-size: 60px;
	color: #0099CC;
}

h2 {
	font-size: 40px;
	color: gray;
}

h3 {
	font-size: 25px;
	color: gray;
}

label {
	font-size: 20px;
	color: black;
}

a {
	font-size: 25px;
	color: #0099CC;
}
</style>
</head>
<body>
<body>
	当前用户:
	<span style="color: red;">
		code:${sessionScope.code},name:${sessionScope.name}</span>

	<form action="exam_handler" method="post">
		<h1 class="center">卓越二期 HTML CSS 基础测试(卷一)</h1>
		<hr>
		<h2 class="sj_1">一、单项选择题(每题3分,共计3×20=60分)</h2>

		<s:iterator value="#request.single" var="item" status="st">
			<h3 class="sj_2">
				<s:property value="%{#st.getIndex()+1}" />
				、
				<s:property value="#item.name" />
			</h3>
			<div class="single">
				<input type="radio" name="<s:property value='#item.code'/>"
					value="A"> <label for="">A、 <s:property
						value="#item.a" />
				</label> <br> <input type="radio"
					name='<s:property value='#item.code'/>' value="B"> <label
					for="">B、 <s:property value="#item.b" />
				</label> <br> <input type="radio"
					name="<s:property value='#item.code'/>" value="C"> <label
					for="">C、<s:property value="#item.c" />
				</label> <br> <input type="radio"
					name="<s:property value='#item.code'/>" value="D"> <label
					for="">D、 <s:property value="#item.d" />
				</label>
			</div>
		</s:iterator>
		<h2 class="sj_1">二、多项选择题(每题4分,共计4×10=40分)</h2>
		<s:iterator value="#request.mult" status="st" var="item">
			<h3 class="sj_2">
				<s:property value="%{#st.getIndex()+1}" />
				、
				<s:property value="#item.name" />
			</h3>
			<div class="single">
				<input type="checkbox" name="<s:property value='#item.code'/>"
					value="A"> <label for="">A、 <s:property
						value="#item.a" />
				</label> 
				<br> 
				<input type="checkbox"
					name='<s:property value='#item.code' escape="false"/>' value="B">
				<label for="">B、 <s:property value="#item.b" />
				</label> 
				<br> <input type="checkbox"
					name="<s:property value='#item.code' escape="false" />" value="C">
				<label for="">C、<s:property value="#item.c" escape="false" />
				</label> 
				<br> 
				<input type="checkbox"
					name="<s:property value='#item.code' escape="false"/>" value="D">
				<label for="">D、 <s:property value="#item.d" />
				</label>
			</div>
		</s:iterator>
		<hr>
		<input type="hidden" name="user" id="user" /> 
		<a href="javascript:void(0);" onclick="submit_paper()">提交试卷</a>
	</form>
	<s:debug></s:debug>
</body>
</body>

</html>

