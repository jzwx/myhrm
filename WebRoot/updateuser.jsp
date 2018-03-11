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
<form name="userForm" method="post" action="userUpdate.bin" onSubmit="return userValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >人员信息更新</th>
  </tr>
  <%
	if(session.getAttribute("getuser").toString()!=null){
   %>
  <input type="hidden" name="id" value="${getuser.id }"/>
  <tr>
    <td class="CPanel">
		
		<table width="90%" border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
			<input type="submit"value="更新" class="button"/>　
			<input type="reset" value="返回" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>人员信息</legend>
					  <table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="9%">用户名：</td>
					    <td width="36%"><input name="username" type="text" class="input" id="username" value="${getuser.username }">
						<span class="red">*</span></td>
					    <td width="12%"><div align="right">登陆密码：</div></td>
					    <td width="43%"><input name="password" type="text" class="input" id="password" value="${getuser.password }"/>
				        <span class="red">*</span></tr>
					  <tr>
					  <td nowrap align="right" width="9%">姓名：</td>
						<td width="36%">
						<input name="name" type="text" class="input" id="name" value="${getuser.name }"/>
						<span class="red">*</span></td>
					    <td nowrap align="right" width="9%">性别：</td>
					    <td>
					    <c:if test="${getuser.sex=='1' }">
					    <input name="sex" type="radio" value="1" checked/>男
					   	<input name="sex" type="radio" value="0"/>女
						</c:if>
						<c:if test="${getuser.sex=='0' }">
					    <input name="sex" type="radio" value="1"/>男
					   	<input name="sex" type="radio" value="0" checked/>女
						</c:if>
						</td>
					  </tr>
					  <tr>
					    <td><div align="right">出生日期：</div></td>
					    <td><input name="birthday" type="text" class="input" id="birthday" value="${getuser.birthday }">
				        <span class="red">*</span></td>
					    <td nowrap align="right">是否管理员：</td>
					    <td>
					   <c:if test="${getuser.isadmin=='1' }"> 
					    <input name="isadminhelp" type="checkbox"  onClick="javascript:adminChecked();" checked/>
					    <input type="hidden"  name="isadmin" value="1"></td>
					    </c:if>
					    <c:if test="${getuser.isadmin=='0' }"> 
					    <input name="isadminhelp" type="checkbox"  onClick="javascript:adminChecked();"/>
					    <input type="hidden"  name="isadmin" value="0"></td>
					    </c:if>
						<input type="hidden"  name="isadmin" value=""></td>
					    <td>&nbsp;</td>
					    <td>&nbsp;</td>
					  </tr>
					  <tr>
					    <td nowrap align="right">人员简介：</td>
					    <td colspan="3"><textarea name="content" cols="100" rows="6" class="input" id="content">${getuser.content }</textarea></td>
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
    <td height="22" colspan="2" align="center" >没有查到该人员信息！！！</td>
    </tr>
     <%
     }
      %>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="submit" class="button" value="更新"/>　
			
			<input type="reset" class="button" value="重置"/></TD>
		</TR>
	</TABLE>
</div>
</form>
</body>
</html>