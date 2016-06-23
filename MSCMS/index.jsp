<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Mstanford CMS</title>
		<link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css" />
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<script type="text/javascript" src="js/frame/jquery-1.6.min.js"></script>
		<script type="text/javascript" src="js/frame/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="js/myjs.js"></script>
		<script type="text/javascript">
	function addTab(title, url) {
		if ($('#tt').tabs('exists', title)) {
			$('#tt').tabs('select', title);
		} else {
			var content = '<iframe scrolling="auto" frameborder="0"  src="'
					+ url + '" style="width:100%;height:100%;"></iframe>';
			$('#tt').tabs('add', {
				title : title,
				content : content,
				//href:url, 
				closable : true,
				extractor : function(data) {
					var tmp = $('<div></div>').html(data);
					data = tmp.find('#content').html();
					tmp.remove();
					return data;
				}
			});
		}
	}
	
function exportExcel(){
	window.location.href="${pageContext.request.contextPath}/action/exportExcel.action";
	//$.post('${pageContext.request.contextPath}/action/exportExcel.action',function(){
	//});
}
</script>
		</script>
	</head>
	<body class="easyui-layout">
		<div region="north" style="height: 30px; background: #dfe8f6"
			noheader="true" border="false">
			<div>
				<span class="main-logo">Mstanford CMS</span>
				<span class="main-exit"> 欢迎, <span><s:property
							value="user.username" /> </span>&nbsp;&nbsp;|&nbsp;&nbsp;<a
					href="logout.action">退出</a> </span>
			</div>
		</div>
		<div region="south" style="height: 30px;" noheader="true"
			border="false">
			<p style="height: 30px; line-height: 30px; text-align: center">
				Create by Mstanford R&D Department
			</p>
		</div>
		<div region="west" split="true" title="Function Menu"
			style="width: 200px;" headerCls="main-panel-header">
			<div class="easyui-panel" title="Materials Management"
				collapsible="true" style="width: auto; height: auto; padding: 10px;"
				border="false" headerCls="main-menu-header">
				<a href="#" class="easyui-linkbutton" plain="true" onclick="addTab('新闻录入','addnews.jsp')">录入新闻</a>
				<br />
				<a href="#" class="easyui-linkbutton" plain="true" onclick="addTab('新闻查询','newslist.jsp')">查询新闻</a>
				<br />
			</div>
			<div class="easyui-panel" title="System Manage" collapsible="true"
				style="width: auto; height: auto; padding: 10px;" border="false"
				headerCls="main-menu-header">
				<a href="#" class="easyui-linkbutton" plain="true"
					onclick="addTab('用户管理','userlist.jsp')">用户管理</a>
				<br />
			</div>
		</div>
		<div region="center" title="center title" style="background: #eee;"
			noheader="true">
			<div id="tt" class="easyui-tabs" fit="true" border="false">
				<div title="首页"></div>
			</div>
		</div>
	</body>
</html>
