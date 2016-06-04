<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生添加</title>
<link rel="stylesheet" type="text/css"
	href="/Student/css/addstudent.css">
<!-- 图片回显的函数 -->
<script src="/Student/js/upload.js"></script>
</head>
<body>
<s:debug></s:debug>
	<div class="box">
		<div class="title">学生添加</div>

		<div class="content">
			<s:form action="add_student.action" method="post"
				enctype="multipart/form-data">
				<!-- 学号 -->
				<div class="line">
					<div class="bottom">
						<label for="code">学号&gt;</label> <input type="text" class="text"
							name="student.code" id="code" value="${requestScope.student.code}"/> 
							<label for="code" class="msg"><s:property value="fieldErrors['student.code'][0]"/></label>
					</div>
				</div>
				<!-- 姓名 -->
				<div class="line">
					<div class="bottom">
						<label for="name">姓名&gt;</label> <input type="text" class="text"
							name="student.name" id="name" value="${requestScope.student.name}"/> <label for="name" class="msg"><s:property value="fieldErrors['student.name'][0]"/></label>
					</div>
				</div>
				<!-- 性别 -->
				<div class="line">
					<div class="bottom">
						<label>性别&gt;</label> <input type="radio" class="text"
							name="student.sex" value="男" checked="checked" ${student.sex=="男"?"checked=''":"" }/><label>男</label>
						<input type="radio" class="text" name="student.sex" value="女" ${student.sex=="女"?"checked=''":""}/><label>女</label>
						<label class="msg"><s:property value="fieldErrors['student.sex'][0]"/></label>
					</div>
				</div>
				<!-- 生日 -->
				<div class="line">
					<div class="bottom">
						<label>生日&gt;</label>
						<input type="text" name="student.birth"    id="birth" class="text" />
						<label class="msg"><s:property value="fieldErrors['student.sex'][0]"/></label>
					</div>
				</div>
				<!-- 爱好 -->
				<div class="line">
					<div class="bottom">
						<label>爱好&gt;</label> <input type="checkbox" class="text"
							name="student.like" value="篮球" /><label>篮球</label> <input
							type="checkbox" class="text" name="student.like" value="足球" /><label>足球</label>
						<input type="checkbox" class="text" name="student.like" value="排球" /><label>排球</label>
						<input type="checkbox" class="text" name="student.like" value="气球" /><label>气球</label>
						<label class="msg"><s:property value="fieldErrors['student.like'][0]"/></label>
					</div>
				</div>
				<!-- 学校 -->
				<div class="line">
					<div class="bottom">
						<label for="school">学校&gt;</label> <select class="text"
							name="student.school" id="school">
							<option value="兰州交通大学">兰州交通大学</option>
							<option value="西北师范大学">西北师范大学</option>
							<option value="兰州城市学院">兰州城市学院</option>
							<option value="甘肃政法学院">兰州交通大学</option>
						</select>
						<label class="msg"><s:property value="fieldErrors['student.school'][0]"/></label>
					</div>
				</div>
				<!-- 简介 -->
				<div class="line" style="height: 110px;">
					<div class="bottom">
						<label for="school">简介&gt;</label>
						<textarea style="width: 800px; height: 80px; text-indent: 2em;"
							class="text" name="student.introduce"></textarea>
					</div>
				</div>
				<!-- 头像 -->
				<div class="line" style="height: 250px;">
					<div class="bottom">
						<label for="school">头像&gt;</label>
						<!-- 
							使用JS工具实现本地图片的回显
							1.引入upload.js
							2.previewImage(文件域对象,img元素的id);
						 -->
						<img src="/Student/image/title.jpg" id="image"> <input
							type="file" onchange="previewImage(this,'image')"
							name="image" />
					</div>
				</div>
				<!-- 提交 -->
				<div class="line">
					<div class="bottom">
						<input type="submit" value="添加" />
					</div>
				</div>
			</s:form>
		</div>
	</div>
</body>
</html>