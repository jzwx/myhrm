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
<title>������Դ����ϵͳ</title>
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
<form name="userForm" method="post" action="schoolUpdate.bin" onSubmit="return userValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >��ҵѧУ��Ϣ����</th>
  </tr>
  <%
	if(session.getAttribute("getschool").toString()!=null){
   %>
  <input type="hidden" name="id" value="${getschool.id}"/>
  <tr>
    <td class="CPanel">
		
		<table width="90%" border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="����" class="button"/>��
			
			<input type="reset" value="����" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>��ҵѧУ��Ϣ����</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					<tr>
						<td nowrap align="right" width="9%">ѧУ����</td>
						<td width="36%">
						<input name="name" type="text" class="input" id="name" value="${getschool.name}"/>
						<span class="red">*</span></td>
				   		<td width="12%"><div align="right">�������</div></td>
				   		<td width="43%">
				   		<input name="schoolclass" type="text" class="input" id="schoolclass" value="${getschool.schoolclass}"/>
				      	<span class="red">*</span></tr>
					<tr>
						<td nowrap align="right">ѧУ������</td>
						<td colspan="3">
						<textarea name="content" cols="100" rows="6" class="input" id="content">${getschool.content}</textarea></td>
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
    <td height="22" colspan="2" align="center" >û�в鵽�ñ�ҵѧУ��Ϣ������</td>
    </tr>
     <%
     }
      %>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="�ύ" type="submit" class="button" value="����"/>��
			
			<input name="����" type="reset" class="button" value="����"/></TD>
		</TR>
		</TABLE>
</div>
</form>
</body>
</html>