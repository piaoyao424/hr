<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<title>roleList.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
	<script type="text/javascript">
		 function deleteTo(op){
			  if(window.confirm("您确定要删除吗,此操作数据不可恢复！")){
			    window.location.href="role.do?method=deleteRole&roleId="+op;
		  }
		}
	</script>
</head>

<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td height="15" colspan="4" class="td_LTBG_TOP">
				<img src="../image/list_icon.gif" />
				角色管理&gt;&gt;角色列表
			</td>
		</tr>
		<tr>
			<td height="15" colspan="4" class="td_LR">
				<img src="../images/22.gif" align="absmiddle" />
				<a href="../option.do?param=getBranch&forward=rightsList">点击添加角色</a>
			</td>
		</tr>
		<tr>
			<td class="td_LTR" align="center">
				角色编号
			</td>
			<td class="td_LTR" align="center">
				角色名称
			</td>
			<td class="td_LTR" align="center">
				角色描述
			</td>
			<td class="td_LTE" align="center">
				操&nbsp;&nbsp;&nbsp;作
			</td>
		</tr>
		<logic:iterate id="role" name="roleList">
			<tr>
				<td class="td_LTR" align="center">
					<bean:write name="role" property="roleId"/>
				</td>
				<td class="td_LTR" align="center">
					<A href="javascript:"><bean:write name="role" property="roleName" /></A>
				</td>
				<td class="td_LTR" align="center">
					<bean:write name="role" property="roleRemark" />
				</td>
				<td class="td_LTE" align="center">
				<img src="../images/edit.gif" width="16" height="16" border="0" />&nbsp;
				<a href="../role.do?method=getRoleById&roleId=${role.roleId }">编 辑</a>&nbsp;
				<img src="../images/delete.gif" width="16" height="16" border="0" align="absmiddle" />&nbsp;
				<a href="javascript:deleteTo(${role.roleId })">删 除</a>
				</td>
			</tr>
		</logic:iterate>
		<tr>
			<td height="30" colspan="4" align="right" class="td_LTRB">
				共有 120 条记录，当前第 1/10 页&nbsp;&nbsp;
				<a href="#"> <img src="../images/first.gif" width="37"
						height="15" align="absmiddle" border="0" />
				</a>
				<a href="#"><img src="../images/back.gif" width="43" height="15"
						align="absmiddle" border="0" />
				</a>&nbsp;
				<a href="#"><img src="../images/next.gif" width="43" height="15"
						align="absmiddle" border="0" />
				</a>&nbsp;
				<a href="#"><img src="../images/last.gif" width="37" height="15"
						align="absmiddle" border="0" />
				</a>&nbsp;转到第
				<input name="textfield" type="text" size="4"
					style="height:12px; width:20px; border:1px solid #999999;" />
				页
				<a href="#"><img src="../images/go.gif" width="37" height="15"
						align="absmiddle" border="0" />
				</a>
			</td>
		</tr>
	</table>

</body>
</html:html>
