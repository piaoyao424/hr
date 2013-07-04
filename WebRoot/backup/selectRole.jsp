<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'selectRole.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
	</head>
	<script type="text/javascript">
		  function deleteTo(p){
			  if(window.confirm("你确认要删除吗？")){
			    window.location.href="positionAction.do?method=deleteRole&branchId=${branch.branchId}&positionId="+p;
		  }
		}
	</script>
	<body>
		<%--		<html:form  method="post">--%>
		<table width="100%" height="167" border="0" cellpadding="0"
			cellspacing="0">
           <tr>
             <td class="td_LTBG_TOP" height="30" colspan="3" >
                   <img src="../image/list_icon.gif" />
					数据字典管理管理&gt;&gt;部门管理&gt;&gt;添加职位</td>
           </tr>
			<tr>
				<td height="31" colspan="3" class="td_LR">
					<a
						href="../positionAction.do?method=getBranchNmaeByBranchId&branchId=${branchId}">点击添加部门职位</a>
				</td>
				<td height="31" align="right" valign="top" class="td_TR">
				</td>
			</tr>
			<tr>
				<td height="27" class="td_LTR">
					编号
				</td>
				<td width="32%" height="27" class="td_LTR">
					职位
				</td>
				<td width="36%" class="td_LTE">
					操作
				</td>
			</tr>
			<logic:notEmpty name="postionlist">
				<logic:iterate id="position" name="postionlist">
					<tr>
						<td height="30" class="td_LTR">
							${position.positionId}
						</td>
						<td class="td_LTR">
							${position.positionName}
						</td>
						<td class="td_LTE">
							<img src="../image/calendar_week_remove.png" width="16"
								height="16" border="0" alt="删除" />
							<a href="javascript:deleteTo(${position.positionId})">删除</a>
						</td>
					</tr>
				</logic:iterate>
			</logic:notEmpty>
			<logic:empty name="postionlist">
				<tr>
					<td colspan="3" class="td_LTE">
						<font color="red">没有找到合适的职位信息</font>
					</td>
				</tr>
			</logic:empty>
			<tr>
				<td height="30" colspan="3" align="right" class="td_LTRB">
					共
					<font color="#FF0000">3</font>页&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">上一页</a>&nbsp;&nbsp;&nbsp;1/3 &nbsp;&nbsp;
					<a href="#">下一页</a> &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="Input2" type="text" size="3" />
					<input name="btnPage2" type="button" id="btnPage2" value="GO"
						class="bt_Go" />
				</td>
			</tr>
		</table>
		<%--		</html:form>--%>
	</body>
</html>
