<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'staffList.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
	    <script type="text/javascript" src="../js/script.js"></script>
	    <script type="text/javascript" src="../js/oa_Popup.js"></script> 
	    <script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
	    <script type="text/javascript" src="/hr/dwr/engine.js"></script>
	    <script type="text/javascript" src="/hr/dwr/util.js"></script>
	    <script type="text/javascript">

	     function changePosition(employeeBranchId){
	       var name=employeeBranchId.value;
	       cposition.getPositionByBranch(name);
	     }
	     </script>
	</head>

	<body>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
			onmouseover="changeto()" onmouseout="changeback()" bgcolor="#FFFFFF">
				<tr>
					<td height="30" colspan="8" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" width="13" height="13" />
						职位调动 &gt;&gt; 员工基本信息
					</td>
				</tr>
				<tr>
					<td colspan="7" height="30" class="td_LR">
					<html:form method="post" action="positionChange?method=search">
						按姓名查询:
						<html:text property="employeeName"></html:text>&nbsp;

						按部门查询:
						<html:select property="employeeBranchId">
							<html:option value="0">请选择</html:option>
								  ${branchString}
							</html:select>

						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="submit" type="submit" class="bt_four" value="查询" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="reset" type="reset" class="bt_four" value="重置" />
						</html:form>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						员工编号
					</td>
					<td class="td_LTR">
						姓名
					</td>
					<td class="td_LTR">
						性别
					</td>
					<td class="td_LTR">
						年龄
					</td>
					<td class="td_LTR">
						部门
					</td>
					<td class="td_LTR">
						职位
					</td>
					<td class="td_LTE">
						调动
					</td>
				</tr>
				<logic:empty name="dossierPageList">
				   <tr>
				       <td colspan="5" class="td_LTE"><font color="red">${noList }</font></td>
				   </tr>
				</logic:empty>
				<logic:notEmpty name="dossierPageList">
				<logic:iterate id="employee" name="dossierPageList" scope="request">
				<tr>
					<td height="30" class="td_LTR">
						${employee.employeeId }
					</td>
					<td class="td_LTR">
						${employee.employeeName }
					</td>
					<td class="td_LTR">
						${employee.employeeAge }
					</td>
					<td class="td_LTR">
						${employee.employeeSex }
					</td>
					<td class="td_LTR">
						${employee.position.branch.branchName }
					</td>
					<td class="td_LTR">
						${employee.position.positionName }
					</td>
					<td class="td_LTE">
						<img src="../images/edt.gif" width="16" height="16"
							align="absmiddle" />
						&nbsp;
						<a href="../positionChange.do?method=getEmployeeById&employeeId=${employee.employeeId }">调动</a>
					</td>
				</tr>
				</logic:iterate>
				<tr>
					<td height="30" colspan="7" align="right" class="td_LTRB">
					<bean:size id="count" name="dossierPageList"/>
						共有 ${count }条记录，当前第 ${curPage }/${totalPage }  页&nbsp;&nbsp;
						<a href="../positionChange.do?method=getEmployeeList&page=1"> <img src="../images/first.gif" width="37" height="15" align="absmiddle" border="0" /></a>
						<logic:notEqual value="1" name="curPage">
						<a href="../positionChange.do?method=getEmployeeList&page=${(curPage-1)}">
						    <img src="../images/back.gif" width="43" height="15" align="absmiddle" border="0" /></a>&nbsp;
						 </logic:notEqual>
						 <logic:notEqual value="${totalPage}" name="curPage">
						<a href="../positionChange.do?method=getEmployeeList&page=${(curPage+1)}"><img src="../images/next.gif" width="43" height="15" align="absmiddle" border="0" /></a>&nbsp;
						</logic:notEqual>
						<a href="../positionChange.do?method=getEmployeeList&page=${totalPage}"><img src="../images/last.gif" width="37" height="15" align="absmiddle" border="0" /></a>&nbsp;转到第
						<input name="textfield2" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" />
						页
						<a href="#"><img src="../images/go.gif" width="37" height="15" align="absmiddle" border="0" /></a>
					</td>
				</tr>
				</logic:notEmpty>
			
			</table>
	</body>
</html>
