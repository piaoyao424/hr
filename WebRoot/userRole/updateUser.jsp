<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ include file="../inhead.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    <title>MyJsp.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="../js/style.css" type="text/css"></link>
  	<script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
	<script type="text/javascript" src="/hr/dwr/interface/crole.js"></script>
	<script type="text/javascript" src="/hr/dwr/engine.js"></script>
	<script type="text/javascript" src="/hr/dwr/util.js"></script>
     <script type="text/javascript">
     	  function changePosition(employeeBranchId){
	       var name=employeeBranchId.value;
	       cposition.getPositionByBranch(name,callBack);
	     }
	     
	     function callBack(listPosition){
			DWRUtil.removeAllOptions("employeePositionId");
			DWRUtil.addOptions("employeePositionId",["---请先选择职位---"]);
			DWRUtil.addOptions("employeePositionId",listPosition);
	  }
	    
	  function selectOneOption(objecth,id){
		var oh=document.getElementById(objecth);
		var n=oh.options.length;
		for(var i=0;i<n;i++){
			if(oh.options[i].value==id){
				oh.options[i].selected=true;
			}
		}
	}
	function inits(){
		selectOneOption('roleId',${user.role.roleId});
		selectOneOption('employeeBranchId',${user.postion.branch.branchId});
		selectOneOption('employeePositionId',${user.postion.positionId});
	}
	
	    </script>
    </head>
  
  <body onload="javascript:inits()">
    <table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0" style="table-layout:fixed;">
		<tr>
			<td valign="top">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="30" background="../images/tab_05.gif">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="12" height="30">
										<img src="../images/tab_03.gif" width="12" height="30" />
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="46%" valign="middle">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td width="5%">
																<div align="center">
																	<img src="../images/tb.gif" width="16" height="16" />
																</div>
															</td>
															<td width="95%" class="STYLE1">
																<span class="STYLE3">你当前的位置</span>：用户管理>>修改用户信息
															</td>
														</tr>
													</table>
												</td>
												<td width="54%">
													&nbsp;
												</td>
											</tr>
										</table>
									</td>
									<td width="16">
										<img src="../images/tab_07.gif" width="16" height="30" />
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="8" background="../images/tab_12.gif">
										&nbsp;
									</td>
									<td>
									   <html:form method="post" action="/user?method=updeateInfo">
                                       <html:hidden property="userId" name="user"/>
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="2">&nbsp;
												</td>
											</tr>
										     <tr>
												<td align="center" class="td_LTR" width="10%">用户名:</td>
												<td class="td_LTE" >
												<logic:empty name="user">
													<html:hidden property="userName"></html:hidden>
												</logic:empty>
												<logic:notEmpty name="user">
													<bean:write name="user" property="userName"/>
													<html:hidden property="userName" name="user"></html:hidden>
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
												<td align="center" class="td_LTR">请选择用户职位:</td>
												<td class="td_LTE">
													<html:select property="employeeBranchId"
													onchange="changePosition(this)">
													<html:option value="0">---请先选择部门---</html:option>
													  ${requestScope.branchString}
													</html:select>
												   <html:select property="employeePositionId">
														<html:option value="0">---请先选择职位---</html:option>
													</html:select>
												</td>
											</tr>
											<tr>
												<td colspan="2"  class="td_LTRB">
													<br>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<html:submit value="更 新" styleClass="bt_four"></html:submit>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<html:reset value="取&nbsp;消" styleClass="bt_four"></html:reset>
												</td>
												<td class="td_LTRB"></td>
											</tr>
										</table>
										</html:form>
									</td>
									<td width="8" background="../images/tab_15.gif">
										&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td height="35" background="../images/tab_19.gif">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="12" height="35">
										<img src="../images/tab_18.gif" width="12" height="35" />
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="STYLE4">
													&nbsp;&nbsp;
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
										</table>
									</td>
									<td width="16">
										&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
  </body>
</html:html>
