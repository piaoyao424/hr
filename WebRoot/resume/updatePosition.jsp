<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'addPosition.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
		</head>

	<body onload="inits()">
		<html:form method="post" action="/position?method=upDate" >
			<table width="100%" height="312" border="0" align="center"cellpadding="0" cellspacing="0">
				<html:hidden property="positionIssuanceId" value="${positionIssuance.positionIssuanceId }"/>
				<html:hidden property="positionIssuanceRegisterTime" value="${positionIssuance.positionIssuanceRegisterTime }"/>
				<tr>
					<td height="25" colspan="2" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" width="13" height="13" />
						招聘管理 &gt;&gt; 招聘信息管理&gt;&gt; 添加招聘信息
					</td>
				</tr>

				<tr>
					<td width="6%" height="26" align="right" class="td_LTR">
						招聘职位：
					</td>
					<td width="94%" class="td_LTE">
							${positionIssuance.position.branch.branchName } ${positionIssuance.position.positionName }<html:hidden property="positionIssuancePositionId" value="${positionIssuance.position.positionId }"/>
					</td>
				</tr>
				<tr>
					<td height="35" align="right" class="td_LTR">
						职位描述：
					</td>
					<td class="td_LTE">
						<html:textarea property="positionIssuanceDescription"cols="50" rows="8" value="${positionIssuance.positionIssuanceDescription }"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="25" align="right" class="td_LTR">
						招聘要求：
					</td>
					<td align="left" valign="middle" class="td_LTE">
						<html:textarea property="positionIssuanceRequire"cols="50" rows="8" value="${positionIssuance.positionIssuanceRequire }"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="22" align="right" class="td_LTR">
						招聘人数：
					</td>
					<td class="td_LTE">
						<html:text property="positionIssuanceRequireNum" value="${positionIssuance.positionIssuanceRequireNum }"></html:text>
					</td>
				</tr>
				<tr>
					<td height="22" align="right" class="td_LTR">
						截止日期：
					</td>
					<td class="td_LTE">
						<html:text property="positionIssuanceEndTime" value="${positionIssuance.positionIssuanceEndTime }" ></html:text>
						&nbsp;
						<img src="../image/datetime.gif" style="CURSOR: hand"
							onclick="fPopUpCalendarDlg(positionIssuanceEndTime);return false"
							alt="请选择日期" align="absmiddle" width="16" height="15" />

					</td>
				</tr>
				<tr>
					<td height="23" align="center" class="td_LTRB">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="23" align="left" class="td_LTRB">
						<input type="submit" name="Submit" value="提交" class="bt_four" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="reset" type="reset" class="bt_four" value="重置" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
