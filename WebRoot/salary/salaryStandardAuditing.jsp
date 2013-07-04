<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'salaryStandardAuditing.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
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
		</script>
	   <link rel="stylesheet" href="../js/style.css" type="text/css"></link></head>

	<body>
		<html:form  method="post"
			action="/sstand?method=update" >
			<table width="100%" border="0" cellpadding="0" cellspacing="0" onmouseover="changeto()" onmouseout="changeback()" bgcolor="#FFFFFF">
				<tr>
					<td height="15" colspan="3" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" />
						薪酬管理 &gt;&gt; 薪酬标准管理 &gt;&gt; 薪酬标准登记
					</td>
				</tr>
				<tr>
					<td height="30" colspan="3" class="td_LR">
						审核人 ${sessionScpe.USER.userName }&nbsp;&nbsp;&nbsp;&nbsp;
						  <html:text property="register" value="${sessionScpe.USER.userName }"/>
							审核时间&nbsp;${date }
						    <html:hidden property="registerTime"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<html:select property="employeeBranchId"
							onchange="changePosition(this)">
							<html:option value="0">---请先选择部门---</html:option>
							  ${requestScope.branchString}
							</html:select>&nbsp;&nbsp;
						  <select id="employeePositionId" name="employeePositionId">
							<option value="0">
								---请先选择职位---
							</option>
						</select>&nbsp;&nbsp;&nbsp;&nbsp;
							总额
							<html:text property="ssSalary"></html:text>
					</td>
				</tr>

				<tr>
					<td width="11%" height="30" class="td_LTR">
						序号
					</td>
					<td width="21%" class="td_LTR">
						薪酬项目名称
					</td>
					<td width="68%" class="td_LTE">
						金额
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						1
					</td>
					<td class="td_LTR">
						基本工资
					</td>
					<td class="td_LTE">
					       <html:text property="basicmoney"></html:text>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						2
					</td>
					<td class="td_LTR">
						交通补贴
					</td>
					<td class="td_LTE">
					        <html:text property="trafficSubsidy"></html:text>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						3
					</td>
					<td class="td_LTR">
						通讯补贴
					</td>
					<td class="td_LTE">
					        <html:text property="contact"></html:text>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						4
					</td>
					<td class="td_LTR">
						浮动工资
					</td>
					<td class="td_LTE">
					        <html:text property="floatWage"></html:text>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						5
					</td>
					<td class="td_LTR">
						午餐补助
					</td>
					<td class="td_LTE">
					        <html:text property="lunchSubsidy"></html:text>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="3" align="center" class="td_LTRB">
							<input type="submit" name="Submit" value="提交" class="bt_four" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" name="Submit2" value="返回" class="bt_four"
								onclick="javascript:history.go(-1)" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
