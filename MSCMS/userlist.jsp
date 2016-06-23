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
	function formatType(val, row) {
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
	<table id="dg" title="My Users" class="easyui-datagrid"
		style="width:1000px;height:500px" url="queryalluser.action"
		toolbar="#toolbar" rownumbers="true" fitColumns="true"
		singleSelect="true">
		<thead>
			<tr>
				<th field="username" width="50">用户名</th>
				<th field="password" width="50">密码</th>
				<th field="nickname" width="50">昵称</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="newUser()">New User</a> <a href="#"
			class="easyui-linkbutton" iconCls="icon-edit" plain="true"
			onclick="editUser()">Edit User</a> <a href="#"
			class="easyui-linkbutton" iconCls="icon-remove" plain="true"
			onclick="destroyUser()">Remove User</a>
	</div>
</body>
</html>
