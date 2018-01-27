<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>邻居大妈-后台系统</title>
<link href="${pageContext.request.contextPath}/css/login_css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#login_sub").click(function(){
			var userCode=$("#userCode").val();
			var password=$("#password").val();
			
			if(userCode==null||userCode==""){
				alert("用户名不能为空！");
				return;
			}
			if(password==null||password==""){
				alert("密码不能为空！");
				return;
			}
			$("#submitForm").submit();
		});
		
		if('${errorMsg}'!=''){
			alert('${errorMsg}');
		}
	});
	
	/*回车事件*/
	function EnterPress(e){ //传入 event 
		var e = e || window.event; 
		if(e.keyCode == 13){
			var userCode=$("#userCode").val();
			var password=$("#password").val();
			
			if(userCode==null||userCode==""){
				alert("用户名不能为空！");
				return;
			}
			if(password==null||password==""){
				alert("密码不能为空！");
				return;
			}
			$("#submitForm").submit();
		} 
	} 
</script>
</head>
<body>
	<div id="login_center">
		<div id="login_area">
			<div id="login_box">
				<div id="login_form">
					<form id="submitForm" action="${pageContext.request.contextPath}/login/loginManage.do" method="post">
						<div id="login_tip">
							<span id="login_err" class="sty_txt2"></span>
						</div>
						<div>
							 用户名：<input type="text" value="${employeeModel.userCode}" name="employeeModel.userCode" class="userCode" id="userCode">
						</div>
						<div>
							密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" value="${employeeModel.password}" name="employeeModel.password" class="pwd" id="password" onkeypress="EnterPress(event)" onkeydown="EnterPress()">
						</div>
						<div id="btn_area">
							<input type="button" class="login_btn" id="login_sub"  value="登  录">
							<input type="reset" class="login_btn" id="login_ret" value="重 置">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>