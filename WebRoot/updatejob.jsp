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
<form name="userForm" method="post" action="jobUpdate.bin" onSubmit="return userValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >岗位信息更新</th>
  </tr>
  <%
	if(session.getAttribute("getjob").toString()!=null){
   %>
  <input type="hidden" name="id" value="${getjob.id}"/>
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
				<legend>岗位信息更新</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					<tr>
						<td nowrap align="right" width="9%">岗位编号</td>
						<td width="36%">
						<input name="jid" type="text" class="input" id="jid" value="${getjob.jid}"/>
						<span class="red">*</span></td>
				   		<td width="12%"><div align="right">岗位名称：</div></td>
				   		<td width="43%">
				   		<input name="jname" type="text" class="input" id="jname" value="${getjob.jname}"/>
				      	<span class="red">*</span></tr>
				     <tr>
						<td nowrap align="right" width="9%">管理人</td>
						<td width="36%">
						<input name="jlead" type="text" class="input" id="jlead" value="${getjob.jlead}"/>
						<span class="red">*</span></td>
				   		<td width="12%"><div align="right">所属部门：</div></td>
				   		<td width="43%">
				   		<input name="dname" type="text" class="input" id="dname" value="${getjob.dname}"/>
				      	<span class="red">*</span></tr>
				     <tr>
						<td nowrap align="right" width="9%">限制人数</td>
						<td width="36%">
						<input name="person" type="text" class="input" id="person" value="${getjob.person}"/>
						<span class="red">*</span></td>
				      	</tr>
					<tr>
						<td nowrap align="right">岗位描述：</td>
						<td colspan="3">
						<textarea name="content" cols="100" rows="6" class="input" id="content">${getjob.content}</textarea></td>
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