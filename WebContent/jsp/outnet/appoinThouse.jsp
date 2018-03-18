<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>指定租房</title>
	<link rel="shortcut icon"
		href="${pageContext.request.contextPath}/images/favicon.ico" />
	<link type="text/css"
		href="${pageContext.request.contextPath}/css/outnet.css"
		rel="stylesheet" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/artdialog/artDialog.css">
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/js.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/artdialog/artDialog.js"></script>
	<script type="text/javascript">
		function appoinThouse(){
			var region = $('#region option:selected') .val();
			var price = $("#price").val();
			var phone = $("#phone").val();
			var remarks = $("#remarks").val();
			$.ajax({
				url : '${pageContext.request.contextPath}/appoinThouse/addAppoinThouse.do',
				dataType : 'json',
				type : 'post',
				async:true,
				data:{
					'appoinThouseModel.region':region, 
					'appoinThouseModel.price':price, 
					'appoinThouseModel.phone':phone, 
					'appoinThouseModel.remarks':remarks
					},
				success:function(data){
					if (data.success) {
						var d = dialog({
							content: '提交数据成功，请耐心等待工作人员联系！'
						});
						d.show();
						setTimeout(function () {
							d.close().remove();
							top.dialog({id:'appoinThouse'}).close().remove();
						}, 2000);
					}
				},
				error:function(error){
					alert("系统错误!");
				}
			});
		}
	</script>
</head>
<body>
	<div class="zhidingzufang">
		<form id="appoinThouseForm" action="" method="post">
			<div class="zhiding-list">
				<label>选择区域：</label> 
				<select id="region">
					<option>--请选择--</option>
					<option value="1">智慧园</option>
					<option value="2">立民村</option>
					<option value="3">塘口村</option>
					<option value="4">勤劳村</option>
					<option value="5">芦胜村</option>
					<option value="6">知新村</option>
				</select>
			</div>
			<div class="zhiding-list">
				<label>价格(元/月)：</label> <input type="text" id="price"/>
			</div>
			<div class="zhiding-list">
				<label>联系电话：</label> <input type="text" id="phone"/>
			</div>
			<div class="zhiding-list-textarea">
				<label>备注：</label> <textarea id="remarks" class="grtextarea"></textarea>
			</div>
			<div class="zhidingsub">
				<input type="button" value="提交" onclick="javascript: appoinThouse();"/>
			</div>
		</form>
		<div class="zhidingtext">
			<h3>指定购房注意事宜：</h3>
			<p>1、请详细输入您所需要租赁的房源信息(精确到小区)</p>
			<p>2、制定租赁申请提交后，客服中心会在24小时之内与您取得联系</p>
			<p>3、如有任何疑问，请随时拨打我们的电话：400-000-0000</p>
		</div>
		<!--zhidingtext/-->
	</div>
	<!--zhidingzufang/-->

</body>
</html>