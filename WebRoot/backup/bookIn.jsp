<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'bookIn.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
	    <script type="text/javascript" src="/hr/dwr/engine.js"></script>
	    <script type="text/javascript" src="/hr/dwr/util.js"></script>
	     <script type="text/javascript">
	      function changePosition(employeeBranchId){
	       var name=employeeBranchId.value;
	       cposition.getPositionByBranch(name,callBack);
	       }
	     
	       function callBack(listPosition){
			DWRUtil.removeAllOptions("employeePositionId");
			DWRUtil.addOptions("employeePositionId",["请选择职位"]);
			DWRUtil.addOptions("employeePositionId",listPosition);
			}
			</script>
	</head>

	<body>
		<html:form method="post" action="/positionChange?method=register">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td colspan="2" class="td_LTBG_TOP" height="30">
						<img src="../image/list_icon.gif" width="13" height="13" />
						调动管理&gt;&gt;登记
					</td>
				</tr>
				<tr>
					<td width="149" height="30" align="left" class="td_LTR">
						员工编号
					</td>
					<td width="1038" class="td_LTE">
						 ${employee.employeeId}<html:hidden property="employeeId" value="${employee.employeeId}"/>
					</td>
				</tr>
				<tr>
					<td height="15" align="left" class="td_LTR">
						员工姓名
					</td>
					<td width="1038" height="30" class="td_LTE">
						${employee.employeeName}<html:hidden property="positionChangeRname" value="${employee.employeeName}" />
					</td>
				</tr>
				<tr>
					<td height="30" align="left" class="td_LTR">
						原职位及部门
					</td>
					<td class="td_LTE">
						<label>
						${employee.position.branch.branchName }&nbsp;&nbsp;
					    ${employee.position.positionName }<html:hidden property="positionChangeBeforePositionId" value="${employee.position.positionId }" />
						</label>
					</td>
				</tr>

				<tr>
					<td height="30" align="left" class="td_LTR">
						调动职位及部门
					</td>
					<td class="td_LTE">
						<html:select property="employeeBranchId"
							onchange="changePosition(this)">
							<html:option value="0">请选择部门</html:option>
							  ${requestScope.branchString}
							</html:select>
						<select id="employeePositionId" name="employeePositionId">
							<option value="0">
								请选择职位
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td height="30" align="left" class="td_LTR">
						原&nbsp;&nbsp;&nbsp;&nbsp;因
					</td>
					<td class="td_LTE">
							<html:textarea property="positionChangeReason" cols="45" rows="6"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="30" align="left" class="td_LTR">
						备&nbsp;&nbsp;&nbsp;&nbsp;注
					</td>
					<td class="td_LTE">
						<html:textarea property="positionChangeRemark" cols="45" rows="6"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTB">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="30" class="td_LTRB">
						<input type="submit" name="Submit" value="登记" class="bt_four" />
						&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" name="Submit2" value="返回" class="bt_four"
								onclick="javascript:history.go(-1)" />
					</td>
				</tr>
				</table>
		</html:form>
	</body>
</html>
