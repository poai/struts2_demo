<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page errorPage="/page_500.html"%>
<%
	pageContext.setAttribute("path", request.getContextPath() + "/production/");
	pageContext.setAttribute("basepath", request.getContextPath() + "/");
	pageContext.setAttribute("path1", request.getContextPath() + "/ueditor1_4_3-utf8-jsp/");
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
	<div class="out">
		<div class="dw01 blue_bian titBg_blue">
			<div class="zt_cu10 fl" style="color: #047AA2">当前位置：</div>
			<div><a><s:property value="type"/> </a></div>
		<div style="min-height: 800px;padding:10px 0px 0px 30px;">
			<ul style="list-style-type: square">
			<s:iterator value="#request.news">
					<li>
						<span style="color:red; display:block "><s:property value="sdate" /> </span>
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="/SHTest/home/news_Info.action?id=${id}&type=${type}" target="_blank" >
							<s:property value="title" /> 
						</a>
					</li>
			</s:iterator>
			</ul>
		</div>
	</div>
	<!--下面为foot部分-->
	<div class="bottom">
		<div class="navBottom1">
			<img src="${basepath }front/src/logozhongxinxiao.png" class="fl"
				data-bd-imgshare-binded="1">
			<ul class="navBottom">
				<li class="start"><a target="_blank"
					href="http://www.bjbys.net.cn/intro/">中心简介</a>
			</li>
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