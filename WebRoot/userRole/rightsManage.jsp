<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/inhead.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'staffBaseInfo.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
	</head>

	<body>
		<form id="form1" name="form1" method="post" action="">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="30" colspan="8" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" width="13" height="13" />
						系统管理 &gt;&gt; 角色管理
					</td>
				</tr>
				<tr>
					<td height="30" colspan="8" class="td_LTE">
						<a href="../option.do?param=getBranch&forward=addRole">点此添加角色</a>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						角色编号
					</td>
					<td class="td_LTR">
						角色名称
					</td>
					<td class="td_LTR">
						角色描述
					</td>
					<td class="td_LTE">
						操&nbsp;&nbsp;&nbsp;作
					</td>
				</tr>
				<logic:iterate id="user" name="userList">
				<tr>
					<td height="30" class="td_LTR">
						<bean:write name="user" property="userId"/>
					</td>
					<td class="td_LTR">
						<bean:write name="user" property="userName"/>
					</td>
					<td class="td_LTR">
						<bean:write name="user" property="employee.employeeName"/>
					</td>
					<td class="td_LTR">
						<bean:write name="user" property="role.roleName"/>
					</td>
					<td class="td_LTR">
						<bean:write name="user" property="employee.position.branch.branchName"/>
					</td>
					<td class="td_LTR">
						<bean:write name="user" property="employee.position.positionName"/>
					</td>
					<td class="td_LTR">
						<logic:equal value="1" name="user" property="userState">
							可用
						</logic:equal>
						<logic:equal value="0" name="user" property="userState">
							不可用
						</logic:equal>
					</td>
					<td class="td_LTE">
						<a href="javascript:deleteTo(${user.userId })">删&nbsp;除&nbsp;</a>/
						<a href="../user.do?method=updeate>userId=${user.userId }">修&nbsp;改</a>
					</td>
				</tr>
				</logic:iterate>
				<bean:size id="count" name="userList"/>
				<tr>
					<td height="15" colspan="8" align="right" class="td_LTRB">
						&nbsp;共有 ${count }条记录，当前第 ${pageNum }/${totalPage } 页&nbsp;&nbsp;
						<a href="../user.do?method=selectall&pageNum=1"><img src="../images/first.gif" width="37" height="15" align="absmiddle" border="0" /></a>&nbsp;
						<logic:notEqual value="1" name="pageNum">
						<a href="../user.do?method=selectall&pageNum=${pageNum-1 }"><img src="../images/back.gif" width="43" height="15" align="absmiddle" border="0" /></a>&nbsp;
						</logic:notEqual>
						<logic:notEqual value="${totalPage }" name="pageNum">
						<a href="../user.do?method=selectall&pageNum=${pageNum+1 }"><img src="../images/next.gif" width="43" height="15" align="absmiddle" border="0" /></a>&nbsp;
						</logic:notEqual>
						<a href="../user.do?method=selectall&pageNum=${totalPage }"><img src="../images/last.gif" width="37" height="15" align="absmiddle" border="0" /></a>&nbsp;转到第
						<input name="textfield" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" id=txtPage />页
						<a href="javascript:locationTo()"><img src="../images/go.gif" width="37" height="15" align="absmiddle" border="0" /> </a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
