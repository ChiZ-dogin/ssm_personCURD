<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>新增</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <span>${msg}</span>
  <a href="index.jsp">返回首页</a>
    <form action="add.do" method="post">
    	<table width="400px">
    		<tr>
    			<td>名称：</td>
    			<td><input type="text" name="name" id="name"/></td>
    		</tr>
    		<tr>
    			<td>年龄：</td>
    			<td><input type="text" name="age" id="age" /></td>
    		</tr>
    		<tr>
    			<td>性别：</td>
    			<td><input type="text" name="sex" id="sex" /></td>
    		</tr>
    		<tr>
    			<td colspan="2"><input type="submit" value="新增" /></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
