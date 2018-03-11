<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>人力资源管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
<script type="text/javascript" src="Js/typem.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >职工详细信息</th>
  </tr>

  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<%
		 	if(request.getSession().getAttribute("information")!=null){
		%>
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td align="right" width="9%">用户名：</td>
					    <td width="36%">${information.username}</td>
					    <td align="right" width="9%">密码：</td>
					    <td width="36%">${information.password}</td>
					  <tr>
					  
					  <td width="20%"><div align="right">性别：</div></td>
					    <td width="43%">
					    <c:if test="${information.sex=='1'}">男</c:if>
					    <c:if test="${information.sex=='0'}">女</c:if>
					    </td>
					    <td align="right" width="15%">出生日期：</td>
					    <td width="36%">${information.birthday}</td>
					  </tr>
					  <tr>
					     <td align="right" width="9%">Email：</td>
					    <td width="36%">${information.email}</td>
					  </tr>
					   <tr>
					    <td colspan="4" align="center">
					    <a href="#" onclick="javascript:history.back();">返回</a></td>
					  </tr>
				</table>
				</fieldset>		
			</td>
		</tr>
		<%}else{ %>
		<tr>
			<td height="22" colspan="4" align="center" >该信息不存在！！！</td>
		</tr>
		<%}%>
		</table>
	 </td>
  </tr>
</tabel>	
</div>
</body>
</html>