<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>С������Դ����ϵͳ</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
.footer{text-align:center; background-color:#FFFFFF; line-height:24px; padding:50px 0;}
.footer i{font-style:normal; margin:0 5px;}
.footer a{color:#000;}
.footer a:hover{color:#F60;}
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	font-size: 36px;
	color: #009999;
	font-family: "��������";
}
-->
a:link{
text-decoration:none;
}
a:visited{
	text-decoration:none;
}
a:hover{
	text-decoration:underline;
}


</style>
<script type="text/javascript" src="Js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function checkUser(){
		$.post("AdminLogindo.bin",$("#form1").serialize(),
		function postcheck(data){
			if(data=="ok")
			{
				alert("��¼�ɹ�");
				window.location.replace("adminMain.jsp");
			}else if(data=="ok1"){
				alert("��¼�ɹ�");
				window.location.replace("Main.jsp");
			}else{
				alert("��¼ʧ��,�����û���������");
				window.location.replace("adminLogin.jsp");
			}
		});
	}
</script>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="images/top02.gif"><div align="center"><span class="STYLE1">������Դ����ϵͳ</span></div></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td>
	<form id="form1" name="usersForm" method="post" action="AdminLogindo.bin">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
        <td width="31%" height="35" class="login-text02">��ɫ��<br /></td>
        <td width="69%">
        	<select name="role" style="width:152px;">
        		<option value="1">����Ա</option>
        		<option value="0">Ա��</option>
        	</select>
        </td>
      </tr>
      <tr>
        <td width="31%" height="35" class="login-text02">�û�����<br /></td>
        <td width="69%"><input name="username" type="text" id="username" size="20" value="admin"/></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">�ܡ��룺<br /></td>
        <td><input name="password" type="password" id="password" size="21" value="111"/>&nbsp;&nbsp;<span class="login-dl"><a href="#">��������?</a></span></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">��֤�룺<br /></td>
        <td><input name="vali" type="text" size="7"/><img src="Vali.bin" height="25px" width="80px" style="position: relative;left:5px;top:8px;" id="im" onClick="this.src=this.src+'?'+Math.random();"/><span class="login-dl">&nbsp;������?<a href="#" onClick="im.src=im.src+'?'+Math.random();">��һ��</a></span></td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td><input type="button" class="right-button01" value="ȷ�ϵ�¼" onClick="checkUser()"/>
          <input type="reset" class="right-button02" value="�� ��" /></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table>
<div class="footer">
	<p><a href="">������Դ���</a><i>|</i><a href="">������Դ����</a><i>|</i><a href="">������ʿ</a><i>|</i><a href="">��ϵ����</a><i>|</i>�ͷ����ߣ�400-675-1234</p>
	<p>Copyright &copy; 2006 - 2014 ������Դ��Ȩ����&nbsp;&nbsp;&nbsp;��ICP��09037834��&nbsp;&nbsp;&nbsp;��ICP֤B1034-8373��&nbsp;&nbsp;&nbsp;ĳ�й�����XX�־ֱ�����ţ�123456789123</p>
</div>
</body>
</html>
