<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'salaryStandardRegister.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
		<script type="text/javascript" src="/hr/dwr/engine.js"></script>
		<script type="text/javascript" src="/hr/dwr/util.js"></script>
		</head>

	<body>
		<html:form  method="post"
			action="/salaryStandAction?method=update">
			<table width="100%" border="0">
				<tr>
					<td height="15" colspan="3" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" />
						薪酬管理 &gt;&gt; 薪酬标准管理 &gt;&gt; 薪酬标准登记
					</td>
				</tr>
				<tr>
					<td height="30" colspan="3" class="td_LR">
					    <html:hidden property="salaryStandardId" value="${salaryStandard.ssId}"/>
					    <html:hidden property="register" value="${salaryStandard.ssRegister}"/>
					    <html:hidden property="registerTime" value="${salaryStandard.ssRegisterTime}"/>
					    <html:hidden property="ssChanger" value="${sessionScpe.USER.userName }"/> 变更人 ${sessionScpe.USER.userName }&nbsp;&nbsp;&nbsp;&nbsp; 
							变更时间&nbsp;${date }
						    <html:hidden property="ssChangeTime"/>&nbsp;&nbsp;&nbsp;&nbsp;
						    <html:hidden property="employeePositionId" value=" ${salaryStandard.position.positionId }"/>
						      ${salaryStandard.position.branch.branchName }&nbsp;&nbsp;
						      ${salaryStandard.position.positionName}&nbsp;&nbsp;
							 总额
							<html:text property="ssSalary" value="${salaryStandard.ssSalary}"></html:text>
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
					       <html:text property="basicmoney" value="${salaryStandard.basicmoney}"> </html:text>
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
					        <html:text property="trafficSubsidy" value="${salaryStandard.trafficSubsidy}"></html:text>
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
					        <html:text property="contact" value="${salaryStandard.contact}"></html:text>
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
					        <html:text property="floatWage" value="${salaryStandard.floatWage}"></html:text>
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
					        <html:text property="lunchSubsidy" value="${salaryStandard.lunchSubsidy}"></html:text>
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
