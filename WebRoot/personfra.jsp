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

    .aorange {
    font-size: 20px;
    color: #ff5f07;
    font-family: "����",serif;
    font-weight: bold;
    }
    .agreen {
    font-size: 20px;
    color: #55e8df;
    font-weight: bold;
    }
    .one {
    font-family: "����",serif;
    font-size: 20px;
    color: #000;
    font-weight: normal;
    }
    .spc {
    color:#ff5f07;
    }
    div,select,p {
    font-size: 12px;
    color:#000;
    }
    div#festival {
    color: #d8f6f8;
    width: 130px;
    padding: 2px;
    margin: 0;
    background-color: #0978a6;
    }
    div#datedetail {
    width: 130px;
    border: 0;
    padding: 2px;
    margin: 0;
    background-color:#e8f5f9;
    text-align:right;
    }
    div#datedetail span {
    color: #23460f;
    }
    div#detail {
    position: absolute;
    visibility: hidden;
    margin: 0;
    border:1px solid #a6a8ab;
    }
    div#date {
    width:98%;
    font-size:16px;
    padding:5px;
    border: 1px solid #a6a8ab;
    background-color: #e6f0fa;
    }
    div#calendar {
    float:left;
    text-align:center;
    width:500px;
    border: 1px solid #a6a8ab;
    border-top:0;
    height:auto;
    }
    #calendarhead {
    color: #fafbfb;
    border:0;
    padding:0;
    margin:0;
    background-color: #0978a6;
    }
    #calendarhead tr td {
    width:70px;
    font-weight:bold;
    font-family:"����",serif;
    font-size:20px;
    padding:1px;
    }
    div#panel {
    margin:0;
    padding:10px;
    }
    div#panel div {
    padding:2px;
    margin-top:20px;
    background:#e8f5f9;
    border:1px solid #a6a8ab;
    font-size:9pt;
    cursor:pointer;
    }
    #week {
    background-color: #fcfcfc;
    border:0;
    padding:0;
    margin:0;
    }
    #week tr td {
    padding:1px;
    margin:0;
    width:70px;
    border-bottom: 1px solid #efefef;
    border-left: 1px solid #efefef;
    }
    .tr2 td {
    background-color: #e8f5f9;
    }
    #valid {
    float:left;
    margin:0;
    padding: 30px;
    }
    #valid div {
    padding:2px;
    margin-top:20px;
    }
    #valid a img {
    border:0;
    }
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Js/time.js">

    </script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<!--  -->
