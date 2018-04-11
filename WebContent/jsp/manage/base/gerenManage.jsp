<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		 $("#datagrid").datagrid({
			 title : "个人房源管理",
			 fitColumns : true, 
			 pagination : true, 
			 rownumbers : true,
			 fit : true,
			 url : "${pageContext.request.contextPath}/employee/getEmployeeList.do",
			 pageSize : 10,
			 pageList : [10,20,30],
			 toolbar : "#tb",
			 frozenColumns:[[
			     {sortable:false, resizable:true, align:'center', title:'', field:'ck',checkbox:true},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'编号', field:'seq'},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'帐号', field:'userCode'},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'姓名', field:'name'},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'性别', field:'sex'},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'电子邮箱', field:'email'},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'联系电话', field:'phoneNumber'}
			     ]]
		 })
	});
	
	var url;
	function openEmployeeAddDialog(){
		$("#dialog").dialog("open").dialog("setTitle","添加用户信息");
		url = "${pageContext.request.contextPath}/employee/addOrUpdateEmployee.do";
	}
	
	function openEmployeeModifyDialog(){
		var rows = $("#datagrid").datagrid("getSelections");
		if(rows.length != 1){
			$.messager.alert("系统提示","请选择一条记录");
			return;
		}
		var row = rows[0];
		$("#dialog").dialog("open").dialog("setTitle","编辑用户信息");
		$("#fm").form("load",row);
		url = "${pageContext.request.contextPath}/employee/addOrUpdateEmployee.do?seq="+row.seq;
	}
	
	function saveEmployee(){
		$("#fm").form("submit",{
			url:url,
			onSubmit:function(){
				if ($("#sex").combobox("getValue")=="") {
					$.messager.alert("系统提示", "请选择用户性别");
					return false;
				}
				return $(this).form("validate");
			},
			success:function(result){
				var result = eval('('+ result +')');
				if(result.success){
					$.messager.alert("系统提示", "保存成功");
					resetValue();
					$("#dialog").dialog("close");
					$("#datagrid").datagrid("reload");
				}else {
					$.messager.alert("系统提示", "保存失败");
					return;
				}
			}
		});
	}
	
	function resetValue(){
		$("#userCode").val("");
		$("#password").val("");
		$("#name").val("");
		$("#email").val("");
		$("#phoneNumber").val("");
		$("#sex").combobox("setValue", "");
	}
	
	function closeEmployeeDialog(){
		$("#dialog").dialog("close");
		resetValue();
	}
	
	function deleteEmployee(){
		var rows = $("#datagrid").datagrid("getSelections");
		if(rows.length == 0){
			$.messager.alert("系统提示","请至少选择一条记录");
			return;
		}
		var strSeqs = [];
		$.each(rows, function(index,val) {
			strSeqs.push(val.seq);
		}); 
		var seqs = strSeqs.join(",");
		$.messager.confirm("系统提示","确定删除这<font color=red>"+rows.length+"</font>条记录吗？",function(r){
			if (r) {
				$.post("${pageContext.request.contextPath}/employee/deleteEmployee.do",{seqs:seqs},function(result){
					if (result.success) {
						$.messager.alert("系统提示","删除成功");
						$("#datagrid").datagrid("reload");
					}else {
						$.messager.alert("系统提示","删除失败，请联系管理员");
					}
				},"json");
			}
		});
	}
	
	 function searchEmployee(){
		 $("#datagrid").datagrid('load',{
			"userCode":$("#s_userCode").val()
		 });
	 }
 
 	function clean(){
		$('#toDoFrm input').each(function(){
			$(this).val("");
		});
		$('#toDoFrm select').each(function(){
			$(this).val("");
		})
	}
</script>
<title>用户管理</title>
</head>
<body style="margin: 1px">
	 <table id="datagrid" class="easyui-datagrid" >
	 </table>
	 <div id="tb">
	 	<div>
	 		<a href="javascript:openEmployeeAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
	 		<a href="javascript:openEmployeeModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
	 		<a href="javascript:deleteEmployee()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
	 	</div>
	 	<div id="toDoFrm">
	 		&nbsp;用户名：&nbsp;<input type="text" id="s_userCode" size="20" onkeydown="if(event.keyCode==13) searchEmployee()"/>
	 		<a href="javascript:searchEmployee()" class="easyui-linkbutton fa fa-search" plain="true">搜索</a>
	 		<a href="javascript:clean()" class="easyui-linkbutton fa fa-ban" plain="true">清空</a>
	 	</div>
	 </div>
	 <div id="dialog" class="easyui-dialog" style="width:320px; height:250px; padding:10px 20px"
	  closed="true" buttons="#dialogButtons">
	  	<form id="fm" method="post">
	  		<table>
	  			<tr>
	  				<td>帐号：</td>
	  				<td><input type="text" id="userCode" name="userCode" style="width:154px" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
	  			</tr>
	  			<tr>
	  				<td>密码：</td>
	  				<td><input type="text" id="password" name="password" style="width:154px" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
	  			</tr>
	  			<tr>
	  				<td>姓名：</td>
	  				<td><input type="text" id="name" name="name" style="width:154px" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
	  			</tr>
	  			<tr>
	  				<td>性别：</td>
	  				<td>
	  					<select class="easyui-combobox" id="sex" name="sex" style="width:158px" editable="false" panelHeight="auto">
	  						<option value="">--请选择--</option>
	  						<option value="1">男</option>
	  						<option value="2">女</option>
	  					</select>
	  					&nbsp;<font color="red">*</font>
	  				</td>
	  			</tr>
	  			<tr>
	  				<td>邮箱：</td>
	  				<td><input type="text" id="email" name="email" style="width:154px" class="easyui-validatebox" validType="email" required="true"/>&nbsp;<font color="red">*</font></td>
	  			</tr>
	  			<tr>
	  				<td>联系电话：</td>
	  				<td><input type="text" id="phoneNumber" name="phoneNumber" style="width:154px" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
	  			</tr>
	  		</table>
	  	</form>
	  </div>
	  
	  <div id="dialogButtons">
	  	<a href="javascript:saveEmployee()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	  	<a href="javascript:closeEmployeeDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
	  </div>
</body>
</html>