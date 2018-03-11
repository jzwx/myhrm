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
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20"><span class="newfont07">岗位信息查看</span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
<tr class="CTitle" >
	<td height="22" colspan="6" align="center" style="font-size:16px">岗位信息列表</td>
</tr>


<tr bgcolor="#EEEEEE">
	<td width="10%" align="center" height="30">序号</td>
	<td width="10%" align="center" >职称编号</td>
	<td width="10%" align="center" >职称名</td>
	<td width="10%" align="center" >所属岗位</td>
	<td width="40%" align="center" >职称描述</td>
	<td width="20%" align="center" >执行操作</td>
</tr>
	  <%
	 ArrayList tlist=(ArrayList)session.getAttribute("tlist");
	 	if(tlist!=null&&tlist.size()>0){
	  %>
<c:forEach items="${tlist}" var="tl"  begin="<%=(pg.getNowPage()-1)*pg.getpageSize() %>" end="<%=pg.getNowPage()*pg.getpageSize()-1 %>">
	<tr  bgcolor="#FFFFFF">
	<td height="22" align="center" >${tl.id}</td>
	<td height="22" align="center" >${tl.tid}</td>
	<td height="22" align="center" >${tl.tname}</td>
	<td height="22" align="center" >${tl.jname}</td>
	<td height="22" align="center" >${tl.content}</td>
	<td height="22" align="center" ><a href="titleGet.bin?id=${tl.id}">修改</a>&nbsp;&nbsp;<a href="titleDel.bin?id=${tl.id}" onClick="return confirm('确认删除吗?')">删除</a></td>
	</tr>
</c:forEach>

<tr align="center" bgcolor="#FFFFFF">
		<td colspan="6" align="center" >
		<a href="listtitle.jsp?nowPage=1">[首页]</a>
		<%
		if(pg.getNowPage()>1){
		 %>
		<a href="listtitle.jsp?nowPage=<%=pg.getNowPage()-1 %>">[上一页]</a>
		<%
		}else{
		%>
		<a href="listtitle.jsp?nowPage=1">[上一页]</a>
		<%
		}
		 %>
		<c:forEach var="i" begin="1" end="<%=pg.getpageCount("hr_title") %>" step="1">
			<a href="listtitle.jsp?nowPage=${i}">[${i}]</a>
		</c:forEach>
		<%
		if(pg.getNowPage()<pg.getpageCount("hr_title")){
		%>
		<a href="listtitle.jsp?nowPage=<%=pg.getNowPage()+1 %>">[下一页]</a>
		<%
		}else{
		%>
		<a href="listtitle.jsp?nowPage=<%=pg.getpageCount("hr_title")%>">[下一页]</a>
		<%
		}
		 %>
		<a href="listtitle.jsp?nowPage=<%=pg.getpageCount("hr_title")%>">[尾页]</a><span style="float:right;">总共<%=pg.getpageCount("hr_title") %>页/当前是第<%=pg.getNowPage() %>页</span>
		</td>
	</tr>
	<%
	}else{
	 %>
<tr  bgcolor="#FFFFFF">
	<td height="22" colspan="6" align="center" >对不起，没有信息！！！</td>
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