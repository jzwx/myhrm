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
<form name="userForm" method="post" action="titleUpdate.bin" onSubmit="return userValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >职称信息更新</th>
  </tr>
  <%
	if(session.getAttribute("gettitle").toString()!=null){
   %>
  <input type="hidden" name="id" value="${gettitle.id}"/>
  <tr>
    <td class="CPanel">
		
		<table width="90%" border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="保存" class="button"/>　
			
			<input type="reset" value="返回" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>职称信息更新</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					<tr>
						<td nowrap align="right" width="9%">职称编号：</td>
						<td width="36%">
						<input name="tid" type="text" class="input" id="tid" value="${gettitle.tid}"/>
						<span class="red">*</span></td>
				   		<td width="12%"><div align="right">职称名称：</div></td>
				   		<td width="43%">
				   		<input name="tname" type="text" class="input" id="tname" value="${gettitle.tname}"/>
				      	<span class="red">*</span></tr>
				     <tr>
						<td nowrap align="right" width="9%">所属岗位：</td>
						<td width="36%">
						<input name="jname" type="text" class="input" id="jname" value="${gettitle.jname}"/>
						<span class="red">*</span></td>
				   	</tr>
					<tr>
						<td nowrap align="right">职称描述：</td>
						<td colspan="3">
						<textarea name="content" cols="100" rows="6" class="input" id="content">${gettitle.content}</textarea></td>
					</tr>
				</table>
			 		 <br />
				</fieldset>
				</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
  <%
}else{
 %>
   <tr>
    <td height="22" colspan="2" align="center" >没有查到该岗位信息！！！</td>
    </tr>
     <%
     }
      %>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="提交" type="submit" class="button" value="保存"/>　
			
			<input name="重置" type="reset" class="button" value="重置"/></TD>
		</TR>
		</TABLE>
</div>
</form>
</body>
</html>