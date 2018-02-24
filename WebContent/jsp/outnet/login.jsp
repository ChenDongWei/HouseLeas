<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>
<rapid:override name="content">
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
 </rapid:override>
 <jsp:include page="index.jsp" />