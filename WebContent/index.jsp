<%@page import="com.user.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
table {

width: 90%;

background: #ccc;

margin: 10px auto;

border-collapse: collapse;

/*border-collapse:collapse合并内外边距

(去除表格单元格默认的2个像素内外边距*/

}

th,td {

height: 25px;

line-height: 25px;

text-align: center;

border: 1px solid #ccc;

}

th {

background: #eee;

font-weight: normal;

}

tr {

background: #fff;

}

tr:hover {

background: #cc0;

}

td a {

color: #06f;

text-decoration: none;

}

td a:hover {

color: #06f;

text-decoration: underline;

} 
</style>
</head>
<%
	// 从请求里获取数据集合
	List<User> list = (List<User>) request.getAttribute("list");
	// 集合为null，意味着没获取，直接跳转到do页面进行获取
	if (list == null) {
		request.getRequestDispatcher("/getUserList.do").forward(request, response);
		return;
	}
%>

<body>
<div id="main">
	<form action="getUserList.do" method="post" style="text-align: center;">
	<a href="addUser.jsp">新增</a>
		关键字：<input type="text" name="keyWord" /><input type="submit" value="查询" />
	</form>
	<table id="mytable" width="100%" cellspacing="0px" cellpadding="0px">
		<tr>
			<td align="center">序号</td>
			<td align='center'>名称</td>
			<td align='center'>编号</td>
			<td align='center'>性别</td>
			<td align='center'>年龄</td>
			<td align='center'>操作</td>
		</tr>
		<c:forEach items="${list}" var="cd" varStatus="status">
			<tr>
				<td>${status.index+1 }</td>
				<td>${cd.name }</td>
				<td>${cd.id }</td>
				<td>${cd.sex}</td>
				<td>${cd.age }</td>
				<td>
				 <a href="update.jsp">修改</a> 
				 <a href="javascript:" onclick="del(${ cd.id })">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>
<script src="js/jquery-1.8.3.js"></script>
<script>
function del(id){
	if(confirm("是否删除？")){
		 $.ajax({
             type: "POST",
		  url: "delete.do",
          data: {
              "Id": id,
          },
          dataType: "text",
          success: function(data) {
        	  if(data=="1"){
        		  alert("删除成功！");
        		  location.href="index.jsp";
        		  return false;
        	  }else{
        		  alert("删除失败！");
        	  }
          }
      });
	}
}


</script>