<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="pg" class="com.my.bean.Page"></jsp:useBean>
<jsp:setProperty property="*" name="pg"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listInstitution.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������Դ����ϵͳ</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "����";
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
               <td height="20"><span class="newfont07">������Ϣ�鿴</span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="5" align="center" style="font-size:16px">������Ϣ�б�</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
                  		<td height="22" align="center" >���</td>
				        <td height="22" align="center" >��������</td>
						<td height="22" align="center" >����ԭ��</td>
						<td height="22" align="center" >����˵��</td>
						<td height="22" align="center" >ִ�в���</td>
                  </tr>
                  <%
	 ArrayList ilist=(ArrayList)session.getAttribute("ilist");
	 	if(ilist!=null&&ilist.size()>0){
	  %>
<c:forEach items="${ilist}" var="il" begin="<%=(pg.getNowPage()-1)*pg.getpageSize() %>" end="<%=pg.getNowPage()*pg.getpageSize()-1 %>">
			  <tr  bgcolor="#FFFFFF">
			  	<td height="22" align="center" >${il.id}</td>
				<td height="22" align="center" >${il.name}</td>
				<td height="22" align="center" >${il.reason}</td>
				<td height="22" align="center" >${il.explains}</td>
				<td height="22" align="center" ><a href="institutionGet.bin?id=${il.id}">�޸�</a>&nbsp;&nbsp;<a href="institutionDel.bin?id=${il.id}" onClick="return confirm('ȷ��ɾ����')">ɾ��</a></td>
			  </tr>
</c:forEach>

<tr align="center" bgcolor="#FFFFFF">
		<td colspan="5" align="center" >
		<a href="listInstitution.jsp?nowPage=1">[��ҳ]</a>
		<%
		if(pg.getNowPage()>1){
		 %>
		<a href="listInstitution.jsp?nowPage=<%=pg.getNowPage()-1 %>">[��һҳ]</a>
		<%
		}else{
		%>
		<a href="listInstitution.jsp?nowPage=1">[��һҳ]</a>
		<%
		}
		 %>
		<c:forEach var="i" begin="1" end="<%=pg.getpageCount("hr_institution") %>" step="1">
			<a href="listInstitution.jsp?nowPage=${i}">[${i}]</a>
		</c:forEach>
		<%
		if(pg.getNowPage()<pg.getpageCount("hr_institution")){
		%>
		<a href="listInstitution.jsp?nowPage=<%=pg.getNowPage()+1 %>">[��һҳ]</a>
		<%
		}else{
		%>
		<a href="listInstitution.jsp?nowPage=<%=pg.getpageCount("hr_institution")%>">[��һҳ]</a>
		<%
		}
		 %>
		<a href="listInstitution.jsp?nowPage=<%=pg.getpageCount("hr_institution")%>">[βҳ]</a><span style="float:right;">�ܹ�<%=pg.getpageCount("hr_institution") %>ҳ/��ǰ�ǵ�<%=pg.getNowPage() %>ҳ</span>
		</td>
	</tr>
	
<%
}else{
 %>
			  <tr  bgcolor="#FFFFFF">
				<td height="22" colspan="5" align="center" >�Բ���û����ӽ�����Ϣ������</td>
			  </tr>
 <%
 }
  %>
            </table></td>
        </tr>
      </table>
          </td>
        </tr>
</table>
</body>
</html>

  </body>
</html>
