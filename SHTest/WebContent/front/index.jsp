<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page errorPage="/page_500.html"%>
<%
	pageContext.setAttribute("path", request.getContextPath() + "/production/");
	pageContext.setAttribute("basepath", request.getContextPath() + "/");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高校毕业生就业信息网</title>
<style>
</style>
<link type="text/css" rel="stylesheet"
	href="${basepath }front/src/common-new.css">
<link type="text/css" rel="stylesheet"
	href="${basepath }front/src/index-new.css">
<link type="text/css" rel="stylesheet"
	href="${basepath }front/src/gongy-new.css">
<script src="${basepath }front/src/jquery.min.js" type="text/javascript"></script>
<script src="${basepath }front/src/jquery.validate.min.js"
	type="text/javascript"></script>
<script src="${basepath }front/src/share.js"></script>
<link rel="stylesheet" href="${basepath }front/src/share_style0_16.css">
<link rel="stylesheet" href="${basepath }front/src/share_style0_24.css">
<link rel="stylesheet" href="${basepath }front/src/slide_share.css">
<script src="${basepath }front/src/jquery.min.js" type="text/javascript"></script>
<script src="${basepath }front/src/jquery.validate.min.js"
	type="text/javascript"></script>
</head>
<body>
	<s:debug></s:debug>
	<!--头部-->
	<div class="topBg">
		<div class="loginLink" id="loginLink" style="display: block;">
			<form id="login" name="login" action="" method="post">
				<div class="occ">
					<p>
						<i><input name="Occupation" type="radio" value="stu"></i><span>学生</span>
					</p>
					<p>
						<i><input name="Occupation" type="radio" value="rec"></i><span>企业</span>
					</p>
				</div>
				<div class="loginTxt">
					<p>
						<span>账号</span><input id="username" name="username" type="text">
					</p>
					<p>
						<span>密码</span><input id="password" name="password"
							type="password">
					</p>
					<p>
						<input type="submit" id="loginBt" name="loginBt" class="loginBt"
							value="">
					</p>
					<p>
						<span><a href="" id="reg">用户注册</a></span>
					</p>
					<p>
						<span><a href="" id="fpwd">忘记密码</a></span>
					</p>
				</div>
			</form>
		</div>
		<div id="login-userState" class="loginUserState"
			style="display: none;"></div>
		<div class="fr topRight">
			<a href="">就业促进会</a>
		</div>
		<div class="fr topRight">
			<a target="_blank" href="">公务员考试</a>
		</div>
		<div class="fr topRight">
			<a href="">网站首页</a>
		</div>
	</div>
	<!--logo导航-->
	<div class="out_top topLogo">
		<div class="fl logo">
			<a href="" title="北京高校毕业生就业信息网"><img
				src="${basepath }front/src/logo.jpg" alt="北京高校毕业生就业信息网"
				data-bd-imgshare-binded="1"></a>
		</div>
		<div class="fr topNav_wid">

			<div class="topNav fl">
				<ul class="topNav_link">
					<li class="one"><a href="">资讯</a></li>
					<li class="two"><a href="">就业动态</a></li>
					<li><a href="">就业政策</a></li>
					<li><a href="">成功就业</a></li>
				</ul>
				<ul class="topNav_link">
					<li class="one"><a href="">指导</a></li>
					<li class="two"><a href="">网申技巧</a></li>
					<li><a href="">职业规划</a></li>
					<li><a href="">简历指导</a></li>
				</ul>
				<ul class="topNav_link">
					<li class="one"><a href="">招聘</a></li>
					<li class="two"><a href="">招聘信息</a></li>
					<li><a href="">实习信息</a></li>
					<li><a href="">事业单位</a></li>
				</ul>
			</div>
			<div class="topNav fl">
				<ul class="topNav_link">
					<li class="one"><a href="">创业</a></li>
					<li class="two"><a href="">策划书 </a></li>
					<li><a href="">创业指导</a></li>
					<li><a href="">创业资讯</a></li>
				</ul>
				<ul class="topNav_link">
					<li class="one"><a href="">双选</a></li>
					<li class="two"><a href="">就业之家</a></li>
					<li><a href="" target="_blank">教师招聘</a></li>
					<li><a href="">招聘会资讯</a></li>
				</ul>
				<ul class="topNav_link">
					<li class="one"><a href="">院校</a></li>
					<li class="two"><a href="">院校活动</a></li>
					<li><a href="">校园宣讲</a></li>
					<li><a href="">院校招聘</a></li>
				</ul>
			</div>

			<div class="topNav1 fl" style="position: relative;">
				<ul class="topNav_link">
					<li class="one"><a href="">专项</a></li>
					<li class="two"><a href="">应征入伍</a></li>
					<li><a href="">学生村官</a></li>
				</ul>
				<ul class="topNav_link">
					<li class="one"><a href="">专题</a></li>
					<li class="two"><a href="">考研备战</a></li>
					<li><a href="" target="_blank">求职技巧</a></li>
				</ul>
				<ul class="topNav_link">
					<li class="one"><a href="">指南</a></li>
					<li class="two"><a href="" target="_blank">专家答疑</a></li>
					<li><a href="" target="_blank">帮扶计划</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!--广告图片部分-->

	<div class="out01" style="margin-top: 1px;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">

			<tbody>
				<tr>
					<td colspan="2"><a href="" target="_blank"><img
							src="${basepath }front/src/2015jyfwj-951-xiabannian_2.gif"
							width="951px" alt="北京地区2016届高校毕业生就业双选会"
							titile="北京地区2016届高校毕业生就业双选会" data-bd-imgshare-binded="1"></a></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!--最新公告-->
	<div class="out01">
		<div class="gonggao">
			<div class="fl">
				<span class="zt_gg">最新公告：</span>
			</div>
			<div class="fl gonggao_news">
				<!--循环：article count：1-->
				<s:iterator value="tz">
					<span><a href="" target="_blank" style="color: #FF0000"><s:property
								value="title" /> </a></span>
				</s:iterator>
			</div>
		</div>
	</div>
	<!--最新公告结束-->
	<div class="out01">
		<div class="out02" style="margin-top: 3px;">
			<div>
				<table width="100%" height="64" border="0" cellpadding="0"
					cellspacing="0" class="hot02">
					<tbody>
						<tr>
							<td>
								<div>
									<a href="http://www.bjbys.net.cn/kaoyan/" target="_blank"><img
										src="${basepath }front/src/2015_kaoyan_472_68.jpg"
										width="474px" height="68px" alt="2016年考研备战进行时"
										titile="2016年考研备战进行时" data-bd-imgshare-binded="1"></a>
								</div>
							</td>
							<td>
								<div>
									<a href="http://ask.bjbys.net.cn/" target="_blank"><img
										src="${basepath }front/src/zjdy.jpg" alt="bjbys专家答疑"
										width="474px" height="68px" data-bd-imgshare-binded="1"></a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
		<!--中间图片部分结束-->
		<div class="out">
			<div class="wd642 fl">
				<!--最新专题-->
				<div class="wd259 fl">
					<div class="blue_bian">
						<div class="titBg25 dw gd_zt zt_blue">
							<span class="fl zt_cu10">热门职位</span> <span class="fr gd04"><a
								target="_blank" href="/SHTest/home/job_More.action">more</a></span>
						</div>
						<div class="greenCont14 greenBox">
							<dd>
								<a href="#" target="_blank"><span style="">2015年名企宣讲火热进行中</span></a>
							</dd>

						</div>
						<div class="greenBox wd238">
							<a href="#javascript:void(0)"> <img
								src="${basepath }front/src/1_2742325151.jpg" height="74"
								width="107" class="fl" data-bd-imgshare-binded="1">
							</a>
							<div class="fr wd123">
								<a href="#javascript:void(0)" target="_blank">又到了一年一度校园招聘季，校园宣讲会紧锣密鼓，面对这如此密密麻麻的校园...</a>
							</div>

						</div>
						<dl class="greenCont_zt">
							<!--循环：article count：7-->
							<s:iterator value="jobs">
								<dd style="line-height: 28px;">
									<a href="/SHTest/home/job_Info.action?id=${id}&type=热门职位"
										target="_blank"><span style="font-size: 14px;"><s:property
												value="title" /> </span></a>
								</dd>
							</s:iterator>
						</dl>
					</div>
					<!--成功就业彩信部分-->
					<div class="blue_bian mt03 ">
						<div class="titBg25 dw gd_zt zt_blue">
							<span class="fl zt_cu10">就业彩信</span> <span class="fr gd01"><a
								target="_blank" href="">more</a></span>
						</div>
						<div class="greenBox">
							<div class="mt02">
								<!--循环：article count：1-->


								<a href="http://www.bjbys.net.cn/cgjy/wqhg/273204.shtml"
									target="_blank"> <img
									src="${basepath }front/src/1_2732054669.jpg" width="257"
									data-bd-imgshare-binded="1"></a>

							</div>
							<div class="mt06" style="padding: 7px; overflow: hidden;">
								<div class="caixin_fz">
									<!--循环：article count：1-->
									<strong>本期主题：</strong> <a
										href="http://www.bjbys.net.cn/cgjy/wqhg/273204.shtml"
										target="_blank">毕业生租房的那些事</a>

								</div>
							</div>
						</div>
					</div>
					<!--成功就业彩信部分结束-->
				</div>
				<div class="fr wd370">

					<div class="blue_bian titBg">
						<div class="titBg25 dw gd_zt zt_blue">
							<span class="fl zt_cu10">最新动态</span> <span class="fr gd04"><a
								target="_blank" href="/SHTest/home/news_More.action?type=最新动态">more</a></span>
						</div>
						<dl class="greenCont">
							<s:iterator value="zxdt">
								<dd>
									<a href="/SHTest/home/news_Info.action?id=${id}&?type=热门职位"
										target="_blank"><s:property value="title" /> </a>
								</dd>

							</s:iterator>
						</dl>
					</div>
					<!--就业指导部分-->
					<div class="blue_bian mt03 blueTitle">
						<div class="dw gd_zt zt_blue">
							<span class="fl zt_cu10"><a
								href="/SHTest/home/news_More.action?type=就业指导" target="_blank">就业指导</a></span>
						</div>
						<dl class="greenCont01 mt03">
							<!--循环：article count：10-->
							<s:iterator value="jyzd">
								<dd>
									<a href="/SHTest/home/news_Info.action?id=${id}&?type=就业指导"
										target="_blank">${title }</a>
								</dd>
							</s:iterator>
						</dl>
					</div>
					<!--就业指导部分结束-->
				</div>
			</div>
			<div class="fr wd302">
				<!--应征入伍部分-->
				<div class="blue_bian">
					<div class="titBg25 dw gd_zt zt_blue">
						<span class="fl zt_cu10">公务员</span> <span class="fr gd04"><a
							target="_blank" href="/SHTest/home/news_More.action?type=公务员">more</a></span>
					</div>
					<div class="tab_cont01" style="display: block;">
						<div style="padding: 2px 2px 0 2px">
							<script language="javascript" src="${basepath }front/src/304.js"></script>
							<div id="ZCMSAD_304" style="width: 299px; height: 90px;">
								<a href="" onclick="" target="_blank"><img title="公务员专题"
									src="${basepath }front/src/2669101501.jpg" width="299"
									height="90" style="border: 0px;" data-bd-imgshare-binded="1"></a>
							</div>
						</div>
						<dl class="zx_greenCont">
							<!--循环：article count：7-->
							<s:iterator value="gwy">
								<dd>
									<a href="/SHTest/home/news_Info.action?id=${id}&type=公务员"
										target="_blank"><span style="">${title}</span></a>
								</dd>
							</s:iterator>
						</dl>
					</div>
					<div class="tab_cont01">
						<div style="padding: 2px 2px 0 2px">
							<script language="javascript" src="${basepath }front/src/306.js"></script>
							<div id="ZCMSAD_306" style="width: 299px; height: 90px;">
								<a href="http://www.bjbys.net.cn/jyzt/2014zb" onclick=""
									target="_blank"><img title="应征入伍专题"
									src="${basepath }front/src/2648017143.jpg" width="299"
									height="90" style="border: 0px;" data-bd-imgshare-binded="1"></a>
							</div>
						</div>
						<dl class="zx_greenCont">
							<!--循环：article count：7-->


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/yzrwzx/yzrwzx/274223.shtml"
									target="_blank"><span style="">关于2016年度退役大学生士兵就业工作的通知</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/yzrwzx/yzrwzx/275315.shtml"
									target="_blank"><span style="">京津冀共办退役士兵招聘会
										8千多人求职4千...</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/yzrwzx/yzrwzx/275247.shtml"
									target="_blank"><span style="">三部门就直接招收为士官的高等学校学生国家资...</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/yzrwzx/yzrwzx/275209.shtml"
									target="_blank"><span style="">高校学生直招为士官可获国家资助
										中央财政安排</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/yzrwzx/dxrw/275075.shtml"
									target="_blank"><span style="">于旭亮：淮河边的守望者</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/yzrwzx/yzrwzx/274099.shtml"
									target="_blank"><span style="">教育部发布2016年“退役大学生士兵专项硕...</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/yzrwzx/yzrwzx/274123.shtml"
									target="_blank"><span style="">教育部办公厅关于做好2016年“退役大学生...</span></a>
							</dd>

						</dl>

					</div>
					<div class="tab_cont01">
						<div style="padding: 2px 2px 0 2px">
							<script language="javascript" src="${basepath }front/src/307.js"></script>
							<div id="ZCMSAD_307" style="width: 299px; height: 90px;">
								<a href="http://www.bjbys.net.cn/jyzt/cunguan/" onclick=""
									target="_blank"><img title="学生村官专题"
									src="${basepath }front/src/2635046564.jpg" width="299"
									height="90" style="border: 0px;" data-bd-imgshare-binded="1"></a>
							</div>
						</div>
						<dl class="zx_greenCont">
							<!--循环：article count：7-->


							<dd>
								<a href="http://www.bjbys.net.cn/zx/ztxm/xscg/cgpl/263500.shtml"
									target="_blank"><span style="">大学生村官如何在农村锻炼自己</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/xscg/xscgzx/273157.shtml"
									target="_blank"><span style="">北京市2015年大学生村官选聘工作近日结束</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/xscg/xscgzx/273130.shtml"
									target="_blank"><span style="">报告显示：大学生村官成为中国农村创业生力军</span></a>
							</dd>


							<dd>
								<a href="http://www.bjbys.net.cn/zx/ztxm/xscg/cggs/272328.shtml"
									target="_blank"><span style="">十年乡土情——记第一届大学生村官、北大校...</span></a>
							</dd>


							<dd>
								<a href="http://www.bjbys.net.cn/zx/ztxm/xscg/cggs/263497.shtml"
									target="_blank"><span style="">甘肃大学生村官李晓：梦想在西瓜试验田绽放</span></a>
							</dd>


							<dd>
								<a href="http://www.bjbys.net.cn/zx/ztxm/xscg/cggs/271496.shtml"
									target="_blank"><span style="">大学生村官刘媛的座右铭——牙齿天天晒太阳</span></a>
							</dd>


							<dd>
								<a
									href="http://www.bjbys.net.cn/zx/ztxm/xscg/xscgzx/271474.shtml"
									target="_blank"><span style="">北京张镇大学生村官畅谈“互联网+”</span></a>
							</dd>

						</dl>
					</div>
				</div>
				<!--应征入伍部分结束-->
				<!--创业园地部分-->
				<div class="blue_bian mt03 blueTitle">
					<div class="dw gd_zt zt_blue">
						<span class="fl zt_cu10"><a
							href="/SHTest/home/news_More.action?type=创业园地" target="_blank">创业园地</a></span>
					</div>
					<dl class="greenCont01 mt03">
						<!--循环：article count：6-->
						<s:iterator value="cyyd">
							<dd>
								<a href="/SHTest/home/news_Info.action?id=${id}&type=创业园地"
									target="_blank"><s:property value="title" /> </a>
							</dd>
						</s:iterator>
					</dl>
				</div>
				<!--创业园地部分结束-->

			</div>
		</div>
		<div class="out02" style="margin-top: 3px;">
			<div>
				<table width="100%" height="64" border="0" cellpadding="0"
					cellspacing="0" class="hot02">
					<tbody>
						<tr>
							<td>
								<div>
									<a href="http://www.bjbys.net.cn/featured" target="_blank"><img
										src="${basepath }front/src/featured.jpg" alt="北京地区高校就业特色工作项目展"
										width="474px" height="68px" title="北京地区高校就业特色工作项目展"
										data-bd-imgshare-binded="1"></a>
								</div>
							</td>
							<td>
								<div>
									<a href="http://www.bjbys.net.cn/jyzt/sfzxcgz/"
										?target="_blank"><img
										src="${basepath }front/src/sfzxzs468_68.gif"
										alt="北京地区高等学校示范性就业中心成果展" width="471px" height="68px"
										data-bd-imgshare-binded="1"></a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
		<div class="out">
			<div class="wd642 fl">
				<!--左边按钮部分-->
				<div class="fl wd259">
					<div style="margin-top: -1px;">
						<div class="dw03 gd_zt zt_blue">
							<span class="fl zt_cu10">专家答疑</span> <span class="fr"><a
								target="_blank" href="/SHTest/home/news_More.action?type=专家答疑"><img
									src="${basepath }front/src/bjbys_ask2.jpg"
									data-bd-imgshare-binded="1"></a></span>
						</div>
						<div class="greenBox blue_bian blueTitle">
							<dl class="greenCont01">
								<!--循环：article count：9-->
								<s:iterator value="zjdy">
									<dd>
										<a href="/SHTest/home/news_Info.action?id=${id}&type=专家答疑"
											target="_blank"><s:property value="title" /> </a>
									</dd>
								</s:iterator>
							</dl>
						</div>
					</div>

				</div>
				<!--左边按钮部分结束-->
				<div class="fr wd370">
					<div class="blue_bian blueTitle">
						<div class="dw gd_zt zt_blue">
							<span class="fl zt_cu10"><a
								href="/SHTest/home/news_More.action?type=就业政策" target="_blank">就业政策</a></span>
						</div>
						<div class="greenBox">
							<dl class="greenCont01 mt04">
								<!--循环：article count：9-->
								<s:iterator value="jyzc">
									<dd>
										<a href="/SHTest/home/news_Info.action?id=${id}&type=就业政策"
											target="_blank"><s:property value="title" /> </a>
									</dd>
								</s:iterator>
							</dl>
						</div>
					</div>
				</div>
			</div>
			<!--专家在线部分-->
			<div class="fr wd302">
				<div class="blue_bian blueTitle">
					<div class="dw gd_zt zt_blue" style="height: 28px;">
						<span class="fl zt_cu10">微视频</span>
					</div>
					<!--循环：article count：1-->
					<dl class="videoCont">
						<!--循环：article count：4-->
						<s:iterator value="enterprises">
							<dd>
								<a href=""
									target="_blank"><s:property value="name" /> </a>
							</dd>
						</s:iterator>
					</dl>
				</div>
			</div>
		</div>

		<div class="out">
			<div class="wd642 fl">
				<!--左边按钮部分-->
				<div class="fl wd259">
					<div class="blue_bian">
						<div class="btBox" id="gg">
							<!--循环：friendlink count：4-->

							<a href="http://www.jyrc.com.cn/j/default.aspx" target="_blank"><img
								src="${basepath }front/src/2598449548.jpg" alt="北京毕业生档案查询系统"
								class="mt03" data-bd-imgshare-binded="1"></a> <a
								href="http://211.153.18.43:8080/edusy/" target="_blank"><img
								src="${basepath }front/src/2745089985.jpg" alt="北京地区毕业生生源信息查询系统"
								class="mt03" data-bd-imgshare-binded="1"></a> <a
								href="http://xlrz.bjbys.net.cn/" target="_blank"><img
								src="${basepath }front/src/2598455301.gif" alt="学历认证"
								class="mt03" data-bd-imgshare-binded="1"></a>
						</div>
					</div>

				</div>
				<!--左边按钮部分结束-->
				<div class="fr wd370">
					<div class="blue_bian blueTitle">
						<div class="dw gd_zt zt_blue">
							<span class="fl zt_cu10"><a
								href="/SHTest/home/news_More.action?type=院校直通" target="_blank">院校直通</a></span>
							<span class="fr xg_zt"><a target="_blank"
								href="http://www.bjbys.net.cn/yxzt/gztz/index.shtml">工作通知</a></span><span
								class="fr xg_zt"><a target="_blank"
								href="http://www.bjbys.net.cn/yxzt/yxhd/index.shtml">院校活动</a></span><span
								class="fr xg_zt"><a target="_blank"
								href="http://www.bjbys.net.cn/yxzt/xyxjh/index.shtml">校园宣讲会</a></span>
						</div>
						<div class="greenBox">
							<dl class="greenCont01 mt04">
								<!--循环：article count：9-->
								<s:iterator value="xyzt">
									<dd>
										<a href="/SHTest/home/news_Info.action?id=${id}&type=院校直通"
											target="_blank"><s:property value="title" /> </a>
									</dd>
								</s:iterator>
							</dl>
						</div>
					</div>
				</div>
			</div>
			<!--专家在线部分-->
			<div class="fr wd302">
				<div class="blue_bian  blueTitle">
					<div class="dw gd_zt zt_blue">
						<span class="fl zt_cu10"><a
							href="/SHTest/home/news_More.action?type=社团活动" target="_blank">社团活动</a></span>
					</div>

					<div class="greenBox wd290 zhuantibox5">
						<!--循环：article count：1-->
						<ul class="fl">
							<li><a href="" target="_blank"><img
									src="${basepath }front/src/1_2683699359.jpg" alt="社团图片新闻"
									width="149" height="107" data-bd-imgshare-binded="1"></a><span><a
									href="http://www.bjbys.net.cn/yxzt/sthd/268364.shtml"
									target="_blank" style="color: #fff">社团联席会专业化培训</a></span></li>
						</ul>

						<div class="fr" style="margin: 3px 12px 0 0; width: 130px;">
							<dl class="greenCont_shetuan">
								<!--循环：article count：5-->
								<s:iterator value="sthd">
									<dd>
										<a href="/SHTest/home/news_Info.action?id=${id}&type=社团活动"
											target="_blank"><s:property value="title" /> </a>
									</dd>
								</s:iterator>
							</dl>

						</div>
					</div>

					<dl class="greenCont_shetuan_list">
						<!--循环：article count：4-->
						<s:iterator value="sthd">
							<dd>
								<a href="/SHTest/home/news_Info.action?id=${id}&type=社团活动"
									target="_blank"><s:property value="title" /> </a>
							</dd>
						</s:iterator>

					</dl>
				</div>
			</div>
		</div>
		<div>
			<div class="dw02 blue_bian mt03 blueTitle"
				style="background: #f5f5f5;">
				<div class="fl" style="width: 84px;">
					<span class="fl zt_cu10" style="padding-top: 2px;">实用导航</span>
				</div>
				<div style="width: 800px;" class="fr">
					<ul id="useNav1">
						<li><a href="http://www.bjbys.net.cn/sydh" target="_blank">北京普通高校就业网</a></li>
						<li><a href="http://www.bjbys.net.cn/sydh/#2" target="_blank">省高校就业信息网</a></li>
						<li><a href="http://www.bjbys.net.cn/sydh/#3" target="_blank">区县人才服务中心</a></li>
						<li><a href="http://www.bjbys.net.cn/sydh/#4" target="_blank">省人才服务中心
						</a></li>

					</ul>
				</div>

			</div>
			<!--搜索部分-->
		</div>
		<div class="blue_bian mt03">
			<div class="topicTitle dw gd_zt zt_blue">
				<span class="fl zt_cu10">友情链接</span>
			</div>
			<div class="greenBox youqing">
				<div class="youqingtu">
					<ul>
						<!--循环：friendlink count：8-->


						<li><a href="http://www.moe.edu.cn/" target="_blank"><img
								src="${basepath }front/src/2493764702.jpg" alt="中华人民共和国教育部"
								data-bd-imgshare-binded="1"></a></li>


						<li><a href="http://www.bjrbj.gov.cn/" target="_blank"><img
								src="${basepath }front/src/2493977982.jpg" alt="北京市人力资源和社会保障局"
								data-bd-imgshare-binded="1"></a></li>


						<li><a href="http://www.bjedu.gov.cn/" target="_blank"><img
								src="${basepath }front/src/2493729680.jpg" alt="北市市教育委员会"
								data-bd-imgshare-binded="1"></a></li>


						<li><a href="http://www.bjpta.gov.cn/" target="_blank"><img
								src="${basepath }front/src/2493759953.jpg" alt="北京市人事考试网"
								data-bd-imgshare-binded="1"></a></li>


						<li><a href="http://www.bjeea.cn/" target="_blank"><img
								src="${basepath }front/src/2493735433.jpg" alt="北京教育考试院"
								data-bd-imgshare-binded="1"></a></li>


						<li><a href="http://www.bjrc.com/" target="_blank"><img
								src="${basepath }front/src/2493714931.jpg" alt="北京人才网"
								data-bd-imgshare-binded="1"></a></li>


						<li><a href="http://www.jyrc.com.cn/" target="_blank"><img
								src="${basepath }front/src/2493688644.gif" alt="北京教育人才网"
								data-bd-imgshare-binded="1"></a></li>


						<li><a href="http://www.ncss.org.cn/" target="_blank"><img
								src="${basepath }front/src/2493673895.gif" alt="ncss新职业"
								data-bd-imgshare-binded="1"></a></li>

					</ul>
					<div style="clear: both;"></div>
				</div>
				<div class="youqingtxt">
					<ul>
						<!--循环：friendlink count：20-->

						<a href="http://www.offcn.com/" target="_blank">中公公务员网</a> |
						<a href="http://cdc.zhaopin.com/" target="_blank">智联校园招聘</a> |
						<a href="http://www.shoudurc.com/" target="_blank">北京招聘网</a> |
						<a href="http://www.bicc.org.cn/" target="_blank">北京国际汉语学院</a> |
						<a href="http://www.yingjiesheng.com/" target="_blank">应届生网</a> |
						<a href="http://www.guolairen.com/" target="_blank">过来人求职网</a> |
						<a href="http://www.010hr.com/" target="_blank">北京英才网</a> |
						<a href="http://www.bjzph.cn/" target="_blank">北京招聘会</a> |
						<a href="http://www.eol.cn/" target="_blank">中国教育在线</a> |
						<a href="http://www.yjbys.com/" target="_blank">应届毕业生求职网</a> |
						<a href="http://www.51meishu.com/" target="_blank">中国美术高考网</a> |
						<a href="http://www.hbrc.com.cn/" target="_blank">河北人才网</a> |
						<a href="http://job.cas.cn/" target="_blank">中国科学院招聘网</a> |
					</ul>
				</div>
				<div class="youqingtxt">
					<ul>
						<!--循环：friendlink count：20-->

					</ul>
				</div>
			</div>
		</div>
	</div>


	<!--下面为foot部分-->
	<div class="bottom">
		<div class="navBottom1">
			<img src="${basepath }front/src/logozhongxinxiao.png" class="fl"
				data-bd-imgshare-binded="1">
			<ul class="navBottom">
				<li class="start"><a target="_blank"
					href="http://www.bjbys.net.cn/intro/">中心简介</a></li>
				<li><a target="_blank" href="http://www.bjbys.net.cn/sitemap/">网站地图</a></li>
				<li><a target="_blank" href="http://www.bjbys.net.cn/cgjy/">彩信订阅</a></li>
				<li><a target="_blank" href="http://www.bjbys.net.cn/contact/">联系我们</a></li>
			</ul>
		</div>
		<div class="clearBox"></div>
		<p>Copyright@2000-2014 www.bjbys.net.cn All right reserved
			北京高校毕业生就业指导中心 版权所有</p>
		<p>总机：88562688 毕业生档案业务：859</p>
		<p>京ICP备05069530号 文保网安备1101080054</p>
		<script>
			window._bd_share_config = {
				common : {
					bdText : '',
					bdDesc : '',
					bdUrl : '',
					bdPic : ''
				},
				share : [ {
					tag : 'share_1',
					bdSize : 16,

				}, {
					tag : 'share_2',
					bdSize : 24,

				} ],
				slide : [ {
					bdImg : 0,
					bdPos : "right",
					bdTop : 200
				} ],
				image : [ {
					viewType : 'list',
					viewPos : 'top',
					viewColor : 'black',
					viewSize : '16',
					viewList : [ 'weixin', 'tsina', 'tqq', 'renren', 'qzone' ]
				} ],
				selectShare : [ {
					"bdselectMiniList" : [ 'weixin', 'tsina', 'tqq', 'renren',
							'tqf' ]
				} ]
			}
			with (document)
				0[(getElementsByTagName('head')[0] || body)
						.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='
						+ ~(-new Date() / 36e5)];
		</script>

		<div style="display: none;">
			<script type="text/javascript">
				var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
						: " http://");
				document
						.write(unescape("%3Cscript src='"
								+ _bdhmProtocol
								+ "hm.baidu.com/h.js%3Fc4b34eec3877ae7676849bfa3056b1bb' type='text/javascript'%3E%3C/script%3E"));
			</script>
			<script src="${basepath }front/src/h.js" type="text/javascript"></script>
			<a
				href="http://tongji.baidu.com/hm-web/welcome/ico?s=c4b34eec3877ae7676849bfa3056b1bb"
				target="_blank"><img border="0"
				src="${basepath }front/src/21.gif" width="20" height="20"
				data-bd-imgshare-binded="1"></a>
		</div>

		<div style="display: none;">
			<script src="${basepath }front/src/stat.php" language="JavaScript"></script>
			<script src="${basepath }front/src/core.php" charset="utf-8"
				type="text/javascript"></script>
			<a href="http://www.cnzz.com/stat/website.php?web_id=4893697"
				target="_blank" title="站长统计"><img border="0" hspace="0"
				vspace="0" src="${basepath }front/src/pic1.gif"
				data-bd-imgshare-binded="1"></a>
		</div>

		<script src="${basepath }front/src/news.js"></script>

		<div id="wrap">
			<div class="back-top" title="返回顶部" style="display: none;"></div>
		</div>
		<script src="${basepath }front/src/Stat.js" type="text/javascript"></script>
	</div>
	<script src="${basepath }front/src/Stat.jsp"></script>


	<div class="bdshare-slide-button-box bdshare-slide-style-r0"
		style="top: 200px; width: 0px; z-index: 99999; right: 0px;"
		data-bd-bind="1450712341139">
		<a href="http://www.bjbys.net.cn/#" onclick="return false;"
			class="bdshare-slide-button" style="left: -24px;"></a>
		<div class="bdshare-slide-list-box" style="width: 0px; display: none;">
			<div class="bdshare-slide-top">分享到</div>
			<div class="bdshare-slide-list">
				<ul class="bdshare-slide-list-ul" style="width: 226px;">
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-mshare" data-cmd="mshare">一键分享</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-qzone" data-cmd="qzone">QQ空间</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-tsina" data-cmd="tsina">新浪微博</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-bdysc" data-cmd="bdysc">百度云收藏</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-weixin" data-cmd="weixin">微信</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-renren" data-cmd="renren">人人网</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-tqq" data-cmd="tqq">腾讯微博</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-bdxc" data-cmd="bdxc">百度相册</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-kaixin001"
						data-cmd="kaixin001">开心网</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-tqf" data-cmd="tqf">腾讯朋友</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-tieba" data-cmd="tieba">百度贴吧</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-douban" data-cmd="douban">豆瓣网</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-bdhome" data-cmd="bdhome">百度新首页</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-sqq" data-cmd="sqq">QQ好友</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-thx" data-cmd="thx">和讯微博</a></li>
					<li><a href="http://www.bjbys.net.cn/#"
						onclick="return false;" class="slide-ibaidu" data-cmd="ibaidu">百度中心</a></li>
				</ul>
			</div>
			<div class="bdshare-slide-bottom" style="width: 226px;">
				<a href="http://www.bjbys.net.cn/#" onclick="return false;"
					class="slide-more" data-cmd="more">更多...</a>
			</div>
		</div>
	</div>
</body>
</html>