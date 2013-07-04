<%@ page language="java" pageEncoding="UTF-8"%>
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
COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt 
} 
.STYLE1 {	font-size: 12px;
	color: #FFFFFF;
}
.STYLE3 {	font-size: 12px;
	color: #033d61;
}
a{
color:#033d61;;
text-decoration:none;
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
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}

</style>
	<body>

		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0" style="table-layout:fixed;">
			<tr>
				<td width="171" id=frmTitle noWrap align="center"
					valign="top">
					<table width="171" height="100%" border="0" cellpadding="0"
						cellspacing="0" style="table-layout:fixed;">
						<tr>
							<td bgcolor="#1873aa" style="width:6px;">
								&nbsp;
							</td>
							<td width="165">
								<table width="165" height="100%" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="28" background="images/main_40.gif">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="19%">
														&nbsp;
													</td>
													<td width="81%" height="20">
														<span class="STYLE1">管理菜单</span>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td valign="top">
											<table width="151" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" background="images/main_47.gif"
																	id="imgmenu1" class="menu_title"
																	onMouseOver="this.className='menu_title2';"
																	onClick="showsubmenu(1)"
																	onMouseOut="this.className='menu_title';"
																	style="cursor:hand">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td width="18%">
																				&nbsp;
																			</td>
																			<td width="82%" class="STYLE1">
																				档案管理
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td background="images/main_51.gif" id="submenu1">
																	<div class="sec_menu">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td>
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
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="Dossier.do?method=getDossierList"
																												target="mainFrame">人事档案</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<a href="Dossier.do?method=dossierAuditingList"
																									target="mainFrame">档案审核</a>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="Dossier.do?method=dossierRecycle"
																												target="mainFrame">档案回收站</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>

																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5">
																					<img src="images/main_52.gif" width="151"
																						height="5" />
																				</td>
																			</tr>
																		</table>
																	</div>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" background="images/main_47.gif"
																	id="imgmenu2" class="menu_title"
																	onMouseOver="this.className='menu_title2';"
																	onClick="showsubmenu(2)"
																	onMouseOut="this.className='menu_title';"
																	style="cursor:hand">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td width="18%" height="14">
																				&nbsp;
																			</td>
																			<td width="82%" class="STYLE1">
																				招聘管理
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td background="images/main_51.gif" id="submenu2">
																	<div class="sec_menu">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td>
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
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="position.do?method=getList"
																												target="mainFrame">招聘信息</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="employ.do?method=getListResume"
																												target="mainFrame">简历管理</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="resume/paperManager.jsp"
																												target="mainFrame">试卷管理</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="exam.do?method=getList"
																												target="mainFrame">试题管理</a>
																										</td>
																									</tr>

																								</table>
																							</td>
																						</tr>

																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="employ.do?method=getList&id=1"
																												target="mainFrame">录用管理</a>
																										</td>
																									</tr>

																								</table>
																							</td>
																						</tr>


																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="exam.do?method=getStoreRecycled"
																												target="mainFrame">试题回收站</a>
																										</td>
																									</tr>

																								</table>
																							</td>
																						</tr>

																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5">
																					<img src="images/main_52.gif" width="151"
																						height="5" />
																				</td>
																			</tr>
																		</table>
																	</div>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" background="images/main_47.gif"
																	id="imgmenu3" class="menu_title"
																	onMouseOver="this.className='menu_title2';"
																	onClick="showsubmenu(3)"
																	onMouseOut="this.className='menu_title';"
																	style="cursor:hand">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td width="18%">
																				&nbsp;
																			</td>
																			<td width="82%" class="STYLE1">
																				薪酬管理
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td background="images/main_51.gif" id="submenu3"
																	style="DISPLAY: ">
																	<div class="sec_menu">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td>
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
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="salaryStandAction.do?method=selectStandardList"
																												target="mainFrame">薪酬标准管理</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="salaryStandAction.do?method=selectStandByssCheckStatus" target="mainFrame">薪酬标准审核</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="salaryStandAction.do?method=getsalaryGrantRegister" target="mainFrame">薪酬发放管理</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5">
																					<img src="images/main_52.gif" width="151"
																						height="5" />
																				</td>
																			</tr>
																		</table>
																	</div>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" background="images/main_47.gif"
																	id="imgmenu4" class="menu_title"
																	onMouseOver="this.className='menu_title2';"
																	onClick="showsubmenu(4)"
																	onMouseOut="this.className='menu_title';"
																	style="cursor:hand">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td width="18%">
																				&nbsp;
																			</td>
																			<td width="82%" class="STYLE1">
																				调动管理
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td background="images/main_51.gif" id="submenu4"
																	style="DISPLAY: ">
																	<div class="sec_menu">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td>
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
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a
																												href="positionChange.do?method=getEmployeeList"
																												target="mainFrame">员工信息</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="positionChange.do?method=getPositionChanageList"
																												target="mainFrame">调动审核</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="positionChange.do?method=changeReport"
																												target="mainFrame">调动日志</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>

																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5">
																					<img src="images/main_52.gif" width="151"
																						height="5" />
																				</td>
																			</tr>
																		</table>
																	</div>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" background="images/main_47.gif"
																	id="imgmenu5" class="menu_title"
																	onMouseOver="this.className='menu_title2';"
																	onClick="showsubmenu(5)"
																	onMouseOut="this.className='menu_title';"
																	style="cursor:hand">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td width="18%">
																				&nbsp;
																			</td>
																			<td width="82%" class="STYLE1">
																				系统管理
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td background="images/main_51.gif" id="submenu5"
																	style="DISPLAY: none">
																	<div class="sec_menu">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td>
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
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="user.do?method=selectall"
																												target="mainFrame">用户管理</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="option.do?param=getBranch&forward=addUser"
																												target="mainFrame">增加用户</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
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
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="role.do?method=getRoleList"
																												target="mainFrame">角色管理</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
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
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="option.do?param=getBranch&forward=rightsList"
																												target="mainFrame">新增角色</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5">
																					<img src="images/main_52.gif" width="151"
																						height="5" />
																				</td>
																			</tr>
																		</table>
																	</div>
																</td>
															</tr>
														</table>
													</td>
												</tr>


												<tr>
													<td>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="23" background="images/main_47.gif"
																	id="imgmenu6" class="menu_title"
																	onMouseOver="this.className='menu_title2';"
																	onClick="showsubmenu(6)"
																	onMouseOut="this.className='menu_title';"
																	style="cursor:hand">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td width="18%">
																				&nbsp;
																			</td>
																			<td width="82%" class="STYLE1">
																				数据字典管理
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td background="images/main_51.gif" id="submenu6"
																	style="DISPLAY: none">
																	<div class="sec_menu">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td>
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
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a href="branch.do?method=selectBranch"
																												target="mainFrame">部门管理</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																						<tr>
																							<td height="23">
																								<div align="center">
																									<img src="images/left.gif" width="10"
																										height="10" />
																								</div>
																							</td>
																							<td height="23">
																								<table width="95%" border="0" cellspacing="0"
																									cellpadding="0">
																									<tr>
																										<td height="20" style="cursor:hand"
																											onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																											onmouseout="this.style.borderStyle='none'">
																											<a
																												href="examLeoveAction.do?method=getListFistExam"
																												target="mainFrame">试题分类管理</a>
																										</td>
																									</tr>
																								</table>
																							</td>
																						</tr>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td height="5">
																					<img src="images/main_52.gif" width="151"
																						height="5" />
																				</td>
																			</tr>
																		</table>
																	</div>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="18" background="images/main_58.gif">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td height="18" valign="bottom">
														<div align="center" class="STYLE3">
														</div>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
				<td width="6" style="width:6px;" valign="middle" bgcolor="1873aa"></td>
				<td width="100%" align="center" valign="top">
					&nbsp;
				</td>
			</tr>
		</table>
	</body>
</html>
