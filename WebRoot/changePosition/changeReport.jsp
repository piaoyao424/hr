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
		<title>My JSP 'changeReport.jsp' starting page</title>
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
		     window.location.href="positionChange.do?method=changeReport&page="+pageNum;
		   }
		}
		</script>
	</head>

	<body>
		<form action="" method="get" name="changeInfoForm" id="changeInfoForm">
			<table border="0" cellpadding="０" cellspacing="０" width="100%">
				<tr>
					<td colspan="4" height="30" class="td_LTBG_TOP">
						调动管理&gt;&gt;查询
					</td>
				</tr>
				<tr>
					<td colspan="4" height="30" class="td_LR">
						按姓名查询
							<input type="text" name="textfield" />
						&nbsp;&nbsp;&nbsp;&nbsp;按时间查询
							<input type="text" name="date" value="" />
							<img src="../image/datetime.gif"
								onclick="fPopUpCalendarDlg(date);return false" alt="请选择日期"
								style="cursor:hand" align="absmiddle" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="submit" type="submit" class="bt_four" value="查询" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="reset" type="reset" class="bt_four" value="重置" />
					</td>
				</tr>
				<tr>
					<td colspan="4" height="30" class="td_LTE">
						<font color="red">* 以下显示的是本月的记录，查看其他时间查询请您查询</font>
					</td>
				</tr>
				<tr>
					<td width="69" height="30" class="td_LTR">
						员工姓名
					</td>
					<td width="77" class="td_LTR">
						原职位及部门
					</td>
					<td width="163" class="td_LTR">
						调动后部门及职位
					</td>
					<td class="td_LTE">
						调动时间
					</td>
				</tr>
				<logic:empty name="reportList">
				   <tr>
				      <td class="td_LTRB"><font color="red">暂无信息</font></td>
				   </tr>
				</logic:empty>
				<logic:notEmpty name="reportList">
				<logic:iterate id="positionChange" name="reportList">
				<tr>
					<td height="30" class="td_LTR">
						<bean:write name="positionChange" property="positionChangeRname"/>
					</td>
					<td class="td_LTR">
					    <bean:write name="positionChange" property="positionChangeBeforePositionId"/>
						<bean:write name="positionChange" property="positionChangeRname"/>
					</td>
					<td class="td_LTR">
						<bean:write name="positionChange" property="positionChangeAfterPositionId"/>
					</td>
					<td class="td_LTE">
						<bean:write name="positionChange" property="positionChangeCheckTime"/>
					</td>
				</tr>
				</logic:iterate>
				<tr>
					<td height="30" colspan="4" align="right" class="td_LTRB">
						&nbsp;
						<logic:notEmpty name="reportList">
							<bean:size id="count" name="reportList" />
						</logic:notEmpty>
						共有 ${count } 条记录，当前第 ${ curPage}/${totalPage } 页&nbsp;&nbsp;
						<a href="../positionChange.do?method=changeReport&page=1"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" /></a> 
						<logic:notEqual value="1" name="curPage">
							<a
								href="../positionChange.do?method=changeReport&page=${(curPage-1) }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>    					   
    					</logic:notEqual>
						<logic:notEqual value="${totalPage}" name="curPage">
							<a
								href="../positionChange.do?method=changeReport&page=${(curPage+1) }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" /></a> 
						</logic:notEqual>
						<a href="../positionChange.do?method=changeReport&page=${totalPage }"><img
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

		</form>
	</body>
</html>
