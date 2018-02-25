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
							<a href="user.html">我的资料</a> <a href="user_pwd.html">账户密码设置</a>
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
				<h3 class="vipright-title">发布房源</h3>
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
				<table class="grinfo">
					<tbody>

						<tr>
							<th>手机号：</th>
							<td><strong>18521032517</strong></td>
						</tr>
						<tr>
							<th><span class="red">*</span> 昵称：</th>
							<td><input class="inp inw" type="text" id="title"
								value="185****2517" maxlength="14"></td>
						</tr>
						<tr>
							<th><span class="red"></span> 工作年限：</th>
							<td><input class="inp inw" type="text" id="work_years"
								value="" maxlength="2"
								onkeyup="return ValidateNumber(this,value)">年 </td>
						</tr>
						<tr>
							<th><span class="red"></span> 职业资格认证：</th>
							<td>
								<div style="clear: both;">
									<div style="clear: both;">

										<div style="float: left;">
											<input name="occ_cert" type="text" class="input"
												id="occ_cert" title="双击查看图片" ondblclick="veiwPic(this);"
												size="30" maxlength="255" value="">
										</div>
										<div style="float: left; padding-left: 7px;">
											</span>

										</div>
									</div>
								</div>

							</td>
						</tr>
						<tr>
							<th valign="top">个人描述：</th>
							<td><textarea id="sign" class="grtextarea"></textarea> <br>
									<span class="fgrey">(128字符以内)</span></td>
						</tr>
						<tr>
							<th><span class="red">*</span> 显示个人电话：</th>
							<td><input type="radio" value="1" id="rbShowtel1"
								name="is_showtel" checked=""> <label for="rbShowtel1">是</label>
									<input type="radio" value="0" id="rbShowtel2" name="is_showtel">
										<label for="rbShowtel2">否</label>
										（是否允许前台显示个人电话，如果不允许我们将为你提供400转接服务） </td>
						</tr>
						<tr>
							<th><span class="red">*</span> 选择服务商圈：</th>
							<td>
								<div id="bee_countys1">
									<select id="bee_county1"
										onchange="mod_street($('#bee_county1').val(),'1');">
										<option value="1">朝阳</option>
										<option value="2">海淀</option>
										<option value="3">东城</option>
										<option value="4">西城</option>
										<option value="5">崇文</option>
										<option value="6">宣武</option>
										<option value="7">丰台</option>
										<option value="8">通州</option>
										<option value="9">石景山</option>
										<option value="10">房山</option>
										<option value="11">昌平</option>
										<option value="12">大兴</option>
										<option value="13">顺义</option>
										<option value="14">密云</option>
										<option value="15">怀柔</option>
										<option value="16">延庆</option>
										<option value="17">平谷</option>
										<option value="18">门头沟</option>
										<option value="19">燕郊</option>
										<option value="20">北京周边</option>
									</select> <select id="bee_street1"
										onchange="change_villages($('#bee_street1').val(),1)"><option
											value="1">安慧桥</option>
										<option value="2">安贞</option>
										<option value="3">奥运村</option>
										<option value="4">百子湾</option>
										<option value="5">八里庄</option>
										<option value="6">北沙滩</option>
										<option value="7">北苑</option>
										<option value="8">CBD</option>
										<option value="9">常营</option>
										<option value="10">朝青板块</option>
										<option value="11">朝外大街</option>
										<option value="12">朝阳公园</option>
										<option value="13">朝阳周边</option>
										<option value="14">慈云寺</option>
										<option value="15">大山子</option>
										<option value="16">大屯</option>
										<option value="17">大望路</option>
										<option value="18">定福庄</option>
										<option value="19">东坝</option>
										<option value="20">东大桥</option>
										<option value="21">豆各庄</option>
										<option value="22">垡头</option>
										<option value="23">甘露园</option>
										<option value="24">高碑店</option>
										<option value="25">工体</option>
										<option value="26">广渠门</option>
										<option value="27">管庄</option>
										<option value="28">国贸</option>
										<option value="29">国展</option>
										<option value="30">和平街</option>
										<option value="31">红庙</option>
										<option value="32">花家地</option>
										<option value="33">欢乐谷</option>
										<option value="34">华威桥</option>
										<option value="35">惠新里</option>
										<option value="36">惠新西街</option>
										<option value="37">呼家楼</option>
										<option value="38">将台路</option>
										<option value="39">建外大街</option>
										<option value="40">健翔桥</option>
										<option value="41">京广桥</option>
										<option value="42">劲松</option>
										<option value="43">酒仙桥</option>
										<option value="44">来广营</option>
										<option value="45">柳芳</option>
										<option value="46">麦子店</option>
										<option value="47">媒体村</option>
										<option value="48">南磨房</option>
										<option value="49">南沙滩</option>
										<option value="50">农业展览馆</option>
										<option value="51">潘家园</option>
										<option value="52">三里屯</option>
										<option value="53">三元桥</option>
										<option value="54">芍药居</option>
										<option value="55">胜古</option>
										<option value="56">十八里店</option>
										<option value="57">石佛营</option>
										<option value="58">十里堡</option>
										<option value="59">十里河</option>
										<option value="60">首都机场</option>
										<option value="61">双井</option>
										<option value="62">双桥</option>
										<option value="63">水碓子</option>
										<option value="64">四惠</option>
										<option value="65">松榆里</option>
										<option value="66">孙河</option>
										<option value="67">太阳宫</option>
										<option value="68">甜水园</option>
										<option value="69">团结湖</option>
										<option value="70">望京</option>
										<option value="71">小关</option>
										<option value="72">小红门</option>
										<option value="73">西坝河</option>
										<option value="74">燕莎</option>
										<option value="75">姚家园</option>
										<option value="76">亚运村</option>
										<option value="77">亚运村小营</option>
										<option value="78">左家庄</option></select>
									<script>
										mod_street($('#bee_county1').val(),
												'1', '');
									</script>
								</div>
								<div id="bee_countys2">
									<select id="bee_county2"
										onchange="mod_street($('#bee_county2').val(),'2');">
										<option value="4">西城</option>
										<option value="2">海淀</option>
										<option value="12">大兴</option>
										<option value="19">燕郊</option>
										<option value="16">延庆</option>
										<option value="1">朝阳</option>
										<option value="20">北京周边</option>
										<option value="6">宣武</option>
										<option value="17">平谷</option>
										<option value="18">门头沟</option>
										<option value="14">密云</option>
										<option value="13">顺义</option>
										<option value="11">昌平</option>
										<option value="5">崇文</option>
										<option value="7">丰台</option>
										<option value="15">怀柔</option>
										<option value="3">东城</option>
										<option value="10">房山</option>
										<option value="9">石景山</option>
										<option value="8">通州</option>
									</select> <select id="bee_street2"
										onchange="change_villages($('#bee_street2').val(),2)"><option
											value="160">百万庄</option>
										<option value="161">车公庄</option>
										<option value="162">德胜门</option>
										<option value="163">地安门</option>
										<option value="164">阜成门</option>
										<option value="165">复兴门</option>
										<option value="166">官园</option>
										<option value="167">鼓楼</option>
										<option value="168">金融街</option>
										<option value="169">积水潭</option>
										<option value="170">六铺炕</option>
										<option value="171">马甸</option>
										<option value="172">木樨地</option>
										<option value="173">南礼士路</option>
										<option value="174">三里河</option>
										<option value="175">什刹海</option>
										<option value="176">小西天</option>
										<option value="177">西便门</option>
										<option value="178">西城周边</option>
										<option value="179">西单</option>
										<option value="180">新街口</option>
										<option value="181">西四</option>
										<option value="182">西直门</option>
										<option value="183">月坛</option>
										<option value="184">展览路</option>
										<option value="185">真武庙</option></select>
									<script>
										mod_street($('#bee_county2').val(),
												'2', '');
									</script>
									<span class="add_street" onclick="del_street(2)">删除</span>
								</div>
								<div id="bee_countys3">
									<select id="bee_county3"
										onchange="mod_street($('#bee_county3').val(),'3');">
										<option value="15">怀柔</option>
										<option value="12">大兴</option>
										<option value="16">延庆</option>
										<option value="3">东城</option>
										<option value="18">门头沟</option>
										<option value="20">北京周边</option>
										<option value="8">通州</option>
										<option value="1">朝阳</option>
										<option value="7">丰台</option>
										<option value="19">燕郊</option>
										<option value="13">顺义</option>
										<option value="2">海淀</option>
										<option value="9">石景山</option>
										<option value="14">密云</option>
										<option value="10">房山</option>
										<option value="6">宣武</option>
										<option value="11">昌平</option>
										<option value="5">崇文</option>
										<option value="4">西城</option>
										<option value="17">平谷</option>
									</select> <select id="bee_street3"
										onchange="change_villages($('#bee_street1').val(),3)"><option
											value="377">雁栖</option>
										<option value="378">桥梓</option>
										<option value="379">怀柔城区</option>
										<option value="380">渤海镇</option>
										<option value="381">庙城</option>
										<option value="382">怀柔周边</option></select>
									<script>
										mod_street($('#bee_county3').val(),
												'3', '');
									</script>
									<span class="add_street" onclick="del_street(3)">删除</span>
								</div> 最多三个商圈&nbsp;&nbsp;<span class="add_street"
								onclick="add_street()">(再增加一个商圈)</span>
							</td>
						</tr>
						<tr>
							<th><span class="red">*</span>选择服务社区：</th>
							<td><input type="hidden" id="mod_add_villages" value="">
									<div id="villages_ids">
										<div class="villages_ids1">
											<p>朝阳 安慧桥 附近的小区：</p>
											<ul class="villages_ids1_ul">
												<li><input type="checkbox" name="add_villages"
													value="650" id="label_for_650"
													onclick="checkbox_village(650)"><label
														for="label_for_650">安慧东里1号院</label></li>
												<li><input type="checkbox" name="add_villages"
													value="1856" id="label_for_1856"
													onclick="checkbox_village(1856)"><label
														for="label_for_1856">本色空间</label></li>
											</ul>
										</div>
										<div class="villages_ids2" style="display: none;"></div>
										<div class="villages_ids3" style="display: none;"></div>
									</div></td>
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
							<td><input class="inp inw" type="text" maxlength="2"
								id="age" value="0" onkeyup="return ValidateNumber(this,value)"></td>
						</tr>
						<tr>
							<th><span class="red"></span> 身份证信息：</th>
							<td><input class="inp inw" type="text" id="ID_card" value=""></td>
						</tr>
						<tr>
							<th><span class="red">*</span> 真实姓名：</th>
							<td><input class="inp inw" type="text" maxlength="15"
								value="" id="realname"></td>
						</tr>
						<tr>
							<th><span class="red"></span> 学历证明：</th>
							<td>
								<div style="clear: both;">
									<div style="clear: both;">

										<div style="float: left;">
											<input name="cert_degree" type="text" class="input"
												id="cert_degree" title="双击查看图片" ondblclick="veiwPic(this);"
												size="30" maxlength="255" value="">
										</div>
										<div style="clear: both;"></div>
									</div>
								</div>

							</td>
						</tr>


						<tr>
							<th>&nbsp;Q &nbsp; &nbsp;Q：</th>
							<td><input class="inp inw" type="text" maxlength="15"
								value="" id="qq" onkeyup="return ValidateNumber(this,value)"></td>
						</tr>


						<tr>
							<th>&nbsp;</th>
							<td colspan="2"><label class="butt" id="butt">
									<div class="member_mod_buttom" onclick="mod_member_bee()">提交申请</div>
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