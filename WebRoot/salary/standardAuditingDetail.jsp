<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    <title>standardAuditingDetail.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="../js/style.css" type="text/css"></link></head>
  
  <body>
    <html:form action="/salaryStandAction.do?method=check" method="post" focus="login">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="15" colspan="3" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" />
						薪酬管理 &gt;&gt; 薪酬标准审核 &gt;&gt;审核详细
						</td>
				</tr>
				<tr>
					<td height="30" colspan="3" class="td_LR">
					    <html:hidden property="salaryStandardId" value="${salaryStandard.ssId}"/>
					    <html:hidden property="ssChanger" value="${sessionScope.USER.userName }"/> 审核人 ${sessionScope.USER.userName }&nbsp;&nbsp;&nbsp;&nbsp;  
							审核时间&nbsp;${date } 
						    <html:hidden property="ssChangeTime"/>&nbsp;&nbsp;&nbsp;&nbsp;
						    <html:hidden property="employeePositionId" value=" ${salaryStandard.position.positionId }"/>
						      ${salaryStandard.position.branch.branchName }&nbsp;&nbsp;
						      ${salaryStandard.position.positionName}&nbsp;&nbsp;
							 总额
							  <bean:write name="salaryStandard" property="ssSalary"/>
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
					       <bean:write name="salaryStandard" property="basicmoney"/>
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
					    <bean:write name="salaryStandard" property="trafficSubsidy"/>
					        <bean:write name="salaryStandard" property="trafficSubsidy"/>
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
					   <bean:write name="salaryStandard" property="contact"/>
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
					  <bean:write name="salaryStandard" property="floatWage"/>
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
					  <bean:write name="salaryStandard" property="lunchSubsidy"/>
					</td>
				</tr>
				<tr>
				  <td height="30" class="td_LTR">
				   审核意见
				  </td>
				  <td class="td_LTE" colspan="2">
				    <input type="radio" name="ssComment" value="通过" checked="checked">通过
				    <input type="radio" name="ssComment" value="不通过">不通过
				  </td>
				</tr>
				<tr>
					<td height="30" colspan="3"  class="td_LTRB">
					      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" name="Submit" value="通过" class="bt_four" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" name="Submit2" value="返回" class="bt_four"
								onclick="javascript:history.go(-1)" />
					</td>
				</tr>
			</table>
    </html:form>
  </body>
</html:html>
