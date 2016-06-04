<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/page_500.html" %>
<%
	pageContext.setAttribute("basepath", request.getContextPath() + "/");
	pageContext.setAttribute("path", request.getContextPath() + "/production/");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Welcome</title>
<link href="${path}css/bootstrap.min.css" rel="stylesheet">
<link href="${path}fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="${path}css/animate.min.css" rel="stylesheet">

<link href="${path}css/custom.css" rel="stylesheet">
<link href="${path}css/icheck/flat/green.css" rel="stylesheet">
<script src="${path}js/jquery.min.js"></script>
<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body style="background: #F7F7F7;">

	<div class="">
		<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
			id="tologin"></a>
		<div id="wrapper">
			<div id="login" class="animate form">
				<section class="login_content">
				<form action="${basepath }manage/login.action" method="post">
					<h1>Login Form</h1>
					<div>
						<input type="text" class="form-control" placeholder="Username" name="code"
							required="" />
					</div>
					<div>
						<input type="password" class="form-control" placeholder="Password" name="pass"
							required="" />
					</div>
					<div>
						<a class="btn btn-default submit" onclick="document.forms[0].submit()" href="javascript:void(0)">Log in</a> <a
							class="reset_pass" href="#">Lost your password?</a>
					</div>
					<div class="clearfix"></div>
					<div class="separator">
						<div class="clearfix"></div>
						<br />
						<div>
							<h1>
								<i class="fa fa-paw" style="font-size: 26px;"></i> Gentelella
								Alela!
							</h1>

							<p>©2015 张玉停</p>
						</div>
					</div>
				</form>
				</section>
			</div>
		</div>
	</div>

</body>

</html>