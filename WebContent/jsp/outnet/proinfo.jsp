<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid"%>
<rapid:override name="content">
	<div class="content">
		<div class="width1190" style="width: 1000px;">
			<div class="proImg fl">
				<img src="/temp/test001.jpg" />
			</div>
			<!--proImg/-->
			<div class="proText fr">
				<h3 class="proTitle">上海市智慧园 两室一厅 一厨一卫</h3>
				<div class="proText1">
					<span class="fwjg">${houseModel.rent}<em class="jgdw">元/月</em></span><span>${houseModel.payWay}</span><br/> 
					编号：${houseModel.seq}<br/> 户型：${houseModel.houseType}<br/> 面积：${houseModel.acreage}㎡<br/>
					朝向：${houseModel.orientation}<br/> 楼层：${houseModel.floor}层/${houseModel.allFloor}层<br/> 
					装修：${houseModel.decor}<br/> 小区：${houseModel.neighbourhoods} ${houseModel.houseYear}年
				</div>
				<div class="xun-car">
					<a href="javascript:;" class="projrgwc">关注房源</a>
				</div>
				<!--xun-car/-->
			</div>
			<!--proText/-->
			<div class="clears"></div>
		</div>
		<!--width1190/-->
		<div class="proBox" style="width: 1000px; margin: 10px auto;">
			<div class="proEq">
				<ul class="fl">
					<li class="proEqCur">房源详情</li>
					<li>房源图片</li>
					<li>小区介绍</li>
				</ul>
				<div class="lxkf fr">
					<a
						href="http://wpa.qq.com/msgrd?v=3&uin=1072631488&site=qq&menu=yes"
						target="_blank"></a>
				</div>
				<div class="clears"></div>
			</div>
			<!--proEq/-->
			<div class="proList">

				枝江，是王松华仕途的重要一站。担任枝江市委书记期间，王松华起早贪黑，展现出过人的能力。调查人员告诉记者，枝江市能位居湖北省“十强县”之列，王松华立下汗马功劳。以江汉大道的修建为例，当年修建的时候，规划比较保守，唯有王松华力排众议，决定拓宽车道，引来非议一片。然而，几年过去，枝江经济社会快速发展，再回看这条路，人们都认为王松华有眼光，更有甚者，认为该路应该再修宽一些。<br />
				枝江成就了王松华，正是凭着在枝江任职时期的政绩，王松华被提拔为副厅级干部。但某种程度上说，又是枝江“毁了”王松华，也正是在枝江时期，王松华性格中的负面因素被不断放大，长时间的唯我独尊，让他养成了独断专行、骄傲跋扈、自以为是的作风，这为他日后的严重违纪埋下了伏笔。<br />
				2006年，王松华迎来了人生中的十字路口。当时，正值市县换届，踌躇满志的他满心以为能“更进一步”，不料却与宜昌市委常委的职务失之交臂。<br />
				这样的挫折，本是一个契机。如果泰然处之，反躬自省，人生未尝不能有所精进。然而，王松华无法接受这样的结果，他认为组织不公，怨天尤人。即便是2007年初，组织提拔其为宜昌市经济技术开发区管委会主任（副厅级），他依然精神萎靡，公开宣称“不想来这里”。<br />
				而在这之后，尽管王松华多方“运作”，但又与两次“进步”机会擦肩而过。连续三次受挫，对他打击严重，让他心理彻底失衡，从此一蹶不振。<br />
				“我当时像疯了一样。”王松华这样形容自己当时的状态。有一次，宜昌市某市领导到开发区视察工作，本应出面接待的他坚决不去，并愤愤不平地说：“我去陪他干嘛？！他的位子本来应该是我的！！”<br />
				<br /> <img src="${pageContext.request.contextPath}/images/fang1.jpg" /><img src="${pageContext.request.contextPath}/images/fang2.jpg" /><img
					src="${pageContext.request.contextPath}/images/fang3.jpg" /><img src="${pageContext.request.contextPath}/images/fang4.jpg" /><img
					src="${pageContext.request.contextPath}/images/fang5.jpg" /><img src="${pageContext.request.contextPath}/images/fang6.jpg" /><img
					src="${pageContext.request.contextPath}/images/fang7.jpg" /><img src="${pageContext.request.contextPath}/images/fang8.jpg" />
			</div>
			<!--proList/-->
			<div class="proList">
				<img src="${pageContext.request.contextPath}/images/fang1.jpg" /><img src="${pageContext.request.contextPath}/images/fang2.jpg" /><img
					src="${pageContext.request.contextPath}/images/fang3.jpg" /><img src="${pageContext.request.contextPath}/images/fang4.jpg" /><img
					src="${pageContext.request.contextPath}/images/fang5.jpg" /><img src="${pageContext.request.contextPath}/images/fang6.jpg" /><img
					src="${pageContext.request.contextPath}/images/fang7.jpg" />
			</div>
			<!--proList/-->
			<div class="proList">暂无信息...</div>
			<!--proList/-->
		</div>
		<!--proBox/-->
	</div>
	<!--content/-->
</rapid:override>
<jsp:include page="index.jsp" />