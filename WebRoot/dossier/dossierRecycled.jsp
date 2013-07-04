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
		 function deleteDossier(op){
				  if(window.confirm("此操作不可恢复，你确认要删除吗？")){
				    window.location.href="Dossier.do?method=dossierDelete&employeeId="+op;
				  }
				}
				
				
		function locationTo(){
		   var pageNum=document.getElementById("txtPage").value;
		   if(pageNum!=null){
		     window.location.href="Dossier.do?method=dossierRecycle&page="+pageNum;
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
																<span class="STYLE3">你当前的位置</span>：档案管理>>档案回收站
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
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="4">&nbsp;
												</td>
											</tr>
								            	<tr>
				<td width="119" class="td_LTR" height="30">
					内容编号
				</td>
				<td width="120" class="td_LTR">
					姓名
				</td>
				<td width="200" class="td_LTR">
					所属部门
				</td>
				<td class="td_LTE">
					操作
				</td>
			</tr>
			<logic:empty name="recycleList">
				<tr>
					<td colspan="4" class="td_LTRB">
						<font color="red">回收站中暂无信息！</font>
					</td>
				</tr>
			</logic:empty>
			<logic:notEmpty name="recycleList">
				<logic:iterate id="employee" name="recycleList">
					<tr>
						<td class="td_LTR" height="30">
							${employee.employeeId }
						</td>
						<td class="td_LTR">
							${employee.employeeName }
						</td>
						<td class="td_LTR">
							${employee.position.branch.branchName
							}&nbsp;&nbsp;${employee.position.positionName }
						</td>
						<td class="td_LTE">
							<img src="../images/check-out_.gif" width="16" height="16"
								align="absmiddle" />
							<a
								href="../Dossier.do?method=dossierBack&employeeId=${employee.employeeId }">还原</a>
							<img src="../images/delete.gif" width="16" height="16" border="0"
								align="absmiddle" />
							<a href="javascript:deleteDossier(${employee.employeeId })">删除</a>
						</td>
					</tr>
				</logic:iterate>
			<tr>
				<td height="30" colspan="4" align="right" class="td_LTRB">
					&nbsp;
					<logic:notEmpty name="recycleList">
						<bean:size id="count" name="recycleList" />
					</logic:notEmpty>
					共有 ${count } 条记录，当前第 ${ curPage}/${totalPage } 页&nbsp;&nbsp;
					<a href="../Dossier.do?method=dossierRecycle&page=1"><img
							src="../images/first.gif" width="37" height="15"
							align="absmiddle" border="0" />
					</a>&nbsp;
					<logic:notEqual value="1" name="curPage">
						<a href="../Dossier.do?method=dossierRecycle&page=${(curPage-1) }"><img
								src="../images/back.gif" width="43" height="15"
								align="absmiddle" border="0" />
						</a>&nbsp;    					  
    					</logic:notEqual>
					<logic:notEqual value="${totalPage}" name="curPage">
						<a href="../Dossier.do?method=dossierRecycle&page=${(curPage+1) }"><img
								src="../images/next.gif" width="43" height="15"
								align="absmiddle" border="0" />
						</a>&nbsp;
						</logic:notEqual>
					<a href="../Dossier.do?method=dossierRecycle&page=${totalPage }"><img
							src="../images/last.gif" width="37" height="15" align="absmiddle"
							border="0" />
					</a>&nbsp;转到第
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
