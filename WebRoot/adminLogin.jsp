<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>小星力资源管理系统</title>
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
	font-family: "方正舒体";
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
				alert("登录成功");
				window.location.replace("adminMain.jsp");
			}else if(data=="ok1"){
				alert("登录成功");
				window.location.replace("Main.jsp");
			}else{
				alert("登录失败,请检查用户名和密码");
				window.location.replace("adminLogin.jsp");
			}
		});
	}
</script>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="images/top02.gif"><div align="center"><span class="STYLE1">人力资源管理系统</span></div></td>
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
        <td width="31%" height="35" class="login-text02">角色：<br /></td>
        <td width="69%">
        	<select name="role" style="width:152px;">
        		<option value="1">管理员</option>
        		<option value="0">员工</option>
        	</select>
        </td>
      </tr>
      <tr>
        <td width="31%" height="35" class="login-text02">用户名：<br /></td>
        <td width="69%"><input name="username" type="text" id="username" size="20" value="admin"/></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">密　码：<br /></td>
        <td><input name="password" type="password" id="password" size="21" value="111"/>&nbsp;&nbsp;<span class="login-dl"><a href="#">忘记密码?</a></span></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">验证码：<br /></td>
        <td><input name="vali" type="text" size="7"/><img src="Vali.bin" height="25px" width="80px" style="position: relative;left:5px;top:8px;" id="im" onClick="this.src=this.src+'?'+Math.random();"/><span class="login-dl">&nbsp;看不清?<a href="#" onClick="im.src=im.src+'?'+Math.random();">换一个</a></span></td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td><input type="button" class="right-button01" value="确认登录" onClick="checkUser()"/>
          <input type="reset" class="right-button02" value="重 置" /></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table>
<div class="footer">
	<p><a href="">人力资源简介</a><i>|</i><a href="">人力资源公告</a><i>|</i><a href="">招纳贤士</a><i>|</i><a href="">联系我们</a><i>|</i>客服热线：400-675-1234</p>
	<p>Copyright &copy; 2006 - 2014 人力资源版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>
</div>
</body>
</html>
