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
							<a href="user.html">我的资料</a> <a href="user_pwd.html"
								class="vipNavCur">账户密码设置</a>
						</dd>
						<dt class="vipIcon1">我的邻居大妈</dt>
						<dd>
							<a href="user_guanzhu.html">关注房源</a> <a href="user_shenqing.html">申请社区自由经纪人</a>
							<a href="user_jingji.html">社区自由经纪人</a>
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
							<th>原手机号：</th>
							<td><strong>18521032517</strong></td>
						</tr>
						<tr>
							<th>账号：</th>
							<td><input class="inp inw" type="text" id="new_username"
								maxlength="15" placeholder="不少于3位中英文即可" value=""
								onkeyup="return only_py_num(this)"></td>
						</tr>
						<tr>
							<th>新密码：</th>
							<td><input class="inp inw" type="password" id="new_password"
								placeholder="不少于6位"></td>
						</tr>
						<tr>
							<th>重复新密码：</th>
							<td><input class="inp inw" type="password"
								id="new_password1" placeholder="不少于6位"></td>
						</tr>
						<tr>
							<th>&nbsp;</th>
							<td colspan="2"><label class="butt" id="butt">
									<div class="member_mod_buttom" onclick="sub_username()">完成修改</div>
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