<%@ page language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


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
	<script type="text/javascript" src="/hr/dwr/engine.js"></script>
	<script type="text/javascript" src="/hr/dwr/util.js"></script>
	   <script type="text/javascript" src="/hr/dwr/interface/dwrcheckUser.js"></script>
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
	  
	  
	  function checkUser(userName){
	     dwrcheckUser.checkUser(userName,callBack1);
	  }
	  function callBack1(bool){
	   var name=document.getElementById("divUserName");
	   name.innerHTML="";
	    if(bool==true){
	       name.innerHTML="<font color='red'>* 用户名已经存在</font>";
	       document.forms[0].userName.select();
	       return false ;
	    }else{
	       name.innerHTML="<font color='green'>* 用户名可用</font>";
	    }
	  }
      function checkPass(con){
       var pass=document.forms[0].userPassword;
       if(pass.value!=con){
         document.getElementById("checkPass").innerHTML="<font color='red'>两次输入密码不一致！</font>"
         return;
       }
       else{
       	document.getElementById("checkPass").innerHTML="";
       }
      }
	  
	  function check(con){
	   var pass=con.userPassword.value;
       var ckPass=con.checkPassword.value;
       if(pass!=ckPass || pass.length==0 || ckPass.length==0){
         return false ;
       }
       if(con.userName.value.length==0){
       	document.getElementById("divUserName").innerHTML="<font color='red'>用户名不能为空！</font>";
       	return false;
       }
       if(con.roleId.value==0){
       	return false ;
       }
       if(con.employeeBranchId.value==0){
		return false ;       
       }
       if(con.employeePositionId.value=="---请先选择职位---"){
       	return false ;
       }
       if(con.userName.value.length==0){
       	return false ;
       }
	 }
	</script>
    </head>

<body>
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
																<span class="STYLE3">你当前的位置</span>：用户管理>>添加新用户
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
									   <html:form method="post" action="/user?method=add" onsubmit="return check(this)">
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="2">&nbsp;
												</td>
											</tr>
										   <tr>
									<td align="center" class="td_LTR" width="10%">用户名:</td>
									<td class="td_LTE">
										<html:text property="userName" size="20"  onblur="checkUser(this.value)"  value=""></html:text>
										<div id="divUserName" style="display:inline;"></div>
									</td>
								</tr>
								<tr>
									<td align="center" class="td_LTR" width="10%">初始密码:</td>
									<td class="td_LTE">
										<html:password property="userPassword" size="21" value="" ></html:password>
									<td></td>
								</tr>
								<tr>
									<td align="center" class="td_LTR">确认密码:</td>
									<td class="td_LTE">
									<input type="password" size="21"  name="checkPassword" onblur="checkPass(this.value)" value="">
<%--										<html:password property="userPassword" size="21" onblur="checkPass(this.value)"></html:password>--%>
										<div style="display: inline;" id="checkPass"></div>
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
										<html:submit value="注 册" styleClass="bt_four"></html:submit>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<html:reset value="取&nbsp;消" styleClass="bt_four"></html:reset>
									</td>
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
