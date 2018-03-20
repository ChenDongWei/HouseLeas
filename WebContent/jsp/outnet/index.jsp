<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>邻居大妈</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images/favicon.ico" />
<link type="text/css"
	href="${pageContext.request.contextPath}/css/outnet.css"
	rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/artdialog/artDialog.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/js.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/artdialog/artDialog.js"></script>
<script type="text/javascript">
	$(function() {
		//导航定位
		//$(".nav li:eq(0)").addClass("navCur");
		
		var customerName = "游客";
		var trueName = "${resultCustomer.trueName}";
		var mobilePhone = "${resultCustomer.mobilePhone}";
		if (mobilePhone != "") {
			customerName = mobilePhone;
			$("#logout").show();
		}else {
			$("#loginAndReg").show();
		}
		if(trueName != ""){
			customerName = trueName;
		}
		$("#customerName").html(customerName);
		
		//退出按钮点击事件
		$("#logout").click(function(){
			var url = '${pageContext.request.contextPath}/login/logout.do';
			$.ajax({
			   url:url,
		       type:'post',
		       cache:false,
		       dataType:'json',
		       contentType: "application/x-www-form-urlencoded; charset=utf-8",
		       beforeSend:function(){},
		       success:function(data){
		       	   var suc = data.successful;
		           if(suc){
		           		isSave = true;
		           		alert(data.message);
		           		top.dialog({id:'loadWin'}).close(isSave);
		           }else{
		           		top.dialog({title:'提示',content:'保存出现异常!'}).showModal();
		           }
		       },
		       //top.dialog().close();
		       error:function(){
		       		top.dialog({title:'提示',content:'请求发生异常!'}).showModal();
		       },
		       complete:function(){}
			});
		});
		
	});
	
	//指定租房
	function appoinThouse(){
		top.dialog({
			id:'appoinThouse',
			url:'${pageContext.request.contextPath}/appoinThouse/toAppoinThouse.do',
			width:500,
			height:450,
			title:'指定租房',
			onclose:function(value){
				
			}
		}).show();
	}
</script>
<rapid:block name="otherJs"></rapid:block>
</head>

