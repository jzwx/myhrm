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
<form name="userForm" method="post" action="listWorkersearch.bin" onSubmit="return userValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >Ա����Ϣ����</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table width="90%" border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="����" class="button"/>��
		<input type="button" value="����" name="back" class="button" onclick="javascript:history.go(-1);"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>Ա����Ϣ����</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					<tr>
						<td nowrap align="right" width="9%">������</td>
						<td width="36%"><input type="text" class="input"  id="search11" name="search" onkeypress="searchworkers()" ></td>
				   		<td width="12%"><input  type="submit" class="button" value="����"/>��</td>
				   		<td width="43%"><input name="����" type="reset" class="button" value="����"/></td>
				   	</tr>
					<tr>
						<tr>
						<td colspan="4">
						<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
<tr class="CTitle" >
	<td height="22" colspan="7" align="center" style="font-size:16px">ְ����Ϣ�б�</td>
</tr>

<tr bgcolor="#EEEEEE">
	<td width="15%" align="center" height="30">���</td>
	<td width="15%" align="center" >����</td>
	<td width="10%" align="center" >�Ա�</td>
	<td width="10%" align="center" >����</td>
	<td width="20%" align="center" >��������</td>
	<td width="15%" align="center" >���ڸ�λ</td>
	<td width="15%" align="center" >ִ�в���</td>
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
	<c:if test="${wl.sex=='1'}">��</c:if><c:if test="${wl.sex=='0'}">Ů</c:if>
	</td>
	<td height="22" align="center" >${wl.age}</td>
	<td height="22" align="center" >${wl.dname}</td>
	<td height="22" align="center" >${wl.job}</td>
	<td height="22" align="center" ><a href="Getworkers.bin?id=${wl.id}">��ϸ</a>&nbsp;&nbsp;<a href="workersGet.bin?id=${wl.id}">�޸�</a>
	<a href="workersDel.bin?id=${wl.id}" onClick="return confirm('ȷ��ɾ����?')">ɾ��</a></td>
	</tr>
	</c:forEach>
	<tr align="center" bgcolor="#FFFFFF">
		<td colspan="8" align="center" >
		<a href="listWorkersearch.jsp?nowPage=1">[��ҳ]</a>
		<%
		if(pg.getNowPage()>1){
		 %>
		<a href="listWorkersearch.jsp?nowPage=<%=pg.getNowPage()-1 %>">[��һҳ]</a>
		<%
		}else{
		%>
		<a href="listWorkersearch.jsp?nowPage=1">[��һҳ]</a>
		<%
		}
		 %>
		<c:forEach var="i" begin="1" end="<%=pg.getpageCount("hr_workers") %>" step="1">
			<a href="listWorkersearch.jsp?nowPage=${i}">[${i}]</a>
		</c:forEach>
		<%
		if(pg.getNowPage()<pg.getpageCount("hr_workers")){
		%>
		<a href="listWorkersearch.jsp?nowPage=<%=pg.getNowPage()+1 %>">[��һҳ]</a>
		<%
		}else{
		%>
		<a href="listWorkersearch.jsp?nowPage=<%=pg.getpageCount("hr_workers")%>">[��һҳ]</a>
		<%
		}
		 %>
		<a href="listWorkersearch.jsp?nowPage=<%=pg.getpageCount("hr_workers")%>">[βҳ]</a><span style="float:right;">�ܹ�<%=pg.getpageCount("hr_workers") %>ҳ/��ǰ�ǵ�<%=pg.getNowPage() %>ҳ</span>
		</td>
	</tr>
<%
}else{
 %>

<tr  bgcolor="#FFFFFF">
	<td height="22" colspan="7" align="center" >�Բ���û����Ϣ������</td>
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
