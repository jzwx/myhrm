<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
.h
	{
		height:20px;
		color:#AAAAAA;
		font-size:10px;
		visibility:hidden;
		display:none;
	}
</style>
<script type="text/JavaScript">
	function outrepass()
	{
		var rp=f.pwd2.value;
		if(rp=="")
		{
		repass_mess.style.display="none";
		repass_mess.style.visibility="hidden";
		f.pwd2.style.border="1px solid #AAAAAA";
		}
		else
		{
			if(f.pwd1.value==f.pwd2.value)
			{
				repass_mess.innerHTML="";
				repass_mess.style.visibility="hidden";
				repass_mess.style.display="none";
				f.pwd2.style.border="1px solid #aaaaaa";
				f.pwd2.style.color="black";
			}
			else
			{
				repass_mess.innerHTML="�������벻ƥ��";
				repass_mess.style.color="red";
				f.pwd2.style.color="red";
				f.pwd2.style.border="1px solid red";
				repass_mess.style.visibility="visible";
				repass_mess.style.display="block";
			}
		}
	}
</script>
</head>
<body class="ContentBody">
<form name="f" method="post" action="passwdUpdate.bin" onSubmit="return userValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >�޸�����</th>
  </tr>

  <input type="hidden" name="id" value=""/>
  <tr>
    <td class="CPanel">
		
		<table width="90%" border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="����" class="button"/>��
			
			<input type="button" value="����" class="button" onclick="javascript:history.go(-1);"/>
		</td></tr>
		<input type="hidden" name="name" value="<%=request.getParameter("name")%>"/>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>�޸�����</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
				<tr>
					<td rowspan="2"><img src="images/ioc.png"/></td>
					<td nowrap align="right" width="9%">������:</td>
						<td width="75%">
						<input name="pwd1" type="password" class="input" id="pwd1" />
						<span class="red">*</span></td>
				</tr>
				<tr>
					<td nowrap align="right" width="9%">ȷ��������:</td>
						<td width="75%">
						<input name="pwd2" type="password" class="input" id="pwd2" onBlur="outrepass()"/>
						<span class="red">*</span>
						<span class="h" id="repass_mess">
						���ٴ���������
						</span>
						</td>
				</tr>
				</table>
			 		 <br />
				</fieldset>
				</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
<!-- 
   <tr>
    <td height="22" colspan="2" align="center" >û�в鵽�ñ�ҵѧУ��Ϣ������</td>
    </tr>
 -->
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="�ύ" type="submit" class="button" value="����" onClick="return confirm('�����޸ĳɹ�')"/>��
			
			<input name="����" type="reset" class="button" value="����"/></TD>
		</TR>
		</TABLE>
</div>
</form>
</body>
</html>
