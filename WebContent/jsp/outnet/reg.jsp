<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>
<
<rapid:override name="content">
	<div class="content">
		<div class="width1190">
			<div class="reg-logo">
				<form id="signupForm" method="post" action="" class="zcform">
					<p class="clearfix">
						<label class="one" for="agent">手机号：</label> <input id="agent"
							name="agent" type="text" class="required" value
							placeholder="请输入您的手机号 " />
					</p>

					<p class="clearfix">
						<label class="one" for="password">登录密码：</label> <input
							id="password" name="password" type="password"
							class="{required:true,rangelength:[8,20],}" value
							placeholder="请输入密码" />
					</p>
					<p class="clearfix">
						<label class="one" for="confirm_password">确认密码：</label> <input
							id="confirm_password" name="confirm_password" type="password"
							class="{required:true,equalTo:'#password'}" value
							placeholder="请再次输入密码" />
					</p>
					<p class="clearfix agreement">
						<input type="checkbox" /> <b class="left">已阅读并同意<a
							href="${pageContext.request.contextPath}/jsp/outnet/userAgreement.jsp"
							target=_blank>《用户协议》</a></b>
					</p>
					<p class="clearfix">
						<input class="submit" type="submit" value="立即注册" />
					</p>
				</form>
				<div class="reg-logo-right">
					<h3>如果您已有账号，请</h3>
					<a href="login.html" class="logo-a">立即登录</a>
				</div>
				<!--reg-logo-right/-->
				<div class="clears"></div>
			</div>
			<!--reg-logo/-->
		</div>
		<!--width1190/-->
	</div>
	<!--content/-->
</rapid:override>
<jsp:include page="/index.jsp" />