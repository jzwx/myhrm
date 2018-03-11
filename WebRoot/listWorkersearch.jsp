<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="pg" class="com.my.bean.Page"></jsp:useBean>
<jsp:setProperty property="*" name="pg"/>
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
<form name="userForm" method="post" action="listWorkersearch.bin" onSubmit="return userValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >员工信息搜索</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table width="90%" border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="搜索" class="button"/>　
		<input type="button" value="返回" name="back" class="button" onclick="javascript:history.go(-1);"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>员工信息搜索</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					<tr>
						<td nowrap align="right" width="9%">搜索：</td>
						<td width="36%"><input type="text" class="input"  id="search11" name="search" onkeypress="searchworkers()" ></td>
				   		<td width="12%"><input  type="submit" class="button" value="搜索"/>　</td>
				   		<td width="43%"><input name="重置" type="reset" class="button" value="重置"/></td>
				   	</tr>
					<tr>
						<tr>
						<td colspan="4">
						<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
<tr class="CTitle" >
	<td height="22" colspan="7" align="center" style="font-size:16px">职工信息列表</td>
</tr>

<tr bgcolor="#EEEEEE">
	<td width="15%" align="center" height="30">编号</td>
	<td width="15%" align="center" >姓名</td>
	<td width="10%" align="center" >性别</td>
	<td width="10%" align="center" >年龄</td>
	<td width="20%" align="center" >所属部门</td>
	<td width="15%" align="center" >所在岗位</td>
	<td width="15%" align="center" >执行操作</td>
</tr>
 <%
	 ArrayList wlist=(ArrayList)session.getAttribute("wlist");
	 	if(wlist!=null&&wlist.size()>0){
	  %>
	 <c:forEach items="${wlist}" var="wl" begin="<%=(pg.getNowPage()-1)*pg.getpageSize() %>" end="<%=pg.getNowPage()*pg.getpageSize()-1 %>"> 
	<tr  bgcolor="#FFFFFF">
	<td height="22" align="center" >${wl.wid}</td>
	<td height="22" align="center" >${wl.name}</td>
	<td height="22" align="center" >
	<c:if test="${wl.sex=='1'}">男</c:if><c:if test="${wl.sex=='0'}">女</c:if>
	</td>
	<td height="22" align="center" >${wl.age}</td>
	<td height="22" align="center" >${wl.dname}</td>
	<td height="22" align="center" >${wl.job}</td>
	<td height="22" align="center" ><a href="Getworkers.bin?id=${wl.id}">详细</a>&nbsp;&nbsp;<a href="workersGet.bin?id=${wl.id}">修改</a>
	<a href="workersDel.bin?id=${wl.id}" onClick="return confirm('确认删除吗?')">删除</a></td>
	</tr>
	</c:forEach>
	<tr align="center" bgcolor="#FFFFFF">
		<td colspan="8" align="center" >
		<a href="listWorkersearch.jsp?nowPage=1">[首页]</a>
		<%
		if(pg.getNowPage()>1){
		 %>
		<a href="listWorkersearch.jsp?nowPage=<%=pg.getNowPage()-1 %>">[上一页]</a>
		<%
		}else{
		%>
		<a href="listWorkersearch.jsp?nowPage=1">[上一页]</a>
		<%
		}
		 %>
		<c:forEach var="i" begin="1" end="<%=pg.getpageCount("hr_workers") %>" step="1">
			<a href="listWorkersearch.jsp?nowPage=${i}">[${i}]</a>
		</c:forEach>
		<%
		if(pg.getNowPage()<pg.getpageCount("hr_workers")){
		%>
		<a href="listWorkersearch.jsp?nowPage=<%=pg.getNowPage()+1 %>">[下一页]</a>
		<%
		}else{
		%>
		<a href="listWorkersearch.jsp?nowPage=<%=pg.getpageCount("hr_workers")%>">[下一页]</a>
		<%
		}
		 %>
		<a href="listWorkersearch.jsp?nowPage=<%=pg.getpageCount("hr_workers")%>">[尾页]</a><span style="float:right;">总共<%=pg.getpageCount("hr_workers") %>页/当前是第<%=pg.getNowPage() %>页</span>
		</td>
	</tr>
<%
}else{
 %>

<tr  bgcolor="#FFFFFF">
	<td height="22" colspan="7" align="center" >对不起，没有信息！！！</td>
</tr>

<%
}
 %>
</table>
						
						
						</td>
						</tr>
					</tr>
				</table>
			 		 <br />
				</fieldset>
				</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>

		</TABLE>
</div>
</form>
</body>
</html>
