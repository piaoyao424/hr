<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>网站管理员登陆</title>
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
		var formnames= document.getElementById(formname);
	    formnames.submit();
	   
	}
	</script>
	</head>

	<body>
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
										   <form action="user.do?method=login"  method="post" name="loginForm">
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
																style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
														</div>
													</td>
													<td width="27%" height="25">
														&nbsp;
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
															<a href="javascript: formSubmit('loginForm')"><img src="images/dl.gif"
																	width="49" height="18" border="0"> </a>
														</div>
													</td>
												</tr>
											</table>
											</form>
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
	</body>
</html>
