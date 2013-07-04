<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'auditingDetail.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
	
	</head>

	<body>
		<html:form  method="post"
			action="positionChange.do?method=updatePositionChange">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="30" colspan="2" class="td_LTBG_TOP">
						调动管理 &gt;&gt; 调动审核
					</td>
				</tr>
				<tr>
					<td width="10%" height="30" class="td_LTR">
						员工姓名
					</td>
					<td width="90%" class="td_LTE">
						${positionChange.positionChangeRname }
						<html:hidden property="employeeId" value="${positionChange.employee.employeeId}"/>
						<html:hidden property="positionChangeId" value="${positionChange.positionChangeId}"/>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						调动前部门
					</td>
					<td class="td_LTE">
				      ${branchBeforeName}  
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						调动前职位
					</td>
					<td class="td_LTE">
						${postionBeforeName }  
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						调动后部门
					</td>
					<td class="td_LTE">
						${branchAfterName}   
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						调动后职位
					</td>
					<td class="td_LTE">
						${postionAfterName }  
						<html:hidden property="employeePositionId" value="${positionChange.positionChangeAfterPositionId}"/>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						调动原因
					</td>
					<td class="td_LTE"> 
						${positionChange.positionChangeReason }
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						登记时间
					</td>
					<td class="td_LTE">
						${positionChange.positionChangeRegisterTime }
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						复核人意见
					</td>
					<td class="td_LTE">
							<html:textarea property="positionIssuanceChange" cols="50" rows="8"></html:textarea>  
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTB">
						&nbsp;
					</td>
					<td height="30" class="td_LTRB">
							<input type="submit" name="Submit" value="通过" class="bt_four" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" name="Submit2" value="返回" class="bt_four"
								onclick="javascript:history.go(-1)" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
