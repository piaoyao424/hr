<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../inhead.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'salaryDistributing.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
		<script type="text/javascript" src="/hr/dwr/interface/crole.js"></script>
	    <script type="text/javascript" src="/hr/dwr/engine.js"></script>
	    <script type="text/javascript" src="/hr/dwr/util.js"></script>
	    <script type="text/javascript">
	     function checked(){
	      var roleId=document.getElementById("roleId");
	      var id=roleId.options.length;
	      for(var i=0;i<id;i++){
	         if(roleId.options[i].value==${user.role.roleId}){
	             roleId.options[i].selected=true;
	         }
	      }
	     }
	    </script>
	 
	<link rel="stylesheet" href="../js/style.css" type="text/css"></link></head>
	<body onload="checked()">
		<html:form method="post" action="/user?method=updeateInfo">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="30" colspan="2" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" width="13" height="13" />
						用户管理&gt;&gt;编辑用户信息
					</td>
				</tr>
				<tr>
					<td height="30" colspan="2" class="td_LR">
						<a href="#" target="mainFrame"></a>
					</td>
				</tr>
				<tr>
					<td align="center" class="td_LTR" width="10%">用户名:</td>
					<td class="td_LTE" >
					<logic:empty name="user">
						<html:text property="userName"></html:text>
					</logic:empty>
					<logic:notEmpty name="user">
						<html:text property="userName" name="user"></html:text>
					</logic:notEmpty>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<td align="center" class="td_LTR">初始密码:</td>
					<td class="td_LTE" >
					<logic:empty name="user">
						<html:password property="userPassword"></html:password>
					</logic:empty>
					<logic:notEmpty name="user">
						<html:password property="userPassword" name="user"></html:password>
					</logic:notEmpty>
					</td>
					<td></td>
				</tr>
				<tr>
					<td align="center" class="td_LTR">确认密码:</td>
					<td class="td_LTE" >
					<logic:empty name="user">
						<html:password property="userPassword"></html:password>
					</logic:empty>
					<logic:notEmpty name="user">
						<html:password property="userPassword" name="user"></html:password>
					</logic:notEmpty></td>
					<td></td>
				</tr>
				<tr>
					<td align="center" class="td_LTR">用户角色:</td>
					<td class="td_LTE">
						<html:select property="roleId" >
							<html:option value="0">--请选择角色--</html:option>
							${requestScope.roleString }
						</html:select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center" class="td_LTRB">
						<br>
						<html:submit value="更 新" styleClass="bt_four"></html:submit>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:reset value="取&nbsp;消" styleClass="bt_four"></html:reset>
					</td>
					<td class="td_LTRB"></td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
