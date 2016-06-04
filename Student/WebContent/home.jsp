<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入外部样式表 -->
<link rel="stylesheet" type="text/css" href="/Student/css/home.css">
</head>
<body>
	<div class="box">
		<div class="top">
		<span>当前用户:</span><span style="color:red"><%=session.getAttribute("user") %></span>
		</div>
		<div class="middle">
			<div class="menu">
				<ul>
					<li>
						<a href="/Student/student/add_student.jsp" target="frame">学生添加</a>
					</li>
					<li>
						<a href="queryAll_student.action" target="frame">查询全部学生信息</a>
					</li>
					<li>
						<a href="queryByPage.action" target="frame">学生分页查询</a>
					</li>
					<li>
						<a href="">学生添加</a>
					</li>
					<li>
						<a href="">学生添加</a>
					</li>
					<li>
						<a href="">学生添加</a>
					</li>
					<li>
						<a href="">学生添加</a>
					</li>
				</ul>
			</div>
			<div class="content">
				<iframe style="width:100%;height:100%;border-width:0px" name="frame"></iframe>
			</div>
		</div>
		<div class="foot">
			<h3 style="text-align:center">创新思维.版权所有</h3>
		</div>
	</div>
</body>
</html>