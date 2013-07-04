<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="inhead.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'left.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>管理页面</title>
<style>
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.navPoint {
	COLOR: white;
	CURSOR: hand;
	FONT-FAMILY: Webdings;
	FONT-SIZE: 9pt
}

.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}

.STYLE3 {
	font-size: 12px;
	color: #033d61;
}

a {
	color: #033d61;;
	text-decoration: none;
	font-size: 12px;
}
</style>
<script>
function switchSysBar(){ 
var locate=location.href.replace('middel.jsp','');
var ssrc=document.all("img1").src.replace(locate,'');
if (ssrc=="images/main_55.gif")
{ 
document.all("img1").src="images/main_55_1.gif";
document.all("frmTitle").style.display="none" 
} 
else
{ 
document.all("img1").src="images/main_55.gif";
document.all("frmTitle").style.display="" 
} 
} 

 
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="images/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="images/main_48.gif";
}
}

</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}

.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
-->
</style>
<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold;
	LEFT: 3px;
	COLOR: #ffffff;
	POSITION: relative;
	TOP: 2px
}

.menu_title2 SPAN {
	FONT-WEIGHT: bold;
	LEFT: 3px;
	COLOR: #FFCC00;
	POSITION: relative;
	TOP: 2px
}
</style>
<body>

	<table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0" style="table-layout: fixed;">
		<tr>
			<td width="171" id=frmTitle noWrap align="center" valign="top">
				<table width="171" height="100%" border="0" cellpadding="0"
					cellspacing="0" style="table-layout: fixed;">
					<tr>
						<td bgcolor="#1873aa" style="width: 6px;">&nbsp;</td>
						<td width="165">
							<table width="165" height="100%" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="28" background="images/main_40.gif"><table
											width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="19%">&nbsp;</td>
												<td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
											</tr>
										</table></td>
								</tr>
								<tr>
									<td valign="top"><table width="151" border="0"
											align="center" cellpadding="0" cellspacing="0">
											<tr>
												<td><bean:define id="i" value="1"></bean:define> <logic:iterate
														id="menu" name="menuList" scope="session">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" background="images/main_47.gif"
																	id="imgmenu${i }" class="menu_title"
																	onMouseOver="this.className='menu_title2';"
																	onClick="showsubmenu(${i })"
																	onMouseOut="this.className='menu_title';"
																	style="cursor: hand">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td width="18%">&nbsp;</td>
																			<td width="82%" class="STYLE1">${menu.rightsName
																				}</td>
																		</tr>
																	</table>
																</td>
															</tr>

															<tr>
																<td background="images/main_51.gif" id="submenu${i }"><div
																		class="sec_menu">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td><logic:iterate id="node" name="nodeList"
																						scope="session">
																						<c:if
																							test="${node.rightsParentCode==menu.rightsCode}">
																							<table width="90%" border="0" align="center"
																								cellpadding="0" cellspacing="0">
																								<tr>
																									<td width="16%" height="25">
																										<div align="center">
																											<img src="images/left.gif" width="10"
																												height="10" />
																										</div>
																									</td>
																									<td width="84%" height="23">

																										<table width="95%" border="0" cellspacing="0"
																											cellpadding="0">
																											<tr>
																												<td height="20" style="cursor: hand"
																													onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																													onmouseout="this.style.borderStyle='none'">
																													<a href="${node.rightsUrl }"
																													target="mainFrame">${node.rightsName }</a>
																												</td>
																											</tr>
																										</table>

																									</td>
																								</tr>
																							</table>
																						</c:if>
																					</logic:iterate></td>
																			</tr>
																			<tr>
																				<td height="5"><img src="images/main_52.gif"
																					width="151" height="5" /></td>
																			</tr>
																		</table>
																	</div></td>
															</tr>
														</table>
														<bean:define id="i" value="${i+1 }"></bean:define>
													</logic:iterate></td>
											</tr>
										</table></td>
								</tr>
								<tr>
									<td height="18" background="images/main_58.gif"><table
											width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td height="18" valign="bottom"><div align="center"
														class="STYLE3">版本：2009V1.0</div></td>
											</tr>
										</table></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
			<td width="6" style="width: 6px;" valign="middle" bgcolor="1873aa"></td>
			<td width="100%" align="center" valign="top">&nbsp;</td>
		</tr>
	</table>


</body>
</html>
