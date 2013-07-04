<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'MyJsp.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript">
<%--		 function show(id){--%>
<%--		  if(document.getElementById("divPosition").style.display=="none"){--%>
<%--		      window.location.href="branch.do?method=selectBranchById&branchId="+id;--%>
<%--		      document.getElementById("divPosition").style.display="block";--%>
<%--		  }else{--%>
<%--		     document.getElementById("divPosition").style.display="none";--%>
<%--		  }--%>
<%--		 }--%>
 
	  function hidden(){
	  if(document.getElementById("divPosition").style.display=="block"){
	     document.getElementById("divPosition").style.display="none";
	  }
	 }
	 function openWindow(action){
	  open(action,"职位添加","toolvars=0,scrollbars=0,location=0,statusbars=0,menubars=0,resizable=0,width=300,height=250");
	 }
	  function deleteTo(op){
			  if(window.confirm("你确认要删除吗？")){
			    window.location.href="branch.do?method=deleteBranch&branchId="+op;
		  }
		}
</script>
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
	</head>
	<body>
<%--		<div id="divPosition"--%>
<%--			style="position:absolute;left:526px;top:58px;width:465px;height:253px;z-index:1; display:none; background-color:#66CCFF">--%>
<%--			<table width="100%" height="167" border="0" cellpadding="0"--%>
<%--				cellspacing="0">--%>
<%----%>
<%--				<tr>--%>
<%--					<td height="31" colspan="2" class="td_LTR">--%>
<%--						<a href="javascript:openWindow('addRole.jsp')">点击添加部门职位</a>--%>
<%--					</td>--%>
<%--					<td height="31" align="right" valign="top" class="td_TR">--%>
<%--						<a href="javascript:show()">关闭</a>--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td height="27" class="td_LTR">--%>
<%--						编号--%>
<%--					</td>--%>
<%--					<td width="32%" height="27" class="td_LTR">--%>
<%--						职位--%>
<%--					</td>--%>
<%--					<td width="36%" class="td_LTE">--%>
<%--						操作--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--				<logic:iterate id="position" name="branchlist">--%>
<%--					<tr>--%>
<%--						<td height="30" class="td_LTR">--%>
<%--							${position.positionId}--%>
<%--						</td>--%>
<%--						<td class="td_LTR">--%>
<%--							${position.positionName}--%>
<%--						</td>--%>
<%--						<td class="td_LTE">--%>
<%--							<a href="javascript:deleteTo()"><img--%>
<%--									src="../image/calendar_week_remove.png" width="16" height="16"--%>
<%--									border="0" alt="删除" /> </a>--%>
<%--						</td>--%>
<%--					</tr>--%>
<%--				</logic:iterate>--%>
<%--				<tr>--%>
<%--					<td height="30" colspan="3" align="right" class="td_LTRB">--%>
<%--						共--%>
<%--						<font color="#FF0000">3</font>页&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--						<a href="#">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--						<a href="#">上一页</a>&nbsp;&nbsp;&nbsp;1/3 &nbsp;&nbsp;--%>
<%--						<a href="#">下一页</a> &nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--						<a href="#">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--						<input name="Input2" type="text" size="3" />--%>
<%--						<input name="btnPage2" type="button" id="btnPage2" value="GO"--%>
<%--							class="bt_Go" />--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</div>--%>
		<table width="100%" height="464" border="0" cellpadding="0"
			cellspacing="0" onmouseover="changeto()" onmouseout="changeback()"
			bgcolor="#FFFFFF">
			<tr>
				<td valign="top">
					<table width="100%" height="170" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="30" colspan="4" class="td_LTBG_TOP">
								数据字典管理&gt;&gt;部门职位管理
							</td>
						</tr>
						<tr>
							<td height="30" colspan="4" class="td_LR">
								<img src="../images/22.gif" align="absmiddle" />
								<a href="addDossier.jsp"></a><a
									href="addSection.jsp">点击添加部门</a>
							</td>
						</tr>
						<tr>
							<td height="30" class="td_LTR">
								编号
							</td>
							<td width="21%" class="td_LTR">
								部门
							</td>
							<td width="22%" class="td_LTR">
								查看职位
							</td>
							<td width="31%" class="td_LTE">
								操作
							</td>
						</tr>
						<logic:iterate id="branch" name="list">
							<tr>
								<td height="30" class="td_LTR">
									${branch.branchId}
								</td>
								<td class="td_LTR">
									${branch.branchName}
								</td>
								<td class="td_LTR">
									<a href="../positionAction.do?method=selectBranchById&branchId=${branch.branchId}">点击查看</a>
								</td>
								<td class="td_LTE">
									<img src="../images/delete.gif" width="16" height="16"
										border="0" align="absmiddle" />
									&nbsp;
									<a href="javascript:deleteTo(${branch.branchId})">删除</a>
								</td>
							</tr>
						</logic:iterate>
						<tr>
							<td height="30" colspan="4" align="right" class="td_LTRB">
								&nbsp;共有 120 条记录，当前第 1/10 页&nbsp;&nbsp;
								<a href="#"><img src="../images/first.gif" width="37"
										height="15" align="absmiddle" border="0" /> </a>&nbsp;
								<a href="#"><img src="../images/back.gif" width="43"
										height="15" align="absmiddle" border="0" /> </a>&nbsp;
								<a href="#"><img src="../images/next.gif" width="43"
										height="15" align="absmiddle" border="0" /> </a>&nbsp;
								<a href="#"><img src="../images/last.gif" width="37"
										height="15" align="absmiddle" border="0" /> </a>&nbsp;转到第
								<input name="textfield" type="text" size="4"
									style="height:12px; width:20px; border:1px solid #999999;" />
								页
								<a href="#"><img src="../images/go.gif" width="37"
										height="15" align="absmiddle" border="0" /> </a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top">
					&nbsp;
				</td>
			</tr>
		</table>
	</body>
</html>