<body onLoad="initial()">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="images/nav04.gif">&nbsp;</td>
        </tr>
    </table>
    </td>
   </tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" >
	<tr>
	<!-- �� -->
		<td>
				<table width="100%" border="0" cellpadding="0" cellspacing="0" style="width:100%" align="center">
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>ϵͳʱ��</legend>
		<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
		<tr>
		<td><img src="images/icod1.jpg"/></td>
		<td><div id="a" ></div></td>
		<td><input type="button" value="�鿴"/></td>
		</tr>
		</table>
			 		 <br />
				</fieldset>
				</TD>
			
		</TR>
		</TABLE>
		
		<table width="100%" border="0" cellpadding="0" cellspacing="0" style="width:100%" align="center">
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>ϵͳ��Ϣ</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
										<tr>
		<td><img src="images/icod4.jpg"/></td>
		<td><font color="red">֪ͨ:</font> <font color="red">0</font> ������֪ͨ,��  <font color="red">0</font>  ��.</td>
		<td><input type="button" value="�鿴"/></td>
		</tr>
		<tr>
		<td><img src="images/icod1.jpg"/></td>
		<td><font color="red">��Ϣ:</font> <font color="red">0</font> ��δ����Ϣ,��  <font color="red">0</font> ��.</td>
		<td><input type="button" value="�鿴"/></td>
		</tr>
		</table>
			 		 <br />
				</fieldset>
				</TD>
			
		</TR>
		</TABLE>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" style="width:100%" align="center">
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>��ݹ���</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					<tr>
						<td nowrap align="right" width="10%"><img src="images/ico24.gif"/></td>
						<td width="15%">
						<a href="Information.bin?username=<%=session.getAttribute("username") %>">������Ϣ��ѯ</a>
						</td>
						<td nowrap align="right" width="10%"><img src="images/ico24.gif"/></td>
						<td width="15%">
						<a href="passwordupdate.jsp?name=<%=session.getAttribute("username") %>">�޸�����</a>
						</td>
				</table>
			 		 <br />
				</fieldset>
				</TD>
			
		</TR>
		</TABLE>
		
		</td>
		
			<!-- �� -->
		<td>
		 <table width="20%" border="0" cellspacing="0" cellpadding="0" style="background-color:#FFFFFF;" align="right">
    <script language="javascript">
    function addFavorite(url,title){
    var fav_url = url;
    var fav_title = title;
    if (document.all && window.external){
    window.external.AddFavorite(fav_url,fav_title);
    }else if (window.sidebar){
    window.sidebar.addPanel(fav_title,fav_url,"");
    }else{
    alert("�������֧�֣����ֶ������ղؼ�");
    }
    }
    </script>
    <tr>
    <td>
    <table width="50%" border="0" cellspacing="0" cellpadding="0" align="right">
    <tr>
    <td>
       
    </td>
    <td style="text-align:center;">
    <table width="600" cellpadding="0" cellspacing="0" style="border:1px solid #666;">
    <tr>
    <td colspan="2" valign="top">
    <div id="date" style="text-align:center;">
    <p>����
    <select name="select" id="sy" onchange="changeCld()">
    <option>1900</option>
    <option>1901</option>
    <option>1902</option>
    <option>1903</option>
    <option>1904</option>
    <option>1905</option>
    <option>1906</option>
    <option>1907</option>
    <option>1908</option>
    <option>1909</option>
    <option>1910</option>
    <option>1911</option>
    <option>1912</option>
    <option>1913</option>
    <option>1914</option>
    <option>1915</option>
    <option>1916</option>
    <option>1917</option>
    <option>1918</option>
    <option>1919</option>
    <option>1920</option>
    <option>1921</option>
    <option>1922</option>
    <option>1923</option>
    <option>1924</option>
    <option>1925</option>
    <option>1926</option>
    <option>1927</option>
    <option>1928</option>
    <option>1929</option>
    <option>1930</option>
    <option>1931</option>
    <option>1932</option>
    <option>1933</option>
    <option>1934</option>
    <option>1935</option>
    <option>1936</option>
    <option>1937</option>
    <option>1938</option>
    <option>1939</option>
    <option>1940</option>
    <option>1941</option>
    <option>1942</option>
    <option>1943</option>
    <option>1944</option>
    <option>1945</option>
    <option>1946</option>
    <option>1947</option>
    <option>1948</option>
    <option>1949</option>
    <option>1950</option>
    <option>1951</option>
    <option>1952</option>
    <option>1953</option>
    <option>1954</option>
    <option>1955</option>
    <option>1956</option>
    <option>1957</option>
    <option>1958</option>
    <option>1959</option>
    <option>1960</option>
    <option>1961</option>
    <option>1962</option>
    <option>1963</option>
    <option>1964</option>
    <option>1965</option>
    <option>1966</option>
    <option>1967</option>
    <option>1968</option>
    <option>1969</option>
    <option>1970</option>
    <option>1971</option>
    <option>1972</option>
    <option>1973</option>
    <option>1974</option>
    <option>1975</option>
    <option>1976</option>
    <option>1977</option>
    <option>1978</option>
    <option>1979</option>
    <option>1980</option>
    <option>1981</option>
    <option>1982</option>
    <option>1983</option>
    <option>1984</option>
    <option>1985</option>
    <option>1986</option>
    <option>1987</option>
    <option>1988</option>
    <option>1989</option>
    <option>1990</option>
    <option>1991</option>
    <option>1992</option>
    <option>1993</option>
    <option>1994</option>
    <option>1995</option>
    <option>1996</option>
    <option>1997</option>
    <option>1998</option>
    <option>1999</option>
    <option>2000</option>
    <option>2001</option>
    <option>2002</option>
    <option>2003</option>
    <option>2004</option>
    <option>2005</option>
    <option>2006</option>
    <option>2007</option>
    <option>2008</option>
    <option>2009</option>
    <option>2010</option>
    <option>2011</option>
    <option>2012</option>
    <option>2013</option>
    <option>2014</option>
    <option>2015</option>
    <option>2016</option>
    <option>2017</option>
    <option>2018</option>
    <option>2019</option>
    <option>2020</option>
    <option>2021</option>
    <option>2022</option>
    <option>2023</option>
    <option>2024</option>
    <option>2025</option>
    <option>2026</option>
    <option>2027</option>
    <option>2028</option>
    <option>2029</option>
    <option>2030</option>
    <option>2031</option>
    <option>2032</option>
    <option>2033</option>
    <option>2034</option>
    <option>2035</option>
    <option>2036</option>
    <option>2037</option>
    <option>2038</option>
    <option>2039</option>
    <option>2040</option>
    <option>2041</option>
    <option>2042</option>
    <option>2043</option>
    <option>2044</option>
    <option>2045</option>
    <option>2046</option>
    <option>2047</option>
    <option>2048</option>
    <option>2049</option>
    </select>
    ��
    <select name="select2" id="sm" onchange="changeCld()">
    <option>1</option>
    <option>2</option>
    <option>3</option>
    <option>4</option>
    <option>5</option>
    <option>6</option>
    <option>7</option>
    <option>8</option>
    <option>9</option>
    <option>10</option>
    <option>11</option>
    <option>12</option>
    </select>
    �� <span id="gz"> </span> </p>
    </div></td>
    </tr>
    <tr>
    <td align="center" valign="top">
    <div id="calendar">
    <div id="detail">
    <div id="datedetail"></div>
    <div id="festival"></div>
    </div>
    <table id="calendarhead">
    <tr>
    <td>��</td>
    <td>һ</td>
    <td>��</td>
    <td>��</td>
    <td>��</td>
    <td>��</td>
    <td>��</td>
    </tr>
    </table>
    <table id="week">
    <tr class="tr1">
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(0)" id="sd0"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(1)" id="sd1"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(2)" id="sd2"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(3)" id="sd3"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(4)" id="sd4"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(5)" id="sd5"></td>
    <td class="agreen" onmouseout="mOut()" onmouseover="mOvr(6)" id="sd6"></td>
    </tr>
    <tr class="tr2">
    <td onmouseout="mOut()" onmouseover="mOvr(0)" id="ld0"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(1)" id="ld1"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(2)" id="ld2"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(3)" id="ld3"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(4)" id="ld4"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(5)" id="ld5"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(6)" id="ld6"></td>
    </tr>
    <tr class="tr1">
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(7)" id="sd7"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(8)" id="sd8"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(9)" id="sd9"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(10)" id="sd10"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(11)" id="sd11"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(12)" id="sd12"></td>
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(13)" id="sd13"></td>
    </tr>
    <tr class="tr2">
    <td onmouseout="mOut()" onmouseover="mOvr(7)" id="ld7"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(8)" id="ld8"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(9)" id="ld9"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(10)" id="ld10"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(11)" id="ld11"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(12)" id="ld12"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(13)" id="ld13"></td>
    </tr>
    <tr class="tr1">
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(14)" id="sd14"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(15)" id="sd15"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(16)" id="sd16"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(17)" id="sd17"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(18)" id="sd18"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(19)" id="sd19"></td>
    <td class="agreen" onmouseout="mOut()" onmouseover="mOvr(20)" id="sd20"></td>
    </tr>
    <tr class="tr2">
    <td onmouseout="mOut()" onmouseover="mOvr(14)" id="ld14"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(15)" id="ld15"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(16)" id="ld16"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(17)" id="ld17"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(18)" id="ld18"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(19)" id="ld19"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(20)" id="ld20"></td>
    </tr>
    <tr class="tr1">
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(21)" id="sd21"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(22)" id="sd22"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(23)" id="sd23"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(24)" id="sd24"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(25)" id="sd25"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(26)" id="sd26"></td>
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(27)" id="sd27"></td>
    </tr>
    <tr class="tr2">
    <td onmouseout="mOut()" onmouseover="mOvr(21)" id="ld21"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(22)" id="ld22"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(23)" id="ld23"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(24)" id="ld24"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(25)" id="ld25"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(26)" id="ld26"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(27)" id="ld27"></td>
    </tr>
    <tr class="tr1">
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(28)" id="sd28"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(29)" id="sd29"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(30)" id="sd30"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(31)" id="sd31"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(32)" id="sd32"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(33)" id="sd33"></td>
    <td class="agreen" onmouseout="mOut()" onmouseover="mOvr(34)" id="sd34"></td>
    </tr>
    <tr class="tr2">
    <td onmouseout="mOut()" onmouseover="mOvr(28)" id="ld28"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(29)" id="ld29"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(30)" id="ld30"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(31)" id="ld31"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(32)" id="ld32"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(33)" id="ld33"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(34)" id="ld34"></td>
    </tr>
    <tr class="tr1">
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(35)" id="sd35"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(36)" id="sd36"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(37)" id="sd37"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(38)" id="sd38"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(39)" id="sd39"></td>
    <td class="one" onmouseout="mOut()" onmouseover="mOvr(40)" id="sd40"></td>
    <td class="aorange" onmouseout="mOut()" onmouseover="mOvr(41)" id="sd41"></td>
    </tr>
    <tr class="tr2">
    <td onmouseout="mOut()" onmouseover="mOvr(35)" id="ld35"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(36)" id="ld36"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(37)" id="ld37"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(38)" id="ld38"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(39)" id="ld39"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(40)" id="ld40"></td>
    <td onmouseout="mOut()" onmouseover="mOvr(41)" id="ld41"></td>
    </tr>
    </table>
    </div></td>
    <td valign="top">
    <div id="panel" style="text-align:center">
    <div onclick="pushBtm('YU')">��һ���</div>
    <div onclick="pushBtm('YD')">��һ���</div>
    <div onclick="pushBtm('MU')">��һ�¡�</div>
    <div onclick="pushBtm('MD')">��һ�¡�</div>
    <div onclick="pushBtm('')">��ǰ��</div>
    </div></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
		<td></td>
	</tr>
</table>

</body>
</html>