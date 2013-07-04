<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'addPosition.jsp' starting page</title>
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
	         function changePosition(branchId){
	          var name=branchId.value;
	          cposition.getPositionByBranch(name,callBack);
	     }
	     
	     function callBack(listPosition){
			DWRUtil.removeAllOptions("positionId");
			DWRUtil.addOptions("positionId",["---请先选择职位---"]);
			DWRUtil.addOptions("positionId",listPosition);
			}
	    </script>
		</head>

	<body>
		<html:form method="post" action="/position?method=add" >
			<table width="100%" height="312" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td height="25" colspan="2" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" width="13" height="13" />
						招聘管理 &gt;&gt; 招聘信息管理&gt;&gt; 添加招聘信息
					</td>
				</tr>

				<tr>
					<td width="6%" height="26" align="right" class="td_LTR">
						招聘职位：
					</td>
					<td width="94%" class="td_LTE">
						<html:select property="branchId" onchange="changePosition(this)">
							 <html:option value="0">请选择</html:option>
							  ${requestScope.branchString}
							</html:select>
							<select id="positionId" name="positionIssuancePositionId">
							   <option value="0">请选择</option>
							</select>
					</td>
				</tr>
				<tr>
					<td height="35" align="right" class="td_LTR">
						职位描述：
					</td>
					<td class="td_LTE">
						<html:textarea property="positionIssuanceDescription"cols="50" rows="8"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="25" align="right" class="td_LTR">
						招聘要求：
					</td>
					<td align="left" valign="middle" class="td_LTE">
						<html:textarea property="positionIssuanceRequire"cols="50" rows="8"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="22" align="right" class="td_LTR">
						招聘人数：
					</td>
					<td class="td_LTE">
						<html:text property="positionIssuanceRequireNum"></html:text>
					</td>
				</tr>
				<tr>
					<td height="22" align="right" class="td_LTR">
						截止日期：
					</td>
					<td class="td_LTE">
						<html:text property="positionIssuanceEndTime" ></html:text>
						&nbsp;
						<img src="../image/datetime.gif" style="CURSOR: hand"
							onclick="fPopUpCalendarDlg(positionIssuanceEndTime);return false"
							alt="请选择日期" align="absmiddle" width="16" height="15" />

					</td>
				</tr>
				<tr>
					<td height="23" align="center" class="td_LTRB">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="23" align="left" class="td_LTRB">
						<input type="submit" name="Submit" value="提交" class="bt_four" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="reset" type="reset" class="bt_four" value="重置" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
