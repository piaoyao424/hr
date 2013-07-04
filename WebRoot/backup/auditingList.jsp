<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'auditingList.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="../js/script.js"></script>
	    <script type="text/javascript" src="../js/oa_Popup.js"></script> 
	    <script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
	    <script type="text/javascript" src="/hr/dwr/engine.js"></script>
	    <script type="text/javascript" src="/hr/dwr/util.js"></script>
	</head>

	<body>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					onmouseover="changeto()" onmouseout="changeback()"
					bgcolor="#FFFFFF">
					<tr>
						<td height="30" colspan="6" class="td_LTBG_TOP">
							<img src="../image/list_icon.gif" width="13" height="13" />
							调动管理 &gt;&gt; 调动审核列表
						</td>
					</tr>
					<tr>
						<td height="30" colspan="6" class="td_LR">
							<form id="auditingListForm" name="auditingListForm" method="post"
								action="">
								按登记时间查找
									<input name="registerTime" type="text" id="registerTime" />
									<img src="../image/datetime.gif" style="CURSOR: hand"
										onclick="fPopUpCalendarDlg(registerTime);return false"
										alt="请选择日期" align="absmiddle" width="16" height="15" />
								&nbsp;&nbsp;&nbsp;&nbsp;按员工姓名查找
									<input name="name" type="text" id="name" />
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input name="submit" type="submit" class="bt_four" value="查询" />
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input name="reset" type="reset" class="bt_four" value="重置" />
							</form>
						</td>
					</tr>
					<tr>
						<td width="11%" height="30" class="td_LTR">
							编号
						</td>
						<td width="19%" class="td_LTR">
							员工姓名
						</td>
						<td width="19%" class="td_LTR">
							审核状态
						</td>
						<td width="18%" class="td_LTR">
							登记时间
						</td>
						<td width="33%" class="td_LTE">
							审核
						</td>
					</tr>
				<logic:empty name="auditingList">
				   <tr>
				       <td colspan="5" class="td_LTRB"><font color="red">暂无数据！</font></td>
				   </tr>
				</logic:empty>
				<logic:notEmpty name="auditingList">
					<logic:iterate id="positionChange" name="auditingList" scope="request">
					<tr>
						<td height="30" class="td_LTR">
<%--						${positionChange.employee.employeeName }--%>
							<bean:write name="positionChange" property="employee.employeeId"/>
						</td>
						<td class="td_LTR">
							<bean:write name="positionChange" property="positionChangeRname"/>
						</td>
						<td class="td_LTR">
							<logic:equal value="0" name="positionChange" property="positionChangeCheckStatus">
							未审核
					         </logic:equal>
						</td>
						<td class="td_LTR">
							<bean:write name="positionChange" property="positionChangeRegisterTime"/>
						</td>
						<td class="td_LTE">
							<img src="../images/edt.gif" width="16" height="16"
								align="absmiddle" />
							&nbsp;
							<a href="../positionChange.do?method=getPositionChangeById&positionChangeId=${positionChange.positionChangeId }">审核</a>
						</td>
					</tr>
					</logic:iterate>
				<tr>
					<td height="30" colspan="7" align="right" class="td_LTRB">
					<bean:size id="count" name="auditingList"/>
						共有 ${count }条记录，当前第 ${curPage }/${totalPage }  页&nbsp;&nbsp;
						<a href="../positionChange.do?method=getPositionChanageList&page=1">
						  <img src="../images/first.gif" width="37" height="15" align="absmiddle" border="0" /></a>
						<a href="../positionChange.do?method=getPositionChanageList&page=${(curPage-1)}">
						  <img src="../images/back.gif" width="43" height="15" align="absmiddle" border="0" /></a>&nbsp;
						<a href="../positionChange.do?method=getPositionChanageList&page=${(curPage+1)}">
						   <img src="../images/next.gif" width="43" height="15" align="absmiddle" border="0" /></a>&nbsp;
						<a href="../positionChange.do?method=getEmployeeList&page=${totalPage}"><img src="../images/last.gif" width="37" height="15" align="absmiddle" border="0" /></a>&nbsp;转到第
						<input name="textfield2" type="text" size="4"
							style="height:12px; width:20px; border:1px solid #999999;" />
						页
						<a href="#"><img src="../images/go.gif" width="37" height="15"
								align="absmiddle" border="0" />
						</a>
					</td>
				</tr>
				</logic:notEmpty>
				</table>
	</body>
</html>
