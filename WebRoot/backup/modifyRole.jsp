<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../inhead.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
<html:base />
<title>addRole.jsp</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
</head>
<body>
	<html:form action="role.do?method=updateRole" method="post">
		<table cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td class="td_LTE">
					<table border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<td class="td_LTR" align="left">角色名称：</td>
							<td class="td_LTE"><html:text property="roleName"
									name="role"></html:text></td>
							<td class="td_LTE" align="left" colspan="5"></td>
						</tr>
						<tr>
							<td class="td_LTR" align="left">角色描述：</td>
							<td class="td_LTE"><html:text property="roleRemark"
									name="role" /></td>
							<td class="td_LTE" align="left" colspan="5"></td>
						</tr>
					</table>
			<tr>
				<td>
					<table border="1" cellpadding="0" cellspacing="0"
						style="border-collapse: collapse;" bordercolor="#cedcf6">
						<tr>
							<td colspan="6" style="border: 0px"><img
								src="../image/list_icon.gif" width="13" height="13" /> 请选择用户权限
							</td>
						</tr>
						<bean:define id="i" value="0"></bean:define>
						<c:if test="${i%6==0}">
							<tr>
						</c:if>
						<logic:iterate id="rights" name="rightsNode">
							<td align="left" valign="top" style="border: 0px"><STRONG><bean:write
										name="rights" property="rightsName" /> </STRONG> <br
								style="text-align: left;"> <logic:iterate id="childNode"
									name="rightsChildNodes">
									<c:if test="${childNode.rightsParentCode==rights.rightsCode }">
										&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="checkbox" name="rightsCode"
											id="rightsCode${childNode.rightsCode }"
											value="${childNode.rightsCode }">
										<bean:write name="childNode" property="rightsName" />
										<br>
									</c:if>


									<%--  使用Javascript使复选框选中--%>
									<logic:iterate id="right" name="roleRightsList">
										<logic:equal value="${childNode.rightsCode}" name="right"
											property="rightsCode">
											<script type="text/javascript">
												var code = "${right.rightsCode}";
												var checkCode = document.forms[0].rightsCode$
												{
													childNode.rightsCode
												};
												if (code == checkCode.value) {
													checkCode.checked = true;
												}
											</script>
										</logic:equal>
									</logic:iterate>
								</logic:iterate></td>
							<bean:define id="i" value="${i+1}"></bean:define>
						</logic:iterate>
						<c:if test="${i%6==1}"></c:if>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center" class="td_LTRB"><html:submit value="确 定"
						styleClass="bt_four"></html:submit> &nbsp;&nbsp;&nbsp;&nbsp; <html:reset
						value="取 消" styleClass="bt_four"></html:reset></td>
			</tr>
		</table>
	</html:form>
</body>
</html:html>
