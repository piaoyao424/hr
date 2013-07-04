<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'dossierRecycled.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
		<script type="text/javascript">
		 function deleteDossier(op){
				  if(window.confirm("此操作不可恢复，你确认要删除吗？")){
				    window.location.href="Dossier.do?method=dossierDelete&employeeId="+op;
				  }
				}
				
				
		function locationTo(){
		   var pageNum=document.getElementById("txtPage").value;
		   if(pageNum!=null){
		     window.location.href="Dossier.do?method=dossierRecycle&page="+pageNum;
		   }
		}
		</script>

	</head>

	<body>
		<table border="0" cellpadding="0" cellspacing="0" width="100%"
			onmouseover="changeto()" onmouseout="changeback()" bgcolor="#FFFFFF">
			<tr>
				<td colspan="4" class="td_LTBG_TOP" height="30">
					<img src="../image/list_icon.gif" width="13" height="13" />
					档案管理&gt;&gt;回收站
				</td>
			</tr>
			<tr>
				<td width="119" class="td_LTR" height="30">
					内容编号
				</td>
				<td width="120" class="td_LTR">
					姓名
				</td>
				<td width="200" class="td_LTR">
					所属部门
				</td>
				<td class="td_LTE">
					操作
				</td>
			</tr>
			<logic:empty name="recycleList">
				<tr>
					<td colspan="4" class="td_LTRB">
						<font color="red">回收站中暂无信息！</font>
					</td>
				</tr>
			</logic:empty>
			<logic:notEmpty name="recycleList">
				<logic:iterate id="employee" name="recycleList">
					<tr>
						<td class="td_LTR" height="30">
							${employee.employeeId }
						</td>
						<td class="td_LTR">
							${employee.employeeName }
						</td>
						<td class="td_LTR">
							${employee.position.branch.branchName
							}&nbsp;&nbsp;${employee.position.positionName }
						</td>
						<td class="td_LTE">
							<img src="../images/check-out_.gif" width="16" height="16"
								align="absmiddle" />
							<a
								href="../Dossier.do?method=dossierBack&employeeId=${employee.employeeId }">还原</a>
							<img src="../images/delete.gif" width="16" height="16" border="0"
								align="absmiddle" />
							<a href="javascript:deleteDossier(${employee.employeeId })">删除</a>
						</td>
					</tr>
				</logic:iterate>
			<tr>
				<td height="30" colspan="4" align="right" class="td_LTRB">
					&nbsp;
					<logic:notEmpty name="recycleList">
						<bean:size id="count" name="recycleList" />
					</logic:notEmpty>
					共有 ${count } 条记录，当前第 ${ curPage}/${totalPage } 页&nbsp;&nbsp;
					<a href="../Dossier.do?method=dossierRecycle&page=1"><img
							src="../images/first.gif" width="37" height="15"
							align="absmiddle" border="0" />
					</a>&nbsp;
					<logic:notEqual value="1" name="curPage">
						<a href="../Dossier.do?method=dossierRecycle&page=${(curPage-1) }"><img
								src="../images/back.gif" width="43" height="15"
								align="absmiddle" border="0" />
						</a>&nbsp;    					  
    					</logic:notEqual>
					<logic:notEqual value="${totalPage}" name="curPage">
						<a href="../Dossier.do?method=dossierRecycle&page=${(curPage+1) }"><img
								src="../images/next.gif" width="43" height="15"
								align="absmiddle" border="0" />
						</a>&nbsp;
						</logic:notEqual>
					<a href="../Dossier.do?method=dossierRecycle&page=${totalPage }"><img
							src="../images/last.gif" width="37" height="15" align="absmiddle"
							border="0" />
					</a>&nbsp;转到第
					<input name="txtPage" type="text" size="4"
						style="height:15px; width:20px; border:1px solid #999999;"
						id="txtPage" />
					页
					<a href="javascript:locationTo()"><img src="../images/go.gif"
							width="37" height="15" align="absmiddle" border="0" /> </a>
				</td>
			</tr>
			</logic:notEmpty>
		</table>
	</body>
</html>
