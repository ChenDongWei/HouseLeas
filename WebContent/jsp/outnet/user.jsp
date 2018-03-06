<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>
<rapid:override name="otherJs">
	<script type="text/javascript">
		$(function(){
			if ('${customerModel.sex}' == 2) {
				$("#woman").prop("checked",true);
			}
			if ('${customerModel.sex}' != 2) {
				$("#man").prop("checked",true);
			}
		});
		
		$(document).ready(function(){
			$("#revise").click(function(){
				var mobilePhone = '${resultCustomer.mobilePhone}';
				var seq = '${resultCustomer.seq}';
				var trueName = $("#trueName").val();
				var sex = $("input[name='sex']:checked").val();
				var age = $("#age").val();
				var qq = $("#qq").val();
				var url="${pageContext.request.contextPath}/customer/addOrUpdateCustomer.do";
				if(seq == '' || mobilePhone == ''){
					alert("当前帐号未登录！");
					return;
				}
				$.ajax({
				       url:url,
				       type:'post',
				       cache:false,
				       data:{"customerModel.seq":seq,"customerModel.mobilePhone":mobilePhone,"customerModel.trueName":trueName,"customerModel.sex":sex,
				    	   "customerModel.age":age, "customerModel.qq":qq},
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
	</script>
</rapid:override>
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
							<td><input class="inp inw" type="text" id="trueName"
								value="${customerModel.trueName}" maxlength="14"></td>
						</tr>
						<tr>
							<th>性 &nbsp;&nbsp;别：</th>
							<td>
								<input type="radio" value="2" id="woman" name="sex" />女
								<input type="radio" value="1" id="man" name="sex" />男
							</td>
						</tr>
						<tr>
							<th>年 &nbsp;&nbsp;龄：</th>
							<td><input class="inp inw" type="text" id="age" value="${customerModel.age}"></td>
						</tr>


						<tr>
							<th>&nbsp;Q &nbsp; &nbsp;Q：</th>
							<td><input class="inp inw" type="text" maxlength="15"
								value="${customerModel.qq}" id="qq"></td>
						</tr>

						<tr>
							<th>&nbsp;</th>
							<td colspan="2"><label class="butt" id="butt"> <input id="revise"
									type="button" class="member_mod_buttom" value="完成修改" />
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