<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    <title>MyJsp.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="../js/style.css" type="text/css"></link>
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
			DWRUtil.removeAllOptions("positionIssuancePositionId");
			DWRUtil.addOptions("positionIssuancePositionId",["---请先选择职位---"]);
			DWRUtil.addOptions("positionIssuancePositionId",listPosition);
		}
	</script>
   </head>
  
  <body>
      <table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0" style="table-layout:fixed;">
		<tr>
			<td valign="top">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="30" background="../images/tab_05.gif">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="12" height="30">
										<img src="../images/tab_03.gif" width="12" height="30" />
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="46%" valign="middle">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td width="5%">
																<div align="center">
																	<img src="../images/tb.gif" width="16" height="16" />
																</div>
															</td>
															<td width="95%" class="STYLE1">
																<span class="STYLE3">你当前的位置</span>：招聘管理 &gt;&gt; 招聘信息管理&gt;&gt; 添加招聘信息
															</td>
														</tr>
													</table>
												</td>
												<td width="54%">
													&nbsp;
												</td>
											</tr>
										</table>
									</td>
									<td width="16">
										<img src="../images/tab_07.gif" width="16" height="30" />
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="8" background="../images/tab_12.gif">
										&nbsp;
									</td>
									<td>
									   <html:form action="/position?method=add" method="post" onsubmit="return checkRights()">
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="2">&nbsp;
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
							   <option value="0">---请先选择职位---</option>
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
									</td>
									<td width="8" background="../images/tab_15.gif">
										&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td height="35" background="../images/tab_19.gif">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="12" height="35">
										<img src="../images/tab_18.gif" width="12" height="35" />
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="STYLE4">
													&nbsp;&nbsp;
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
										</table>
									</td>
									<td width="16">
										&nbsp;
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
  </body>
</html:html>
