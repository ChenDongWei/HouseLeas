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
							<a href="user_guanzhu.html">关注房源</a> <a href="user_shenqing.html">申请社区自由经纪人</a>
							<a href="user_jingji.html">社区自由经纪人</a>
						</dd>
					</dl>
				</div>
				<!--vipNav/-->
			</div>
			<!--vip-left/-->
			<div class="vip-right">
				<h3 class="vipright-title">修改头像</h3>
				<form action="#" method="get">
					<dl class="vip-touxiang">
						<dt>
							<img src="${pageContext.request.contextPath}/images/tx.jpg" width="100" height="100" />
						</dt>
						<dd>
							<h3>
								<strong>点击选择文件上传头像</strong>
							</h3>
							<div class="sctx">
								<input type="file" /><a href="javascript:;">上传</a>
							</div>
							<p>图片格式：GIF、JPG、JPEG、PNG ，最适合尺寸100*100像素</p>
						</dd>
						<div class="clearfix"></div>
					</dl>
					<!--vip-touxiang/-->
				</form>
				<h3 class="vipright-title">修改资料</h3>
				<table class="grinfo">
					<tbody>
						<tr>
							<th>手机号：</th>
							<td><strong>18521032517</strong> &nbsp;&nbsp;&nbsp;&nbsp;<a
								href="javascript:;"><span
									style="color: #888; cursor: pointer">(修改手机号)</span></a></td>
						</tr>
						<tr>
							<th><span class="red">*</span> 昵称：</th>
							<td><input class="inp inw" type="text" id="title"
								value="185****2517" maxlength="14"></td>
						</tr>
						<tr>
							<th><span class="red">*</span> 性 &nbsp; &nbsp;别：</th>
							<td><input type="radio" value="2" id="rbSex1" name="sex">
									<label for="rbSex1">女</label> <input type="radio" value="1"
									id="rbSex2" name="sex"> <label for="rbSex2">男</label> <span
										id="Sex_Tip"></span></td>
						</tr>
						<tr>
							<th><span class="red"></span> 年 &nbsp; &nbsp;龄：</th>
							<td><input class="inp inw" type="text" id="age" value="0"
								onkeyup="this.value=this.value.replace(/[^\d]/g,'')"></td>
						</tr>


						<tr>
							<th>&nbsp;Q &nbsp; &nbsp;Q：</th>
							<td><input class="inp inw" type="text" maxlength="15"
								value="" id="qq" onkeyup="return ValidateNumber(this,value)"></td>
						</tr>

						<tr>
							<th valign="top">个性签名：</th>
							<td><textarea id="sign" class="grtextarea"></textarea> <br>
									<span class="fgrey">(128字符以内)</span></td>
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