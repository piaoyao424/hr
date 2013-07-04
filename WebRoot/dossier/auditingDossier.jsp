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
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
		<script type="text/javascript">
	     function locationTo(){
		   var pageNum=document.getElementById("txtPage").value;
		   if(pageNum.length==0){
		     alert("不能为空");
		    }else if(isNaN(pageNum)){
	         alert("必须为数字");
	        }else if(pageNum<0){
	        alert("页数必须大于0");
	        }else if(pageNum>${totalPage}){
	        alert("必须小于总页数");
	        }else{
		     window.location.href="Dossier.do?method=dossierAuditingList&page="+pageNum;
		   }
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
																<span class="STYLE3">你当前的位置</span>：档案管理>>档案审核
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
									   <html:form method="post" action="/Dossier?method=searchLog">
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="5">&nbsp;
												</td>
											</tr>
									<tr>
					<td colspan="5" height="30">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="100%" height="30" align="center" class="td_LR">
									按姓名查找：
									<html:text property="employeeName"></html:text>
									&nbsp; &nbsp;&nbsp;&nbsp; 按入职时间查找：
									<html:text property="employeeEntertime"></html:text>
									&nbsp;
									<img src="../image/datetime.gif" style="CURSOR: hand"
										onclick="fPopUpCalendarDlg(employeeEntertime);return false"
										alt="请选择日期" align="absmiddle" width="16" height="15" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="submit" value="查询" class="bt_four" />
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="reset" value="重置" class="bt_four" />
								</td>
							</tr>

						</table>
					</td>
				</tr>
				<tr>
					<td width="9%" height="30" class="td_LTR">
						档案编号
					</td>
					<td width="15%" class="td_LTR">
						员工姓名
					</td>
					<td width="16%" class="td_LTR">
						登记时间
					</td>
					<td width="17%" class="td_LTR">
						类型
					</td>
					<td width="20%" class="td_LTE">
						操作
					</td>
				</tr>
				<logic:empty name="auditingList">
					<tr>
						<td colspan="5" class="td_LTRB">
							<font color="red">没有找到信息</font>
						</td>
					</tr>
				</logic:empty>
				<logic:notEmpty name="auditingList">
					<logic:iterate id="employeeLog" name="auditingList">
						<tr>
							<td height="30" class="td_LTR">
							    <bean:write name="employeeLog" property="elId"/>
							</td>
							<td height="30" class="td_LTR">
							  <bean:write name="employeeLog" property="elName"/>
							</td>
							<td class="td_LTR">
						     <bean:write name="employeeLog" property="elRegisterTime" format="yyyy-MM-dd"/>
							</td>
							<td class="td_LTR">
								<logic:equal value="0" name="employeeLog"
									property="elEmployeeId">
					     增加
					   </logic:equal>
								<logic:notEqual value="0" name="employeeLog"
									property="elEmployeeId">
					     修改
					   </logic:notEqual>
							</td>
							<td class="td_LTE">
								<img src="../images/edit.gif" width="16" height="16" border="0"
									align="absmiddle" />
								<a
									href="../Dossier.do?method=getEmployeeLogById&elId=${employeeLog.elId }">审核</a>
							</td>
						</tr>
					</logic:iterate>
				<tr>
					<td height="30" colspan="5" align="right" class="td_LTRB">
						&nbsp;
						<logic:notEmpty name="auditingList">
							<bean:size id="count" name="auditingList" />
						</logic:notEmpty>
						共有${count }条记录，当前第 ${curPage }/${totalPage } 页&nbsp;&nbsp;
						<a href="../Dossier.do?method=dossierAuditingList&page=1"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" /></a>&nbsp;
						<logic:notEqual value="1" name="curPage">
							<a
								href="../Dossier.do?method=dossierAuditingList&page=${(curPage-1) }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>&nbsp;
						</logic:notEqual>
						<logic:notEqual value="${totalPage}" name="curPage">
							<a
								href="../Dossier.do?method=dossierAuditingList&page=${(curPage+1) }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>&nbsp;
						</logic:notEqual>
						<a
							href="../Dossier.do?method=dossierAuditingList&page=${totalPage }"><img
								src="../images/last.gif" width="37" height="15"
								align="absmiddle" border="0" /></a>&nbsp;转到第
						<input name="textfield" type="text" size="4"
							style="height:15px; width:20px; border:1px solid #999999;"
							id="txtPage" />
						页
						<a href="javascript:locationTo()"><img src="../images/go.gif"
								width="37" height="15" align="absmiddle" border="0" /> </a>
					</td>
				</tr>
				</logic:notEmpty>
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
