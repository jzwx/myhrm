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
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="images/nav04.gif">&nbsp;</td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
			<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="20"><span class="newfont07">毕业学校信息查看</span></td>
				</tr>
				<tr>
					<td height="40" class="font42">
<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
	<tr class="CTitle" >
		<td height="22" colspan="5" align="center" style="font-size:16px">毕业学校信息列表</td>
	</tr>
	<tr bgcolor="#EEEEEE">
		<td width="5%" align="center" height="30">编号</td>
		<td width="30%" align="center" >学校名称</td>
		<td width="15%" align="center" >所属类别</td>
		<td width="30%" align="center" >简介</td>
		<td width="20%" align="center" >执行操作</td>
	 </tr>
	 
	  <%
	 ArrayList slist=(ArrayList)session.getAttribute("slist");
	 	if(slist!=null&&slist.size()>0){
	  %>
	 <c:forEach items="${slist }" var="sl" begin="<%=(pg.getNowPage()-1)*pg.getpageSize() %>" end="<%=pg.getNowPage()*pg.getpageSize()-1 %>">
	<tr bgcolor="#FFFFFF">
		<td height="22" align="center" >${sl.id }&nbsp;</td>
		<td height="22" align="center" >${sl.name }&nbsp;</td>
		<td height="22" align="center" >${sl.schoolclass }</td>
		<td height="22" align="center" >${sl.content }&nbsp;</td>
		<td height="22" align="center" ><a href="schoolGet.bin?id=${sl.id}">修改</a>&nbsp;&nbsp;<a href="schoolDel.bin?id=${sl.id}" onClick="return confirm('确认删除吗？')">删除</a></td>
	</tr>
	</c:forEach>
	<tr align="center" bgcolor="#FFFFFF">
		<td colspan="5" align="center" >
		<a href="listschool.jsp?nowPage=1">[首页]</a>
		<%
		if(pg.getNowPage()>1){
		 %>
		<a href="listschool.jsp?nowPage=<%=pg.getNowPage()-1 %>">[上一页]</a>
		<%
		}else{
		%>
		<a href="listschool.jsp?nowPage=1">[上一页]</a>
		<%
		}
		 %>
		<c:forEach var="i" begin="1" end="<%=pg.getpageCount("hr_school") %>" step="1">
			<a href="listschool.jsp?nowPage=${i}">[${i}]</a>
		</c:forEach>
		<%
		if(pg.getNowPage()<pg.getpageCount("hr_school")){
		%>
		<a href="listschool.jsp?nowPage=<%=pg.getNowPage()+1 %>">[下一页]</a>
		<%
		}else{
		%>
		<a href="listschool.jsp?nowPage=<%=pg.getpageCount("hr_school")%>">[下一页]</a>
		<%
		}
		 %>
		<a href="listschool.jsp?nowPage=<%=pg.getpageCount("hr_school")%>">[尾页]</a><span style="float:right;">总共<%=pg.getpageCount("hr_school") %>页/当前是第<%=pg.getNowPage() %>页</span>
		</td>
	</tr>
	<%
	}else{
	 %> 
	<tr>
		<td height="22" colspan="5" align="center" >对不起，暂时没有毕业学校信息！！！</td>
	</tr>
	 <%
	 }
	  %>
</table>
            </td>
        </tr>
      </table>
          </td>
        </tr>
</table>
</body>
</html>