<body>
	<input id="PageContext" type="hidden"
		value="${pageContext.request.contextPath}" />
	<div class="header">
		<div class="width1190">
			<div class="fl"><span id="customerName" class="customerName"></span>您好，欢迎来到邻居大妈！</div>
			<div class="fr">
				<span id="loginAndReg" style="display:none">
				  <a href="${pageContext.request.contextPath}/jsp/outnet/login.jsp">登录</a>
				| <a href="${pageContext.request.contextPath}/jsp/outnet/reg.jsp">注册</a>
				| 
				</span>
				<span id="logout" style="display:none">
				  <a href="">退出登录</a>
				| 
				</span>
				<a href="javascript:;" onclick="AddFavorite(window.location,document.title)">加入收藏</a>
				| <a href="javascript:;" onclick="toManageLogin()">员工通道</a>
			</div>
			<div class="clears"></div>
		</div>
		<!--width1190/-->
	</div>
	<!--header/-->
	<div class="logo-phone">
		<div class="width1190">
			<h1 class="logo">
				<a href="index.jsp"><img
					src="${pageContext.request.contextPath}/images/logo.png"
					width="163" height="59" /></a>
			</h1>
			<div class="phones">
				<strong>021-63179891</strong>
			</div>
			<div class="clears"></div>
		</div>
		<!--width1190/-->
	</div>
	<!--logo-phone/-->
	<div class="list-nav">
		<div class="width1190">
			<!--list/-->
			<ul class="nav">
				<li><a href="${pageContext.request.contextPath}/login/toIndex.do">首页</a></li>
				<li><a href="${pageContext.request.contextPath}/house/toHouse.do?category=1">平台房源</a></li>
				<li><a href="${pageContext.request.contextPath}/house/toHouse.do?category=2">个人房源</a></li>
				<li><a href="javascript:appoinThouse();" >指定租房</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/outnet/about.jsp">关于我们</a></li>
				<li><a href="${pageContext.request.contextPath}/jsp/outnet/contact.jsp">联系我们</a></li>
				<li><a href="${pageContext.request.contextPath}/customer/toOutnetCustomer.do?customerModel.seq=${resultCustomer.seq}">个人中心</a></li>
				<div class="clears"></div>
			</ul>
			<!--nav/-->
			<div class="clears"></div>
		</div>
		<!--width1190/-->
	</div>
	<!--list-nav/-->
	<div class="banner"
		style="background:url(${pageContext.request.contextPath}/images/ban.jpg) center center no-repeat;"></div>
	<rapid:block name="content">
		<div class="content">
			<div class="width1190">
				<h2 class="title">
					平台房源 <a href="${pageContext.request.contextPath}/house/toHouse.do?category=1">更多&gt;&gt;</a>
				</h2>
				<div class="index-fang-list">
					<c:forEach var="ptHouse" items="${ptHouseList}" varStatus="M" >
						<dl>
							<dt>
								<a href="proinfo.jsp"><img
									src="${pageContext.request.contextPath}/images/fang${M.index +1}.jpg"
									width="286" height="188" /></a>
							</dt>
							<dd>
								<h3>
									<a href="proinfo.jsp">${ptHouse.houseName}</a>
								</h3>
								<div class="hui">${ptHouse.houseType} | ${ptHouse.acreage} | ${ptHouse.decor}</div>
							</dd>
						</dl>
                  	</c:forEach>
					
					<div class="clears"></div>
				</div>
				<!--index-fang-list/-->
	
				<h2 class="title">
					个人房源 <a href="${pageContext.request.contextPath}/house/toHouse.do?category=2">更多&gt;&gt;</a>
				</h2>
				<div class="index-fang-list">
					<c:forEach var="grHouse" items="${grHouseList}" varStatus="M" >
						<dl>
							<dt>
								<a href="proinfo.jsp"><img
									src="${pageContext.request.contextPath}/images/fang${M.index +1}.jpg"
									width="286" height="188" /></a>
							</dt>
							<dd>
								<h3>
									<a href="proinfo.jsp">${grHouse.houseName}</a>
								</h3>
								<div class="hui">${grHouse.houseType} | ${grHouse.acreage} | ${grHouse.decor}</div>
							</dd>
						</dl>
                  	</c:forEach>
					<div class="clears"></div>
				</div>
				<!--index-fang-list/-->
			</div>
			<!--width1190/-->
		</div>
	</rapid:block>
	<!--content/-->
	<div class="xinren footer">
		<div class="width1190">
			<dl
				style="background:url(${pageContext.request.contextPath}/images/icon1.jpg) left center no-repeat;">
				<dt>承诺</dt>
				<dd>
					真实可信100%真房源<br />链家承诺，假一赔百
				</dd>
			</dl>
			<dl
				style="background:url(${pageContext.request.contextPath}/images/icon2.jpg) left center no-repeat;">
				<dt>权威</dt>
				<dd>
					独家房源 覆盖全城<br />房源信息最权威覆盖最广
				</dd>
			</dl>
			<dl
				style="background:url(${pageContext.request.contextPath}/images/icon3.jpg) left center no-repeat;">
				<dt>信赖</dt>
				<dd>
					万名置业顾问 专业服务<br />百万家庭的信赖之选
				</dd>
			</dl>
			<dl
				style="background:url(${pageContext.request.contextPath}/images/icon4.jpg) left center no-repeat;">
				<dt>安全</dt>
				<dd>
					安心承诺 保驾护航<br />多重风险防范机制 无后顾之忧
				</dd>
			</dl>
			<div class="clears"></div>
		</div>
		<!--width1190/-->
	</div>
	<!--xinren/-->
	<div class="copy">
		Copyright@ 2018 邻居大妈 版权所有 粤ICP备1234567号-0&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a
			target="_blank" href="http://www.baidu.com/">百度</a>
	</div>
	<div class="bg100"></div>
</body>
</html>
