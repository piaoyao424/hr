<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../inhead.jsp"%>
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
    <script type="text/javascript">
    	function locationTo(){
		   var pageNum=document.getElementById("txtPage").value;
		   if(pageNum.length==0){
		     alert("请输入页数！");
		    }else if(isNaN(pageNum)){
	        alert("请输入数字！");
	       }else if(pageNum<0){
	        alert("页数必须大于0！");
	       }else if(pageNum>${totalPage}){
	       window.location.href="user.do?method=selectall&pageNum="+${totalPage };
	       }else{
		     window.location.href="user.do?method=selectall&pageNum="+pageNum;
		   }
		}
		
		 function deleteTo(op){
			  if(window.confirm("您确定要删除吗,此操作数据不可恢复？")){
			    window.location.href="user.do?method=deleteUser&userId="+op;
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
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="6">&nbsp;
												</td>
											</tr>
											<tr>
					<td height="30" colspan="6" class="td_LTE">
						<a href="../option.do?param=getBranch&forward=addUser">点此添加新用户</a>
					</td>
				</tr>
				<tr>
					<td class="td_LTR" align="center">
						用户编号
					</td>
					<td class="td_LTR" align="center">
						用户名
					</td>
					<td class="td_LTR" align="center">
						用户角色
					</td>
					<td class="td_LTR" align="center">
						用户状态
					</td>
					<td class="td_LTR" align="center">
						管 理
					</td>
					<td class="td_LTE" align="center">
						操 作
					</td>
				</tr>
				<logic:iterate id="user" name="userList">
					<tr>
						<td height="30" class="td_LTR" align="center">
						${user.userId }
<%--							<bean:write name="user" property="userId" />--%>
						</td>
						<td class="td_LTR" align="center">
							<bean:write name="user" property="userName" />
						</td>
						<td class="td_LTR" align="center">
							<logic:notEmpty name="user" property="role">
								<bean:write name="user" property="role.roleName"/>
							</logic:notEmpty>
							<logic:empty name="user" property="role">
								暂无
							</logic:empty>
						</td>
						<td class="td_LTR" align="center">
							<logic:equal value="1" name="user" property="userState">
								可用
							</logic:equal>
							<logic:equal value="0" name="user" property="userState">
							 	不可用
							</logic:equal>
						</td>
						<td class="td_LTR" align="center">
							<logic:equal value="1" name="user" property="userState">
							<logic:equal value="${sessionScope.USER.userId }" property="userId" name="user">
								<font color="gray">禁&nbsp;用</font>
							</logic:equal>
							<logic:notEqual value="${sessionScope.USER.userId }" property="userId" name="user">
								<a href="../user.do?method=updateUserStatus&userId=${user.userId }&userStatus=0">禁&nbsp;用</a>
							</logic:notEqual>
							</logic:equal>
							<logic:equal value="0" name="user" property="userState">
							<logic:equal value="${sessionScope.USER.userId }" property="userId" name="user">
								<font color="gray">启&nbsp;用</font>
							</logic:equal>
							<logic:notEqual value="${sessionScope.USER.userId }" property="userId" name="user">
								<a href="../user.do?method=updateUserStatus&userId=${user.userId }&userStatus=1">启&nbsp;用</a>
							</logic:notEqual>
							</logic:equal>
						</td>
						<td class="td_LTE" align="center">
						    <img src="../images/edit.gif" width="16" height="16" border="0" />
						    	<logic:equal value="${sessionScope.USER.userId }" property="userId" name="user">
								<font color="gray">编 辑</font>
							</logic:equal>
							<logic:notEqual value="${sessionScope.USER.userId }" property="userId" name="user">
								<a href="../user.do?method=getUserById&userId=${user.userId }">编 辑</a>
							</logic:notEqual>
							<img src="../images/delete.gif" width="16" height="16" border="0"/>
							<logic:equal value="${sessionScope.USER.userId }" property="userId" name="user">
								<font color="gray">删 除</font>
							</logic:equal>
							<logic:notEqual value="${sessionScope.USER.userId }" property="userId" name="user">
								<a href="javascript:deleteTo(${user.userId })">删 除</a>
							</logic:notEqual>
						</td>
					</tr>
				</logic:iterate>
				<tr>
					<td height="15" colspan="6" align="right" class="td_LTRB">
					    <bean:size name="userList" id="count"/>
						&nbsp;共有 ${count }条记录，当前第 ${pageNum }/${totalPage } 页&nbsp;&nbsp;
						<a href="../user.do?method=selectall&pageNum=1"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" /></a>&nbsp;
						<logic:notEqual value="1" name="pageNum">
							<a href="../user.do?method=selectall&pageNum=${pageNum-1 }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>&nbsp; </logic:notEqual>
						<logic:notEqual value="${totalPage }" name="pageNum">
							<a href="../user.do?method=selectall&pageNum=${pageNum+1 }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>&nbsp; </logic:notEqual>
						<a href="../user.do?method=selectall&pageNum=${totalPage }"><img
								src="../images/last.gif" width="37" height="15"
								align="absmiddle" border="0" /></a>&nbsp;转到第
					<input name="txtPage" type="text" size="4"
							style="height:15px; width:20px; border:1px solid #999999;"
							id="txtPage" />
						页
						<a href="javascript:locationTo()"><img src="../images/go.gif"
								width="37" height="15" align="absmiddle" border="0" /> </a>
					</td>
				</tr>
										</table>
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
