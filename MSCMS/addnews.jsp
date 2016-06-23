<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Add News</title>    
	<link rel="stylesheet" type="text/css" href="css/pntable.css"/>
	<link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="css/themes/icon.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>    
    <script type="text/javascript" src="js/frame/jquery-1.6.min.js"></script>
	<script type="text/javascript" src="js/frame/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript">	  
      function save(){
      	//sf();
        $('#ff').form('submit',{   
          url: 'savenews.action',   
          onSubmit: function(){   
            return $(this).form('validate');   
          },
          success:function(data){
            var mes = data.split('|');
		    if(mes[0]=="success"){
		      $.messager.alert('Success', mes[1], 'info');
		    }else{
		      $.messager.alert('Error', mes[1], 'error');
		    }
		    
		  }
        }); 
      }
     
	</script>
  </head>
  
  <body>
    <form method="post" id="ff" enctype="multipart/form-data">
    <table id="addpntb" class="pntb" style="width:500px" cellpadding="0" cellspacing="0">
    	<tr>
    		<td>新闻标题</td>
    		<td><input id="title" name="news.title" class="easyui-validatebox" required="true" style="width: 200px"/></td>
    	</tr>
    	<tr>
    		<td>新闻描述</td>
    		<td><textarea id="description" name="news.description" class="easyui-validatebox" required="true"  rows="6" style="height:100px;width: 300px"></textarea></td>
    	</tr>
    	<tr>
    		<td>新闻内容</td>
    		<td><textarea class="easyui-validatebox" name="news.content" rows="12" required="true" style="height:200px;width: 400px"></textarea></td>
    	</tr>
    	<tr>
    		<td>发布时间</td>
    		<td><input id="title" name="news.pdate" type="text" style="width: 200px"/></td>
    	</tr>
    	<tr>
    		<td>新闻图片</td>
    		<td><input id="img" name="img" type="file"/></td>
    	</tr>
    	<tr>
    		<td>新闻来源</td>
    		<td><input id="src" name="news.src" type="text" style="width: 200px"/></td>
    	</tr>
    	<tr>
    		<td>新闻类型</td>
    		<td><select id="newstype" class="easyui-combobox" name="news.newstype">
    				<option value="1">推荐</option>
    				<option value="2">热点</option>
    				<option value="3">娱乐</option>
    				<option value="4">社会</option>
    				<option value="5">段子</option>
    			</select></td>
    	</tr>
    	<!--  
    	<tr>
    		<td>是否可阅</td>
    		<td><input id="title" name="title" type="text"/></td>
    	</tr>
    	<tr>
    		<td>链接</td>
    		<td><input id="title" name="title" type="text"/></td>
    	</tr>
    	-->
      <tr><td colspan="2" align="center"><a href="#" class="easyui-linkbutton" iconCls="icon-save" onclick="save()">Add</a></td></tr>             
    </table>
    </form>
  </body>
</html>
