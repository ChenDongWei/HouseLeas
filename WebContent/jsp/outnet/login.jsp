<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>邻居大妈</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" />
<link type="text/css" href="${pageContext.request.contextPath}/css/outnet.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
<script type="text/javascript">
 $(function(){
	 //导航定位
	 $(".nav li:eq(6)").addClass("navCur");
	 })
</script>
</head>

<body> 
 <div class="header">
  <div class="width1190">
   <div class="fl">您好，欢迎来到邻居大妈！</div>
   <div class="fr">
    <a href="login.jsp">登录</a> | 
    <a href="reg.jsp">注册</a> | 
    <a href="javascript:;" onclick="AddFavorite(window.location,document.title)">加入收藏</a> | 
    <a href="javascript:;" onclick="SetHome(this,window.location)">设为首页</a>
   </div>
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--header/-->
 <div class="logo-phone">
  <div class="width1190">
   <h1 class="logo"><a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" width="163" height="59" /></a></h1>
   <div class="phones"><strong>021-63179891</strong></div>
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--logo-phone/-->
 <div class="list-nav">
  <div class="width1190">
   <div class="list">
    <h3>房源分类</h3>
    <div class="list-list">
     <dl>
      <dt><a href="javascript:;">房源区域</a></dt>
      <dd>
       <a href="javascript:;">智慧园</a>
       <a href="javascript:;">立民村</a>
       <a href="javascript:;">塘口村</a>
       <a href="javascript:;">勤劳村</a>
       <a href="javascript:;">芦胜村</a>
       <a href="javascript:;">知新村</a>
      </dd>
     </dl>
     <dl>
      <dt><a href="pro_zu.html">租房</a></dt>
      <dd>
       <a href="pro_zu.html">租金</a>
       <a href="pro_zu.html">出租方式</a>
       <a href="pro_zu.html">面积</a>
       <a href="pro_zu.html">房型</a>
      </dd>
     </dl>
     <dl>
      <dt><a href="pro_xin.html">新房</a></dt>
      <dd>
       <a href="pro_xin.html">价格</a>
       <a href="pro_xin.html">面积</a>
       <a href="pro_xin.html">房型</a>
      </dd>
     </dl>
     <dl>
      <dt><a href="pro_er.html">二手房</a></dt>
      <dd>
       <a href="pro_er.html">价格</a>
       <a href="pro_er.html">面积</a>
       <a href="pro_er.html">房型</a>
      </dd>
     </dl>
    </div>
   </div><!--list/-->
   <ul class="nav">
    <li><a href="index.html">首页</a></li>
    <li><a href="pro_zu.html">租房</a></li>
    <li><a href="pro_xin.html">新房</a></li>
    <li><a href="pro_er.html">二手房</a></li>
    <li class="zhiding"><a href="javascript:;">指定购房</a></li>
    <li><a href="user_jingji.html">申请自由经纪人</a></li>
    <li><a href="about.html">关于我们</a></li>
    <div class="clears"></div>
   </ul><!--nav/-->
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--list-nav/-->
 <div class="banner" style="background:url(${pageContext.request.contextPath}/images/ban.jpg) center center no-repeat;"></div>
 
 <div class="content">
  <div class="width1190">
   <div class="reg-logo">
   <form id="signupForm" method="post" action="${pageContext.request.contextPath}/login/loginCustomer.do" class="zcform">
        <p class="clearfix">
        	<label class="one" for="agent">帐号：</label>
        	<input id="mobilePhone" name="mobilePhone" type="text" class="mobilePhone" value placeholder="请输入您的帐号(手机号)" />
        </p>
        <p class="clearfix">
         	<label class="one"  for="password">登录密码：</label>
        	<input id="password" name="password" type="password" class="{required:true,rangelength:[8,20],}" value placeholder="请输入密码" />
        </p>
        <p class="clearfix agreement">
        	<input type="checkbox" />
            <b class="left">已阅读并同意<a href="#">《用户协议》</a></b>
        </p>
       	<p class="clearfix"><input class="submit" type="submit" value="立即登录"/></p>
    </form>
    <div class="reg-logo-right">
     <h3>如果您没有账号，请</h3>
     <a href="${pageContext.request.contextPath}/jsp/outnet/reg.jsp" class="logo-a">立即注册</a>
    </div><!--reg-logo-right/-->
    <div class="clears"></div>
  </div><!--reg-logo/-->
  </div><!--width1190/-->
 </div><!--content/-->
 
 <div class="footer">
  <div class="width1190">
   <div class="fl"><a href="index.html"><strong>邻居大妈</strong></a><a href="about.html">关于我们</a><a href="contact.html">联系我们</a><a href="user.html">个人中心</a></div>
   <div class="fr">
    <dl>
     <dt><img src="${pageContext.request.contextPath}/images/erweima.png" width="76" height="76" /></dt>
     <dd>微信扫一扫<br />房价点评，精彩发布</dd>
    </dl>
    <dl>
     <dt><img src="${pageContext.request.contextPath}/images/erweima.png" width="76" height="76" /></dt>
     <dd>微信扫一扫<br />房价点评，精彩发布</dd>
    </dl>
    <div class="clears"></div>
   </div>
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--footer/-->
 <div class="copy">Copyright@ 2015 邻居大妈 版权所有 沪ICP备1234567号-0&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a target="_blank" href="http://www.webqin.net/">秦王网络</a> </div>
 <div class="bg100"></div>
 <div class="zhidinggoufang">
  <h2>指定购房 <span class="close">X</span></h2>
  <form action="#" method="get">
   <div class="zhiding-list">
    <label>选择区域：</label>
    <select>
     <option>智慧园</option>
     <option>立民村</option>
     <option>塘口村</option>
     <option>勤劳村</option>
     <option>芦胜村</option>
     <option>知新村</option>
    </select>
   </div>
   <div class="zhiding-list">
    <label>方式：</label>
    <select>
     <option>租房</option>
     <option>新房</option>
     <option>二手房</option>
    </select>
   </div>
   <div class="zhiding-list">
    <label>联系方式：</label>
    <input type="text" />
   </div>
   <div class="zhidingsub"><input type="submit" value="提交" /></div>
  </form>
  <div class="zhidingtext">
   <h3>指定购房注意事宜：</h3>
   <p>1、请详细输入您所需要购买的房源信息(精确到小区)</p>
   <p>2、制定购房申请提交后，客服中心会在24小时之内与您取得联系</p>
   <p>3、如有任何疑问，请随时拨打我们的电话：400-000-0000</p>
  </div><!--zhidingtext/-->
 </div><!--zhidinggoufang/-->
</body>
</html>
