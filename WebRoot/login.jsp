<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'login.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #016aa9;
	overflow:hidden;
}
.STYLE1 {
	color: #000000;
	font-size: 12px;
}
-->
</style>
		<script type="text/javascript">
	   function formSubmit(formname){
	     var username=document.loginForm.userName;
	      var password=document.loginForm.userPassword;
	     if(username.value.length==0){
	       alert("用户名不能为空!");
	     }else if(password.value.length==0){
	      alert("密码不能为空!");
	     }else{
	       var formnames= document.getElementById(formname);
	       formnames.submit();
	     }
	    }
	    
   function checkUserName(){
	var username=document.loginForm.userName;
	var divUserName=document.getElementById("divUserName");
	 divUserName.innerHTML="";
	 if(username.value.length==0){
	  divUserName.innerHTML="<font color='red' size='2'>* 用户名不能为空</font>";
      return;
	}
}
	 function checkPassword(){
    var password=document.loginForm.userPassword;
	var divPass=document.getElementById("divPassword");
	divPass.innerHTML="";
	if(password.value.length==0){
	  divPass.innerHTML="<font color='red' size='2'>* 密码不能为空</font>";
      
	}
}
	</script>
	 <script type="text/javascript">
       self.moveTo(0,0);
  	   self.resizeTo(screen.availWidth,screen.availHeight);
   </script>
	</head>


	<body>
		<form action="user.do?method=login" method="post" name="loginForm" >
			<table width="100%" height="100%" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<table width="962" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="235" background="images/login_03.gif">
									&nbsp;
								</td>
							</tr>
							<tr>
								<td height="53">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="394" height="53" background="images/login_05.gif">
												&nbsp;
											</td>
											<td width="206" background="images/login_06.gif">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="16%" height="25">
															<div align="right">
																<span class="STYLE1">用户</span>
															</div>
														</td>
														<td width="57%" height="25">
															<div align="center">
																<input type="text" name="userName"
																	style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff"
																	>
																	<div  id="divUserName" style="display:inline"></div>
															</div>
														</td>
														<td width="27%" height="25">
															
														</td>
													</tr>
													<tr>
														<td height="25">
															<div align="right">
																<span class="STYLE1">密码</span>
															</div>
														</td>
														<td height="25">
															<div align="center">
																<input type="password" name="userPassword"
																	style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
															</div>
														</td>
														<td height="25">
															<div align="left">
																<a href="javascript: formSubmit('loginForm')"><img
																		src="images/dl.gif" width="49" height="18" border="0">
																</a>
															</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="362" background="images/login_07.gif">
												&nbsp;
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="213" background="images/login_08.gif">
									&nbsp;
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
		<logic:equal value="fail" name="fail" scope="request">
	<script type="text/javascript">
		alert("用户不存在或不可用，请联系系统管理员！");
	</script>
	</logic:equal>
	</body>
</html>
