<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    <title>MyJsp.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
  </head>
  
  <body>
      <table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0" style="table-layout:fixed;">
		<tr>
			<td valign="top">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="30" background="../images/tab_05.gif">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="12" height="30">
										<img src="../images/tab_03.gif" width="12" height="30" />
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="46%" valign="middle">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td width="5%">
																<div align="center">
																	<img src="../images/tb.gif" width="16" height="16" />
																</div>
															</td>
															<td width="95%" class="STYLE1">
																<span class="STYLE3">你当前的位置</span>：档案管理&gt;&gt;档案详细查看
															</td>
														</tr>
													</table>
												</td>
												<td width="54%">
													&nbsp;
												</td>
											</tr>
										</table>
									</td>
									<td width="16">
										<img src="../images/tab_07.gif" width="16" height="30" />
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="8" background="../images/tab_12.gif">
										&nbsp;
									</td>
									<td>
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="4">&nbsp;
												</td>
											</tr>
								             <tr>
			<td width="6%" height="30" class="td_LTR">
				姓&nbsp;&nbsp;&nbsp;&nbsp;名
			</td>
			<td width="27%" class="td_LTR">
				${employee.employeeName }
			</td>
			<td width="10%" class="td_LTR">
				性&nbsp;&nbsp;&nbsp;&nbsp;别
			</td>
			<td width="57%" class="td_LTE">
				${employee.employeeSex }
			</td>
		</tr>
		<tr>
			<td class="td_LTR">
				年&nbsp;&nbsp;&nbsp;&nbsp;龄
			</td>
			<td class="td_LTR">
				${employee.employeeAge }
			</td>
			<td class="td_LTR">
				民&nbsp;&nbsp;&nbsp;&nbsp;族
			</td>
			<td height="30" class="td_LTE">
				${nation }
			</td>
		</tr>
		<tr>
			<td height="30" class="td_LTR">
				出生日期
			</td>
			<td class="td_LTR">
				<div id="divPhoto"
					style="	position:absolute;width:126px;height:156px;z-index:1;left: 870px;top: 30px; border:#CCCCCC 1px solid">
					<logic:empty name="employee" property="employeePhoto">
						<img src="../upload/noperson.jpg" width="129" height="158" />
					</logic:empty>
					<logic:notEmpty name="employee" property="employeePhoto">
						<img src="../upload/${employee.employeePhoto }" width="129"
							height="158" />
					</logic:notEmpty>
				</div>
				<div id="divBirthday" style="display:inline">
					${employee.employeeBirthday }
				</div>
			</td>
			<td class="td_LTR">
				出 生 地
			</td>
			<td class="td_LTE">
				${employee.employeeBirthPlace }
			</td>
		</tr>
		<tr>
			<td height="30" class="td_LTR">
				专&nbsp;&nbsp;&nbsp;&nbsp;业
			</td>
			<td class="td_LTR">
				${employee.employeeSpeciality }
			</td>
			<td class="td_LTR">
				学&nbsp;&nbsp;&nbsp;&nbsp;历
			</td>
			<td class="td_LTE">
				${degree }
			</td>
		</tr>
		<tr>
			<td height="30" class="td_LTR">
				手机号码
			</td>
			<td class="td_LTR">
				${employee.employeeMobile }
			</td>
			<td class="td_LTR">
				住&nbsp;&nbsp;&nbsp;&nbsp;址
			</td>
			<td class="td_LTE">
				${employee.employeeAddress }
			</td>
		</tr>
		<tr>
			<td height="30" class="td_LTR">
				家庭住址
			</td>
			<td class="td_LTR">
				${employee.employeeFamilyAddress }
			</td>
			<td class="td_LTR">
				家庭电话
			</td>
			<td class="td_LTE">
				${employee.employeeFamilyphone }
				<div id="divFamilyPhone" style="display:inline"></div>
			</td>
		</tr>
		<tr>
			<td height="30" class="td_LTR">
				Emial
			</td>
			<td class="td_LTR">
				${employee.employeeEmail }
			</td>
			<td class="td_LTR">
				政治面貌
			</td>
			<td class="td_LTE">
				${polity}
			</td>
		</tr>
		<tr>
			<td height="30" class="td_LTR">
				QQ号码
			</td>
			<td class="td_LTR">
				${employee.employeeQq }
				<div id="divQQ" style="display:inline"></div>
			</td>
			<td class="td_LTR">
				职&nbsp;&nbsp;&nbsp;&nbsp;位
			</td>
			<td class="td_LTE">
				${employee.position.branch.branchName }&nbsp;&nbsp;
				${employee.position.positionName }
			</td>
		</tr>
		<tr>
			<td height="30" class="td_LTR">
				邮政编码
			</td>
			<td class="td_LTR">
				${employee.employeePostcode }
				<div id="divPostCode" style="display:inline"></div>
			</td>
			<td class="td_LTR">
				爱&nbsp;&nbsp;&nbsp;&nbsp;好
			</td>
			<td class="td_LTE">
				${employee.employeeHobby }
				<div id="divHobby" style="display:inline"></div>
			</td>
		</tr>
		<tr>
			<td height="30" class="td_LTR">
				特&nbsp;&nbsp;&nbsp;&nbsp;长
			</td>
			<td class="td_LTE" colspan="3">
				${employee.employeeSkills }
				<div id="divSkills" style="display:inline">
				</div>
			</td>

		</tr>
		<tr>
			<td height="30" class="td_LTR">
				备&nbsp;&nbsp;&nbsp;&nbsp;注
			</td>
			<td colspan="3" class="td_LTE">
				${employee.employeeSkills }
			</td>
		</tr>
		<tr>
			<td height="30" colspan="4" class="td_LTRB" align="center">
				<input type="button" name="Submit2" value="返回" class="bt_four"
					onclick="javascript:history.go(-1);" />
			</td>
		</tr>
									    </table>
									</td>
									<td width="8" background="../images/tab_15.gif">
										&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td height="35" background="../images/tab_19.gif">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="12" height="35">
										<img src="../images/tab_18.gif" width="12" height="35" />
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="STYLE4">
													&nbsp;&nbsp;
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
										</table>
									</td>
									<td width="16">
										&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
  </body>
</html:html>
