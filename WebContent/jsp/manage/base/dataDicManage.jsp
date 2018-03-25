<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		 $("#datagrid").datagrid({
			 title : "数据字典管理",
			 fitColumns : true, 
			 pagination : true, 
			 rownumbers : true,
			 fit : true,
			 url : "${pageContext.request.contextPath}/dataDic/getDataDicList.do",
			 pageSize : 10,
			 pageList : [10,20,30],
			 toolbar : "#tb",
			 frozenColumns:[[
			     {sortable:false, resizable:true, align:'center', title:'', field:'ck',checkbox:true},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'编号', field:'seq'},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'数据字典名', field:'dataDicName'},
			     {sortable:false, resizable:true, align:'center', width:"150", title:'数据字典值', field:'dataDicValue'}
			     ]]
			 })
		});
 
 var url;

 function searchDataDic(){
	 $("#datagrid").datagrid('load',{
		"dataDicModel.dataDicName":$("#dataDicName").combobox("getValue"),
		"dataDicModel.dataDicValue":$("#dataDicValue").val() 
	 });
 }

 function openDataDicAddDialog(){
	 $("#dlg").dialog("open").dialog("setTitle","添加数据字典信息");
	 url="${pageContext.request.contextPath}/dataDic/save.do";
 }
 
 function openDataDicModifyDialog(){
	 var selectedRows=$("#datagrid").datagrid("getSelections");
	 if(selectedRows.length!=1){
		 $.messager.alert("系统提示","请选择一条要编辑的数据！");
		 return;
	 }
	 var row=selectedRows[0];
	 $("#dlg").dialog("open").dialog("setTitle","编辑数据字典信息");
	 $("#fm").form("load",row);
	 url="${pageContext.request.contextPath}/dataDic/save.do?id="+row.id;
 }
 
 function saveDataDic(){
	 var dataDicName=$("#dataDicName").combobox("getText");
	 var dataDicValue=$("#dataDicValue").val();
	 if(dataDicName==""){
		 $.messager.alert("系统提示","数据字典名不能为空！");
		 return;
	 }
	 if(dataDicValue==""){
		 $.messager.alert("系统提示","数据字典值不能为空！");
		 return;
	 }
	 $.post(url,{dataDicName:dataDicName,dataDicValue:dataDicValue},function(result){
			if(result.success){
				 $.messager.alert("系统提示","保存成功！");
				 $("#dlg").dialog("close");
				 $("#datagrid").datagrid("reload");
				 resetValue();
			}else{
				$.messager.alert("系统提示","保存失败！");
			}
		},"json");
 }
 
 function resetValue(){
	 $("#dataDicName").combobox("setValue","");
	 $("#dataDicValue").val("");
 }
 
 function closeDataDicDialog(){
	 $("#dlg").dialog("close");
	 resetValue();
 }
 
 function deleteDataDic(){
	 var selectedRows=$("#datagrid").datagrid("getSelections");
	 if(selectedRows.length==0){
		 $.messager.alert("系统提示","请选择要删除的数据！");
		 return;
	 }
	 var strIds=[];
	 for(var i=0;i<selectedRows.length;i++){
		 strIds.push(selectedRows[i].id);
	 }
	 var ids=strIds.join(",");
	 $.messager.confirm("系统提示","您确定要删除这<font color=red>"+selectedRows.length+"</font>条数据吗？",function(r){
		if(r){
			$.post("${pageContext.request.contextPath}/dataDic/delete.do",{ids:ids},function(result){
				if(result.success){
					 $.messager.alert("系统提示","数据已成功删除！");
					 $("#datagrid").datagrid("reload");
				}else{
					$.messager.alert("系统提示","数据删除失败，请联系系统管理员！");
				}
			},"json");
		} 
	 });
 }
 
</script>
<title>数据字典管理页面</title>
</head>
<body style="margin: 1px">
 <table id="datagrid" class="easyui-datagrid">
 </table>
 <div id="tb">
 	<div>
 		<a href="javascript:openDataDicAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
 		<a href="javascript:openDataDicModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
 		<a href="javascript:deleteDataDic()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
 	</div>
 	<div>
 		&nbsp;数据字典名：&nbsp;<input class="easyui-combobox" id="dataDicName" data-options="panelHeight:'auto',editable:false,valueField:'dataDicName',textField:'dataDicName',url:'${pageContext.request.contextPath}/dataDic/findDataDicName.do'"/>
 		&nbsp;数据字典值：&nbsp;<input type="text" id="dataDicValue" size="20" onkeydown="if(event.keyCode==13) searchDataDic()"/>
 		<a href="javascript:searchDataDic()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
 	</div>
 </div>
 
  <div id="dlg" class="easyui-dialog" style="width:620px;height:150px;padding: 10px 20px"
   closed="true" buttons="#dlg-buttons">
   
   <form id="fm" method="post">
   	<table cellspacing="8px">
   		<tr>
   			<td>数据字典名：</td>
   			<td><input class="easyui-combobox" id="dataDicName" name="dataDicModel.dataDicName" data-options="panelHeight:'auto',valueField:'dataDicName',textField:'dataDicName',url:'${pageContext.request.contextPath}/dataDic/findDataDicName.do'"/>&nbsp;<font color="red">*</font></td>
   			<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
   			<td>数据字典值：</td>
   			<td><input type="text" id="dataDicValue" name="dataDicModel.dataDicValue" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
   		</tr>
   	</table>
   </form>
 </div>
 
 <div id="dlg-buttons">
 	<a href="javascript:saveDataDic()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
 	<a href="javascript:closeDataDicDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
 </div>
</body>
</html>