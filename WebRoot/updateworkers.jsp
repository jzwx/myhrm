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
<form name="jobForm" method="post" action="workersUpdate.bin" onSubmit="return jobValidate();" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >ְ����Ϣ����</th>
  </tr>
     <%
	if(session.getAttribute("getworkers").toString()!=null){
   %>
  <input type="hidden" name="id" value="${getworkers.id}"/>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="����" class="button"/>��
			
			<input type="reset" value="����" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>ְ����Ϣ����</legend>
				<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
				<tr>
					<td nowrap align="right" width="9%">ְ����ţ�</td>
					<td width="36%"><input name="wid" type="text" class="input" value="${getworkers.wid}">
					<span class="red">*</span></td>
					<td nowrap align="right" width="9%">ְ��������</td>
					<td width="36%"><input name="name" type="text" class="input" value="${getworkers.name}">
					<span class="red">*</span></td>
				</tr>
				<tr>
				<td width="12%"><div align="right">�Ա�</div></td>
					<td width="43%">
					<c:if test="${getworkers.sex=='1'}">
					<input name="sex" type="radio" value="1" checked>��
					<input name="sex" type="radio" value="0">Ů  
					</c:if>
					<c:if test="${getworkers.sex=='0'}">
					<input name="sex" type="radio" value="1">��
					<input name="sex" type="radio" value="0" checked>Ů 
					</c:if>
					<td nowrap align="right" width="9%">���䣺</td>
					<td><input name="age" type="text" class="input" value="${getworkers.age}"></td>
					
				</tr>
					<tr>
					<td><div align="right">�������ţ�</div></td>
					<td><input name="dname" type="text" class="input" value="${getworkers.dname}">
					<span class="red">*</span></td>
					
					<td nowrap align="right">��λ��</td>
					<td><input name="job" type="text" class="input" value="${getworkers.job}">
					<span class="red">*</span></td>
				
				</tr>
				<tr>
					<td><div align="right">ְ�ƣ�</div></td>
					<td><input name="title" type="text" class="input" value="${getworkers.title}">
					<span class="red">*</span></td>
					
					<td nowrap align="right">��ѧרҵ��</td>
					<td><input name="specialty" type="text" class="input" value="${getworkers.specialty}">
					<span class="red">*</span></td>
					
				</tr>
				<tr>
				<td><div align="right">ѧ����</div></td>
					<td><input name="studyeffort" type="text" class="input" value="${getworkers.studyeffort}">
					<span class="red">*</span></td>
					
					<td nowrap align="right">��ҵѧУ��</td>
					<td><input name="school" type="text" class="input" value="${getworkers.school}">
					<span class="red">*</span></td>
					
				</tr>
				<tr>
				<td><div align="right">��ϵ�绰��</div></td>
					<td><input name="tel" type="text" class="input" value="${getworkers.tel}">
					<span class="red">*</span></td>
						<td><div align="right">Email��</div></td>
					<td><input name="email" type="text" class="input" value="${getworkers.email}">
					<span class="red">*</span></td>
				</tr>
				<tr>
					<td width="9%" nowrap align="right">��ϸ������</td>
					<td colspan="3">
					<textarea name="content" cols="100" rows="6" class="input" id="content">${getworkers.content}
					</textarea></td>
				</tr>
				</table>
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
    <td height="22" colspan="2" align="center" >û�в鵽����Ա��Ϣ������</td>
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
