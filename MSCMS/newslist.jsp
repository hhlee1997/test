<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>News List</title>
<link rel="stylesheet" type="text/css" href="css/pntable.css" />
<link rel="stylesheet" type="text/css"
	href="css/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="css/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/frame/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/frame/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	function formatType(val,row){
		switch (val) {
		case 1:
			return '推荐';
			break;
		case 2:
			return '热点';
			break;
		case 3:
			return '娱乐';
			break;
		case 4:
			return '社会';
			break;
		case 5:
			return '段子';
			break;
		default:
			break;
		}
	}
</script>
</head>

<body>
	<table id="dg" title="新闻列表" class="easyui-datagrid"
		style="width:1000px;height:500px" url="queryall.action"
		toolbar="#toolbar" rownumbers="true" fitColumns="true"
		singleSelect="true">
		<thead>
			<tr>
				<th field="title" width="50">新闻标题</th>
				<th field="description" width="100">新闻描述</th>
				<th field="pdate" width="50">发布时间</th>
				<th field="src" width="50">新闻来源</th>
				<th field="newstype" width="50" formatter="formatType">新闻类型</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="newUser()" style="display: none">New User</a> <a href="#"
			class="easyui-linkbutton" iconCls="icon-edit" plain="true"
			onclick="editUser()">编辑新闻</a> <a href="#"
			class="easyui-linkbutton" iconCls="icon-remove" plain="true"
			onclick="destroyUser()">删除新闻</a>
	</div>
</body>
</html>
