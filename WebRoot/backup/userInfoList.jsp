<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../inhead.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'staffBaseInfo.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript">
			function locationTo(){
		   var pageNum=document.getElementById("txtPage").value;
		   if(pageNum!=null){
		     window.location.href="user.do?method=selectall&pageNum="+pageNum;
		   }
		}
			 function deleteTo(op){
			  if(window.confirm("您确定要删除吗,此操作数据不可恢复！")){
			    window.location.href="user.do?method=deleteUser&userId="+op;
		  }
		}
		</script>
	</head>
	<body>
		<form id="form1" name="form1" method="post" action="">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="30" colspan="6" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" width="13" height="13" />
						用户管理 &gt;&gt; 用户信息
					</td>
				</tr>
				<tr>
					<td height="30" colspan="6" class="td_LTE">
						<a href="../option.do?param=getBranch&forward=addUser">点此添加新用户</a>
						<a href="MyJsp.jsp">点此</a>
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
							<bean:write name="user" property="userId" />
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
								<a href="javascript:">禁&nbsp;用</a>
							</logic:equal>
							<logic:equal value="0" name="user" property="userState">
								<a href="../option.do?param=getBranch&forward=rightsList">启&nbsp;用</a>
							</logic:equal>
						</td>
						<td class="td_LTE" align="center">
							<a href="javascript:">查 看</a>&nbsp;/&nbsp;
							<a href="../user.do?method=getUserById&userId=${user.userId }">编 辑</a>&nbsp;/&nbsp;
							<a href="javascript:deleteTo(${user.userId })">删 除</a>
						</td>
					</tr>
				</logic:iterate>
				<tr>
					<td height="15" colspan="6" align="right" class="td_LTRB">
					    <bean:size name="userList" id="count"/>
						&nbsp;共有 ${count }条记录，当前第 ${pageNum }/${totalPage } 页&nbsp;&nbsp;
						<a href="../user.do?method=selectall&pageNum=1"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" />
						</a>&nbsp;
						<logic:notEqual value="1" name="pageNum">
							<a href="../user.do?method=selectall&pageNum=${pageNum-1 }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" />
							</a>&nbsp; </logic:notEqual>
						<logic:notEqual value="${totalPage }" name="pageNum">
							<a href="../user.do?method=selectall&pageNum=${pageNum+1 }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" />
							</a>&nbsp; </logic:notEqual>
						<a href="../user.do?method=selectall&pageNum=${totalPage }"><img
								src="../images/last.gif" width="37" height="15"
								align="absmiddle" border="0" />
						</a>&nbsp;转到第
						<input name="textfield" type="text" size="4"
							style="height:12px; width:20px; border:1px solid #999999;"
							id=txtPage />
						页
						<a href="javascript:locationTo()">
						<img src="../images/go.gif" width="37" height="15" align="absmiddle" border="0"/></a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
