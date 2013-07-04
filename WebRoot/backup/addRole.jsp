<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'addRole.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
	</head>

	<body>
		<html:form method="post"
			action="/positionAction?method=addRole&branchId=${branchId}">
			<table width="100%" height="100" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="31" colspan="2" class="td_LTBG_TOP">
						数据字典管理&gt;&gt;部门职位管理&gt;&gt;添加职位
					</td>
				</tr>

				<tr>
					<td height="31" align="right" class="td_LTR">
						部门：
					</td>
					<td class="td_LTE">
						${branchName}
					</td>
				</tr>
				<tr>
					<td width="50%" height="31" align="right" class="td_LTR">
						职位：
					</td>
					<td width="50%" class="td_LTE">
						<input type="text" name="positionName" />
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center" class="td_LTRB">
						<input name="Submit" type="submit" class="bt_four" value="提交" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="Submit2" type="reset" class="bt_four" value="重置" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
