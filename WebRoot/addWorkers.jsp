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
<form name="jobForm" method="post" action="addWorkers.bin" onSubmit="return jobValidate();" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >职工信息录入</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="保存" class="button"/>　
			
			<input type="button" value="返回" class="button" onclick="javascript:history.go(-1);"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>职工信息</legend>
				<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
				<tr>
					<td nowrap align="right" width="9%">职工编号：</td>
					<td width="36%"><input name="wid" type="text" class="input">
					<span class="red">*</span></td>
					<td nowrap align="right" width="9%">职工姓名：</td>
					<td width="36%"><input name="name" type="text" class="input">
					<span class="red">*</span></td>
				</tr>
				<tr>
				<td width="12%"><div align="right">性别：</div></td>
					<td width="43%">
					<input name="sex" type="radio" value="1" checked>男
					<input name="sex" type="radio" value="0">女  
					
					<td nowrap align="right" width="9%">年龄：</td>
					<td><input name="age" type="text" class="input"></td>
					
				</tr>
					<tr>
					<td><div align="right">所属部门：</div></td>
					<td>
					<select name="dname">
					<c:forEach items="${dclist}" var="dc" >
						<option value="${dc.dname}">${dc.dname}</option>
					</c:forEach>
					</select>
					<span class="red">*</span>
					</td>
					
					<td nowrap align="right">岗位：</td>
					<td><input name="job" type="text" class="input">
					<span class="red">*</span></td>
				
				</tr>
				<tr>
					<td><div align="right">职称：</div></td>
					<td><input name="title" type="text" class="input">
					<span class="red">*</span></td>
					
					<td nowrap align="right">所学专业：</td>
					<td><input name="specialty" type="text" class="input">
					<span class="red">*</span></td>
					
				</tr>
				<tr>
				<td><div align="right">学历：</div></td>
					<td><input name="studyeffort" type="text" class="input">
					<span class="red">*</span></td>
					
					<td nowrap align="right">毕业学校：</td>
					<td><select name="school">
					<c:forEach items="${sclist}" var="sc" >
						<option value="${sc.id}">${sc.name}</option>
					</c:forEach>
					</select>
					<span class="red">*</span></td>
					
				</tr>
				<tr>
				<td><div align="right">联系电话：</div></td>
					<td><input name="tel" type="text" class="input">
					<span class="red">*</span></td>
						<td><div align="right">Email：</div></td>
					<td><input name="email" type="text" class="input">
					<span class="red">*</span></td>
				</tr>
				<tr>
					<td width="9%" nowrap align="right">详细经历：</td>
					<td colspan="3">
					<textarea name="content" cols="100" rows="6" class="input" id="content">
					</textarea></td>
				</tr>
				</table>
				</fieldset>		
			</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
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