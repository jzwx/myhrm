<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
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
	background-image: url(images/left.gif);
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="images/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02"><%=session.getAttribute("username") %></span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="passwordupdate.jsp?name=<%=session.getAttribute("username") %>" target="mainFrame" class="left-font01">修改密码</a>&nbsp;][&nbsp;<a href="adminLogin.jsp" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
				<!--系统设置 -->
			  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img9" id="img9" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('9');" >系统设置</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
			  <table id="subtree9" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu19" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="mainfra.jsp" target="mainFrame" class="left-font03" onClick="tupian('19');">系统首页</a></td>
        </tr>
      </table>
		
		<!--系统设置 -->
		
		
		

		<!--  消息系统开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >部门管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="adddept.jsp" target="mainFrame" class="left-font03" onClick="tupian('3');">部门信息录入</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu4" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
					<a href="Deptlist.bin" target="mainFrame" class="left-font03" onClick="tupian('4');">部门信息查看</a></td>
				</tr>
			<!-- 	<tr>
				  <td width="9%" height="20" ><img id="xiaotu5" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="job.do?action=listjob&isstock=yes" target="mainFrame" class="left-font03" onClick="tupian('5');">人才库浏览
							</a></td>
				</tr> -->
      </table>
		<!--  消息系统结束    -->



        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >岗位管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="addjob.jsp" target="mainFrame" class="left-font03" onClick="tupian('6');">岗位信息录入</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu7" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="Joblist.bin" target="mainFrame" class="left-font03" onClick="tupian('7');">岗位信息查看</a></td>
				</tr>
			<!--  	<tr>
				  <td width="9%" height="20" ><img id="xiaotu8" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="educate.do?action=listeducate&educate=1" target="mainFrame" class="left-font03" onClick="tupian('8');">培训总结查看</a></td>
				</tr>-->
      </table>
		<!--  项目系统结束    -->

<!--职称 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img5" id="img5" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');" >职称管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu15" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="addTitle.jsp" target="mainFrame" class="left-font03" onClick="tupian('15');">职称信息录入</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu16" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="Titlelist.bin" target="mainFrame" class="left-font03" onClick="tupian('16');">职称信息查看</a></td>
        </tr>
      </table>
      <!-- 职称 结束-->
      <!--职工 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img6" id="img6" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('6');" >职工管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu17" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="addgetWorkers.bin" target="mainFrame" class="left-font03" onClick="tupian('17');">职工信息录入</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu18" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="Workerslist.bin" target="mainFrame" class="left-font03" onClick="tupian('18');">职工信息查看</a></td>
        </tr>
      </table>
      <!-- 职工-->

	  <!--  客户系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >奖惩管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu9" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="addinstitution.jsp" target="mainFrame" class="left-font03" onClick="tupian('9');">奖惩信息登记</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu10" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="Institutionlist.bin" target="mainFrame" class="left-font03" onClick="tupian('10');">奖惩信息查看</a></td>
        </tr>
      </table>

	  <!--  客户系统结束    -->

	  <!--  人员系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('3');" >薪金管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree3" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu11" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="addstipend.jsp" target="mainFrame" class="left-font03" onClick="tupian('11');">薪金数据录入</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu12" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="Stipendlist.bin" target="mainFrame" class="left-font03" onClick="tupian('12');">薪金数据查看</a></td>
        </tr>
      </table>
	
	  <!--  人员系统结束    -->
<!--  任务系统开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >系统人员管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu1" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="adduser.jsp" target="mainFrame" class="left-font03" onClick="tupian('1');">系统人员信息录入</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu2" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="Userlist.bin" target="mainFrame" class="left-font03" onClick="tupian('2');">系统人员信息查看</a></td>
				</tr>
      </table>
		<!--  任务系统结束    -->

			<!-- 毕业学校 -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img4" id="img4" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('4');" >毕业学校管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree4" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu13" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="addschool.jsp" target="mainFrame" class="left-font03" onClick="tupian('13');">毕业学校信息录入</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu14" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="Schoollist.bin" target="mainFrame" class="left-font03" onClick="tupian('14');">毕业学校信息查看</a></td>
        </tr>
      </table>
		<!-- 毕业学校 结束-->

		
	  </TD>
  </tr>
  
</table>
</body>
</html>
