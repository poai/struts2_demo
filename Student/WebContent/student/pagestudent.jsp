<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,cn.com.zjf.model.*"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="/Student/css/queryallstudent.css">
<title>Insert title here</title>
<script>
	var page = ${requestScope.pageModel.page};
	var total = ${requestScope.pageModel.total};
	function homePage() {
		if (page == 1) {
			alert("已经是第一页了");
			return;
		}
		page = 1;
		window.location.href = "queryByPage.action?page=" + page;
	}
	function prePage() {

		if (page > 1) {
			page--;
			window.location.href = "queryByPage.action?page=" + page;
		} else {
			alert("没有上一页了");
		}
	}
	function nextPage() {

		if (page < total) {
			page++;
			window.location.href = "queryByPage.action?page=" + page;
		} else {
			alert("没有下一页了");
		}
	}
	function endPage() {
		if (page == total) {
			alert("已经是最后一页了");
			return;
		}
		page = total;
		window.location.href = "queryByPage.action?page=" + page;
	}
</script>
</head>
<body>
	<s:debug></s:debug>
	<div class="box">
		<div class="title">查询全部学生信息</div>

		<div class="content">
			<table>
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>学校</th>
					<th>操作</th>
				</tr>
				<s:iterator value="#request.pageModel.data" var="student">
					<tr>
						<td><s:property value="code" /></td>
						<td><s:property value="name" /></td>
						<td><s:property value="sex" /></td>
						<td><s:property value="school" /></td>
						<td>
							<s:a href="delete.action?code=%{code}">删除</s:a>
							<s:a href="editor.action?code=%{code}">编辑</s:a>
						</td>
					</tr>
				</s:iterator>

			</table>
		</div>
		<div>
			<span>${requestScope.pageModel.page }/${requestScope.pageModel.total}</span>
			<a href="javascript:void(0);" onclick="homePage()">首页</a> <a
				href="javascript:void(0);" onclick="prePage()">上一页</a> <a
				href="javascript:void(0);" onclick="nextPage()">下一页</a> <a
				href="javascript:void(0);" onclick="endPage()">尾页</a>
		</div>

	</div>

</body>
</html>