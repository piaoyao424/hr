<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	   <html:base/>
		<title>My JSP 'updatePassword.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	    <link rel="stylesheet" href="js/style.css" type="text/css"></link></head>

	<body>
		<html:form  method="post" action="/user?method=updatePassword">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td height="30" colspan="2" class="td_LTBG_TOP">
						管理员修改密码<html:hidden property="userId" value="${sessionScope.USER.userId}"/>
					</td>
				</tr>
				<tr>
					<td width="10%" height="30" class="td_LTR">
						请输入旧密码：
					</td>
					<td width="90%" class="td_LTE">
					        <html:password property="userPassword" value="sessionScope.USER.userPassword"></html:password>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						请输入新密码：
					</td>
					<td class="td_LTE">
					        <html:password property="newPassword"></html:password>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						请再次输入新密码:
					</td>
					<td class="td_LTE">
							<input name="ckNewPass" type="password" id="ckNewPass" />
					</td>
				</tr>
				<tr>
					<td height="30" align="center" class="td_LTB">
						&nbsp;
					</td>
					<td height="30" align="left" class="td_LTRB">
						<label>
							<input type="submit" name="Submit" value="提交" class="bt_four" />
						</label>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="" type="button" value="返回" class="bt_four"
							onclick="javascript:history.go(-1);" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
