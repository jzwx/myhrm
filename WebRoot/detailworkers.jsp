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
		 	if(request.getSession().getAttribute("workersget")!=null){
		%>
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td align="right" width="9%">职工编号：</td>
					    <td width="36%">${workersget.wid}</td>
					    <td align="right" width="9%">姓名：</td>
					    <td width="36%">${workersget.name}</td>
					  <tr>
					  
					  <td width="20%"><div align="right">性别：</div></td>
					    <td width="43%">
					    <c:if test="${workersget.sex=='1'}">男</c:if>
					    <c:if test="${workersget.sex=='0'}">女</c:if>
					    </td>
					    
					    <td align="right" width="9%">年龄：</td>
					    <td>${workersget.age}</td>
					    
					  </tr>
					  <tr>
					   <td><div align="right">所在部门：</div></td>
					    <td>${workersget.dname}
				        </td>
					    <td align="right">岗位：</td>
					    <td>${workersget.job}
				        </td>
					  <tr>
					  <td align="right">职称：</td>
					    <td>${workersget.title}</td>
					    <td align="right">专业：</td>
					    <td>${workersget.specialty}
				        </td>
					    </tr>
					  <tr>
					   <td><div align="right">学历：</div></td>
					    <td>${workersget.studyeffort}</td>
					    <td align="right">学校：</td>
					    <td>${workersget.school}
				        </td>
					    </tr>
					  <tr>
					   <td><div align="right">联系电话：</div></td>
					    <td>${workersget.tel}</td>
					    <td align="right">Email：</td>
					    <td colspan="4">${workersget.email}</td>
					  </tr>
					  <tr>
					    <td align="right">详细经历：</td>
					    <td colspan="4">${workersget.content}</td>
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