<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>添加部门</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
	</head>
	<body>
		<html:form method="post" action="/branch?method=addBranch" >
			<table width="100%" height="100" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="31" colspan="2" class="td_LTBG_TOP">
						数据字典管理&gt;&gt;部门职位管理&gt;&gt;添加部门
					</td>
				</tr>
				<tr>
					<td width="50%" height="31" align="right" class="td_LTR">
						部门：&nbsp;&nbsp;
						<br>
					</td>
					<td width="50%" class="td_LTE">
						<input type="text" name="branchName" />
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center" class="td_LTRB">
						<input name="Submit" type="submit" class="bt_four" value="提交" /> 
						<input name="reset" type="reset" class="bt_four" value="重置" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
