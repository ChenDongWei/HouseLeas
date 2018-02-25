<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>

<rapid:override name="content">
	<div class="content">
		<div class="width1190">
			<div class="vip-left">
				<div class="vipNav">
					<h3 class="vipTitle">会员中心</h3>
					<dl>
						<dt class="vipIcon3">账户设置</dt>
						<dd>
							<a href="user.html" class="vipNavCur">我的资料</a> <a
								href="user_pwd.html">账户密码设置</a>
						</dd>
						<dt class="vipIcon1">我的邻居大妈</dt>
						<dd>
							<a href="user_guanzhu.jsp">关注房源</a>
							<a href="user_fabu.jsp">发布房源</a>
						</dd>
					</dl>
				</div>
				<!--vipNav/-->
			</div>
			<!--vip-left/-->
			<div class="vip-right">
				<h3 class="vipright-title">修改资料</h3>
				<table class="grinfo">
					<tbody>
						<tr>
							<th>手机号：</th>
							<td><strong>${resultCustomer.mobilePhone}</strong></td>
						</tr>
						<tr>
							<th>姓 &nbsp;&nbsp;名：</th>
							<td><input class="inp inw" type="text" id="title"
								value="${resultCustomer.trueName}" maxlength="14"></td>
						</tr>
						<tr>
							<th>性 &nbsp;&nbsp;别：</th>
							<td><input type="radio" value="2" id="rbSex1" name="sex">
									<label for="rbSex1">女</label> <input type="radio" value="1"
									id="rbSex2" name="sex" checked> <label for="rbSex2">男</label> <span
										id="Sex_Tip"></span></td>
						</tr>
						<tr>
							<th>年 &nbsp;&nbsp;龄：</th>
							<td><input class="inp inw" type="text" id="age" value="${resultCustomer.age}"
								onkeyup="this.value=this.value.replace(/[^\d]/g,'')"></td>
						</tr>


						<tr>
							<th>&nbsp;Q &nbsp; &nbsp;Q：</th>
							<td><input class="inp inw" type="text" maxlength="15"
								value="${resultCustomer.qq}" id="qq" onkeyup="return ValidateNumber(this,value)"></td>
						</tr>

						<tr>
							<th>&nbsp;</th>
							<td colspan="2"><label class="butt" id="butt"> <input
									type="submit" class="member_mod_buttom" onclick="mod_member()"
									value="完成修改" />
							</label></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!--vip-right/-->
			<div class="clearfix"></div>
		</div>
		<!--width1190/-->
	</div>
	<!--content/-->
</rapid:override>
<jsp:include page="index.jsp" />