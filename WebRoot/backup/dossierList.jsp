<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'MyJsp.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
		<script type="text/javascript">
		 function deleteTo(op){
				  if(window.confirm("你确认要删除吗？")){
				    window.location.href="Dossier.do?method=deleteDossier&employeeId="+op;
				  }
				}
				
		function locationTo(){
		   var pageNum=document.getElementById("txtPage").value;
		   if(pageNum!=null){
		     window.location.href="Dossier.do?method=getDossierList&page="+pageNum;
		   }
		}
		</script>
		<style type="text/css">
<!--
.STYLE4 {	color: #03515d;
	font-size: 12px;
}
.STYLE1 {font-size: 12px}
-->
 </style>
	</head>

	<body>
		<html:form action="/Dossier?method=search" method="post">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				onmouseover="changeto()" onmouseout="changeback()" bgcolor="#FFFFFF">
				<tr>
					<td colspan="6" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" />
						档案管理&gt;&gt;查看员工信息
					</td>
				</tr>
				<tr>
					<td colspan="5">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="100%" align="center" class="td_LBT">
									按姓名查找：
									<html:text property="employeeName"></html:text>
									&nbsp; &nbsp;&nbsp;&nbsp; 按入职时间查找：
									<html:text property="employeeEntertime"></html:text>
									&nbsp;
									<img src="../image/datetime.gif" style="CURSOR: hand"
										onclick="fPopUpCalendarDlg(employeeEntertime);return false"
										alt="请选择日期" align="absmiddle" width="16" height="15" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="submit" value="查询" class="bt_four" />
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="reset" value="重置" class="bt_four" />
								</td>
							</tr>

							<tr>
								<td class="td_LR">
									<img src="../images/22.gif" align="absmiddle" />
									<a href="../option.do?param=getOptions">点击添加人事档案</a>
								</td>
						</table>
					</td>
				</tr>

				<tr>
					<td width="9%" class="td_LTR">
						档案编号
					</td>
					<td width="15%" class="td_LTR">
						员工姓名
					</td>
					<td width="15%" class="td_LTR">
						入职时间
					</td>
					<td width="15%" class="td_LTR">
						状态
					</td>
					<td class="td_LTE">
						操作
					</td>
				</tr>
				<logic:empty name="dossierPageList">
					<tr>
						<td colspan="5" class="td_LTRB">
							<font color="red">暂无档案信息</font>
						</td>
					</tr>
				</logic:empty>
				<logic:notEmpty name="dossierPageList">
					<logic:iterate id="employee" name="dossierPageList">
						<tr>
							<td class="td_LTR">
								<bean:write name="employee" property="employeeId" />
							</td>
							<td class="td_LTR">
								<a
									href="../Dossier.do?method=getDossierDetail&employeeId=${employee.employeeId }">${employee.employeeName}</a>
							</td>
							<td class="td_LTR">
							    <bean:write name="employee" property="employeeEntertime" format="yyyy-MM-dd"/>
							</td>
							<td class="td_LTR">
								<logic:equal value="1" name="employee" property="employeeStatus">
					     正常
					    </logic:equal>
								<logic:equal value="0" name="employee" property="employeeStatus">
					      正在审核中 
					    </logic:equal>
							</td>
							<td class="td_LTE">
								<img src="../images/edit.gif" width="16" height="16" border="0" />
								<a
									href="../Dossier.do?method=getEmployeeInfoById&employeeId=${employee.employeeId }">编辑</a>&nbsp;
								<img src="../images/delete.gif" width="16" height="16"
									border="0" align="absmiddle" />
								<a href="javascript:deleteTo(${employee.employeeId })">删除</a>
							</td>
						</tr>
					</logic:iterate>
				<tr>
					<td colspan="5" align="right" class="td_LTRB">
						&nbsp;
						<logic:notEmpty name="dossierPageList">
							<bean:size id="count" name="dossierPageList" />
						</logic:notEmpty>
						共有 ${count } 条记录，当前第 ${ curPage}/${totalPage } 页&nbsp;&nbsp;
						<a href="../Dossier.do?method=getDossierList&page=1"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" /></a> 
						<logic:notEqual value="1" name="curPage">
							<a
								href="../Dossier.do?method=getDossierList&page=${(curPage-1) }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>    					   
    					</logic:notEqual>
						<logic:notEqual value="${totalPage}" name="curPage">
							<a
								href="../Dossier.do?method=getDossierList&page=${(curPage+1) }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" /></a> 
						</logic:notEqual>
						<a href="../Dossier.do?method=getDossierList&page=${totalPage }"><img
								src="../images/last.gif" width="37" height="15"
								align="absmiddle" border="0" /></a>转到第 
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
		</html:form>
	</body>
</html>
