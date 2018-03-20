<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>

<rapid:override name="content">
	<div class="content">
		<div class="width1190">
			<form action="#" method="get" class="pro-search">
				<table>
					<tr>
						<th>房源区域：</th>
						<td><a href="javascript:;" class="pro-cur">不限</a> <a
							href="javascript:;">智慧园</a> <a href="javascript:;">立民村</a> <a
							href="javascript:;">塘口村</a> <a href="javascript:;">勤劳村</a> <a
							href="javascript:;">芦胜村</a> <a href="javascript:;">知新村</a></td>
					</tr>
					<tr>
						<th>价格：</th>
						<td><a href="javascript:;" class="pro-cur">不限</a> <a
							href="javascript:;">500-1000</a> <a href="javascript:;">10001-2000</a>
							<a href="javascript:;">2001-3000</a> <a href="javascript:;">3001-4000</a>
							<input type="text" class="protext" /> - <input type="text"
							class="protext" /> 元 <input type="submit" class="proSub"
							value="确定" /></td>
					</tr>
					<tr>
						<th>面积：</th>
						<td><a href="javascript:;" class="pro-cur">不限</a> <a
							href="javascript:;">10平方</a> <a href="javascript:;">20-40平方</a> <a
							href="javascript:;">41-60平方</a> <a href="javascript:;">61-80平方</a>
							<a href="javascript:;">100平方以上</a></td>
					</tr>
					<tr>
						<th>房型：</th>
						<td><a href="javascript:;" class="pro-cur">不限</a> <a
							href="javascript:;">一室一厅</a> <a href="javascript:;">两室一厅</a> <a
							href="javascript:;">3室一厅</a> <a href="javascript:;">一室一厅一卫</a></td>
					</tr>
				</table>
				<div class="paixu">
					<strong>排序：</strong> <a href="javascript:;" class="pai-cur">默认</a>
					<a href="javascript:;">价格 &or;</a> <a href="javascript:;">最新
						&or;</a>
				</div>
			</form>
			<!--pro-search/-->
		</div>
		<!--width1190/-->
		<div class="width1190">
			<div class="pro-left">
				<c:forEach var="house" items="${houseList}" varStatus="M" >
					<dl>
						<dt>
							<a href="proinfo.html"><img src="${pageContext.request.contextPath}/images/fang${M.index +1}.jpg" width="286"
								height="188" /></a>
						</dt>
						<dd>
							<h3>
								<a href="proinfo.html">中装一室一厅，楼层好，采光足，稀缺房源</a>
							</h3>
							<div class="pro-wei">
								<img src="${pageContext.request.contextPath}/images/weizhi.png" width="12" height="16" /> <strong
									class="red">智慧园</strong>
							</div>
							<div class="pro-fang">一室一厅 38平 南 楼层中部/6层</div>
							<div class="pra-fa">发布人：张先生 发布时间：2015-12-03</div>
						</dd>
						<div class="price">
							¥ <strong>2890</strong><span class="font12">元/月</span>
						</div>
						<div class="clears"></div>
					</dl>
				</c:forEach>
			</div>
			<!--pro-left/-->
			<div class="pro-right">
				<h2 class="right-title">热门房源</h2>
				<div class="right-pro">
					<c:forEach var="hotHouse" items="${hotHouseList}" varStatus="M" >
						<dl>
							<dt>
								<a href="proinfo.html"><img src="${pageContext.request.contextPath}/images/fang${M.index +1}.jpg" /></a>
							</dt>
							<dd>
								<h3>
									<a href="proinfo.html">中装一室一厅，楼层好，采光足，稀缺房源</a>
								</h3>
								<div class="pro-fang">一室一厅 38平 南</div>
								<div class="right-price">1100元/月</div>
							</dd>
						</dl>
					</c:forEach>
				</div>
				<!--right-pro/-->
			</div>
			<!--pro-right/-->
			<div class="clears"></div>
		</div>
		<!--width1190/-->
	</div>
	<!--content/-->

</rapid:override>
<jsp:include page="index.jsp" />