<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>
<rapid:override name="otherJs">
	<script type="text/javascript">
		$(function() {
			//导航定位
			$(".nav li:eq(6)").addClass("navCur");
		})
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
							<a href="user.html">我的资料</a> <a href="user_pwd.jsp">账户密码设置</a>
						</dd>
						<dt class="vipIcon1">我的邻居大妈</dt>
						<dd>
							<a href="user_guanzhu.jsp" class="vipNavCur">关注房源</a>
							<a href="user_fabu.jsp">发布房源</a>
						</dd>
					</dl>
				</div>
				<!--vipNav/-->
			</div>
			<!--vip-left/-->
			<div class="vip-right">
				<h3 class="vipright-title">关注房源</h3>
				<!--guanzhueq/-->
				<div class="guanzhulist">
					<dl>
						<dt>
							<a href="proinfo.html"><img src="${pageContext.request.contextPath}/images/fang1.jpg"
								width="190" height="128" /></a>
						</dt>
						<dd>
							<h3>
								<a href="proinfo.html">甘露园南里一区</a>
							</h3>
							<div class="guantext">朝阳 - 甘露园 - 甘露园南里一区</div>
							<div class="guantext">2室1厅1卫 | 70.0平米 | 南</div>
							<div class="guantext2">
								关注时间：2015-12-03 15:20:13 <a href="javascript:;" class="qxgz">取消关注</a>
							</div>
						</dd>
						<div class="price">
							¥ <strong>3014</strong><span class="font12">元/月</span>
						</div>
						<div class="clearfix"></div>
					</dl>
					<dl>
						<dt>
							<a href="proinfo.html"><img src="${pageContext.request.contextPath}/images/fang2.jpg"
								width="190" height="128" /></a>
						</dt>
						<dd>
							<h3>
								<a href="proinfo.html">甘露园南里一区</a>
							</h3>
							<div class="guantext">朝阳 - 甘露园 - 甘露园南里一区</div>
							<div class="guantext">2室1厅1卫 | 70.0平米 | 南</div>
							<div class="guantext2">
								关注时间：2015-12-03 15:20:13 <a href="javascript:;" class="qxgz">取消关注</a>
							</div>
						</dd>
						<div class="price">
							¥ <strong>2580</strong><span class="font12">元/月</span>
						</div>
						<div class="clearfix"></div>
					</dl>
				</div>
				<!--guanzhulist/-->
			</div>
			<!--vip-right/-->
			<div class="clearfix"></div>
		</div>
		<!--width1190/-->
	</div>
	<!--content/-->

</rapid:override>
<jsp:include page="index.jsp" />