<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>更新</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <span>${msg}</span>
  <a href="index.jsp">返回首页</a>
    <form action="update.do" method="post">
 	<table width="400px">
 		<tr>
 		<td>ID：</td>
 	<td> <input type="text" name="id" id="id" /></td>
 	 </tr>
    		<tr>
    			<td>名称：</td>
    			<td><input type="text" name="name" id="name"   /></td>
    		</tr>
    		
    		
    		<tr>
    			<td>年龄：</td>
    			<td><input type="text" name="age" id="age"  /></td>
    		</tr>
    		<tr>
    			<td>性别：</td>
    			<td><input type="text" name="sex" id="sex" /></td>
    		</tr>
    		<tr>
    			<td colspan="2"><input type="submit" value="保存" /></td>
    		</tr>
    	</table>
    	</form>
  </body>
</html>
