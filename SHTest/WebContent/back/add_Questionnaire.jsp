<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/page_500.html" %>
<%
	pageContext.setAttribute("path", request.getContextPath() + "/production/");
	pageContext.setAttribute("path1", request.getContextPath() + "/umeditor1_2_2-utf8-jsp/");
	
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Welcome ~~~</title>
<link href="${path }css/bootstrap.min.css" rel="stylesheet">
<link href="${path }fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="${path }css/animate.min.css" rel="stylesheet">
<link href="${path }css/custom.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${path }css/maps/jquery-jvectormap-2.0.1.css" />
<link href="${path }css/icheck/flat/green.css" rel="stylesheet" />
<link href="${path }css/floatexamples.css" rel="stylesheet"
	type="text/css" />
<script src="${path }js/jquery.min.js"></script>

<!-- 富文本编辑器 -->
<link href="${path1}themes/default/css/umeditor.css" type="text/css"
	rel="stylesheet">
<script type="text/javascript" src="${path1}third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${path1}umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${path1}umeditor.min.js"></script>
<script type="text/javascript" src="${path1}lang/zh-cn/zh-cn.js"></script>
</head>


<body class="nav-md">

	<div class="container body">

		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">

					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><i class="fa fa-paw"></i>
							<span>欢迎使用</span></a>
					</div>
					<div class="clearfix"></div>

					<div class="profile">
						<div class="profile_pic">
							<img src="${path }images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>张玉停</h2>
						</div>
					</div>
					<br />

					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">

						<div class="menu_section">
							<h3>Admin</h3>
							<ul class="nav side-menu">
								<li class="nv active"><a><i class="fa fa-home"></i>
										Home <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: block;">
										<li class="current-page"><a href="index.jsp">welcome</a></li>
									</ul></li>
								<li><a><i class="fa fa-edit"></i> 招聘信息 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="${basepath}back/add_Job.jsp">添加招聘信息</a></li>
										<li><a href="${basepath}manage/query_Job.action">查询招聘信息</a></li>
									</ul></li>
								<li><a><i class="fa fa-desktop"></i> 热点新闻 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="${basepath}back/add_News.jsp">添加热点新闻</a>
										<li><a href="${basepath}manage/query_News.action">查询热点新闻</a>
									</ul></li>
								<li><a><i class="fa fa-table"></i> 企业管理 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="${basepath}back/add_Enterprise.jsp">添加企业信息</a></li>
										<li><a href="${basepath}manage/query_Enterprise.action">查询企业信息</a></li>
									</ul></li>
								<li><a><i class="fa fa-bar-chart-o"></i> 公告管理<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="add_Questionnaire.jsp">发布公告</a></li>
										<li><a href="query_Questionnaire.jsp">查询</a></li>
									</ul></li>
								<li><a><i class="fa fa-bar-chart-o"></i> 其它<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="#">意见与反馈</a></li>
										<li><a href="query_Questionnaire.jsp">查询意向调查</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="menu_section">
							<h3>Live On</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-bug"></i> 创业新天地 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="e_commerce.html">添加创业之星</a></li>
										<li><a href="e_commerce.html">查询创业之星</a></li>
									</ul></li>
								<li><a><i class="fa fa-windows"></i> 就业政策、法规 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="page_404.html">404 Error</a></li>
										<li><a href="page_500.html">500 Error</a></li>
										<li><a href="plain_page.html">Plain Page</a></li>
										<li><a href="login.html">Login Page</a></li>
										<li><a href="pricing_tables.html">Pricing Tables</a></li>

									</ul></li>
							</ul>
						</div>

					</div>
					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">

				<div class="nav_menu">
					<nav class="" role="navigation">
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>
					</nav>
				</div>

			</div>
			<div class="right_col" role="main">
				<div class="row" style="">问卷添加</div>
				<form novalidate="" id="demo-form2" data-parsley-validate=""
					class="form-horizontal form-label-left" method="post">
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12"
							for="first-name" style="width: 60px;text-align: left;">标题 <span
							class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input data-parsley-id="7190" id="first-name" required="required"
								class="form-control col-md-7 col-xs-12" type="text" name="title">
							<ul id="parsley-id-7190" class="parsley-errors-list"></ul>
						</div>
					</div>
					<div>
						<script type="text/plain" id="myEditor" style="width:1000px;height:240px;"><p>这里我可以写一些输入提示</p></script>
					</div>
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							<button type="reset" class="btn btn-primary">重置</button>
							<button type="submit" class="btn btn-success">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</div>

	<div id="custom_notifications" class="custom-notifications dsp_none">
		<ul class="list-unstyled notifications clearfix"
			data-tabbed_notifications="notif-group">
		</ul>
		<div class="clearfix"></div>
		<div id="notif-group" class="tabbed_notifications"></div>
	</div>

	<script src="${path }js/bootstrap.min.js"></script>


	<!-- bootstrap progress js -->
	<script src="${path }js/progressbar/bootstrap-progressbar.min.js"></script>
	<script src="${path }js/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- icheck -->
	<script src="${path }js/icheck/icheck.min.js"></script>
	<!-- daterangepicker -->
	<script type="text/javascript" src="${path }js/moment.min.js"></script>
	<script type="text/javascript"
		src="${path }js/datepicker/daterangepicker.js"></script>
	<script src="${path }js/custom.js"></script>
	<script type="text/javascript">
    //实例化编辑器
    var um = UM.getEditor('myEditor');
    um.addListener('blur',function(){
        $('#focush2').html('编辑器失去焦点了')
    });
    um.addListener('focus',function(){
        $('#focush2').html('')
    });
</script>
</body>

</html>
