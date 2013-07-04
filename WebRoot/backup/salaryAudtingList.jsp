<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'salaryAudtingList.jsp' starting page</title>
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
		     window.location.href="salaryStandAction.do??method=selectStandByssCheckStatus&page="+pageNum;
		   }
		}
		</script>
	</head>

	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="30" colspan="5" class="td_LTBG_TOP">
					<img src="../image/list_icon.gif" />
					薪酬管理 &gt;&gt; 薪酬标准管理 &gt;&gt; 薪酬标准复核列表
				</td>
			</tr>
			<tr>
				<td width="10%" height="30" class="td_LTR">
					编号
				</td>
				<td class="td_LTR"> 
				   职位名称
				</td>
				<td width="18%" class="td_LTR">
					登记时间
				</td>
				<td width="15%" class="td_LTR">
					登记人
				</td>
				<td width="16%" class="td_LTE">
					复核
				</td>
			</tr>
		<logic:iterate id="salaryStandard" name="list">
			<tr>
				<td height="30" class="td_LTR">
					${salaryStandard.ssId }
				</td>
				<td class="td_LTR">
				    ${salaryStandard.position.branch.branchName }&nbsp;&nbsp;
				    ${salaryStandard.position.positionName}
				</td>
				<td class="td_LTR">
					${salaryStandard.ssRegisterTime }
				</td>
				<td class="td_LTR">
					${salaryStandard.ssRegister}
				</td>
				<td class="td_LTE">
					<img src="../images/edt.gif" width="16" height="16"
						align="absmiddle" />
					<a href="../salaryStandAction.do?method=getAuditingDetailByssId&standardId=${salaryStandard.ssId}">审核</a>
				</td>
			</tr>
			</logic:iterate>
			<tr>
				<td height="30" colspan="5" align="right" class="td_LTRB">
					&nbsp;
						<logic:notEmpty name="list">
							<bean:size id="count" name="list" />
						</logic:notEmpty>
						共有 ${count } 条记录，当前第 ${ curPage}/${totalPage } 页&nbsp;&nbsp;
						<a href="../salaryStandAction.do?method=selectStandByssCheckStatus&page=1"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" /></a>&nbsp;
						<logic:notEqual value="1" name="curPage">
							<a
								href="../salaryStandAction.do?method=selectStandByssCheckStatus&page=${(curPage-1) }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>&nbsp;    					  
    					</logic:notEqual>
						<logic:notEqual value="${totalPage}" name="curPage">
							<a
								href="../salaryStandAction.do?method=selectStandByssCheckStatus&page=${(curPage+1) }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>&nbsp;
						</logic:notEqual>
						<a href="../salaryStandAction.do?method=selectStandByssCheckStatus&page=${totalPage }"><img
								src="../images/last.gif" width="37" height="15"
								align="absmiddle" border="0" /></a>&nbsp;转到第
						<input name="txtPage" type="text" size="4"
							style="height:15px; width:20px; border:1px solid #999999;"
							id="txtPage" />
						页
						<a href="javascript:locationTo()"><img src="../images/go.gif"
								width="37" height="15" align="absmiddle" border="0" /> </a>
				</td>
			</tr>
		</table>
	</body>
</html>
