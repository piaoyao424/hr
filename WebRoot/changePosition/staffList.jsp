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
	    <script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
	    <script type="text/javascript" src="/hr/dwr/engine.js"></script>
	    <script type="text/javascript" src="/hr/dwr/util.js"></script>
	    <script type="text/javascript">

	     function changePosition(employeeBranchId){
	       var name=employeeBranchId.value;
	       cposition.getPositionByBranch(name);
	     }
	     
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
		     window.location.href="positionChange.do?method=getEmployeeList&page="+pageNum;
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
																<span class="STYLE3">你当前的位置</span>：调动管理>>员工信息
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
												<td height="22" background="../images/bg.gif" colspan="8">&nbsp;
												</td>
											</tr>
									        <tr>
					<td colspan="7" height="30" class="td_LR">
					<html:form method="post" action="positionChange?method=search">
						按姓名查询:
						<html:text property="employeeName"></html:text>&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="submit" type="submit" class="bt_four" value="查询" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="reset" type="reset" class="bt_four" value="重置" />
						</html:form>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						员工编号
					</td>
					<td class="td_LTR">
						姓名
					</td>
					<td class="td_LTR">
						性别
					</td>
					<td class="td_LTR">
						年龄
					</td>
					<td class="td_LTR">
						部门
					</td>
					<td class="td_LTR">
						职位
					</td>
					<td class="td_LTE">
						调动
					</td>
				</tr>
				<logic:empty name="dossierPageList">
				   <tr>
				       <td colspan="7" class="td_LTRB"><font color="red">没有找到员工信息</font></td>
				   </tr>
				</logic:empty>
				<logic:notEmpty name="dossierPageList">
				<logic:iterate id="employee" name="dossierPageList" scope="request">
				<tr>
					<td height="30" class="td_LTR">
						${employee.employeeId }
					</td>
					<td class="td_LTR">
						${employee.employeeName }
					</td>
					<td class="td_LTR">
						${employee.employeeAge }
					</td>
					<td class="td_LTR">
						${employee.employeeSex }
					</td>
					<td class="td_LTR">
						${employee.position.branch.branchName }
					</td>
					<td class="td_LTR">
						${employee.position.positionName }
					</td>
					<td class="td_LTE">
						<img src="../images/edt.gif" width="16" height="16"/>
						&nbsp;
						<logic:equal value="${sessionScope.USER.employee.employeeId}" property="employeeId" name="employee" >
							<font color="gray">调动</font>
						</logic:equal>
						<logic:notEqual value="${sessionScope.USER.employee.employeeId}" property="employeeId" name="employee">
							<a href="../positionChange.do?method=getEmployeeById&employeeId=${employee.employeeId }">调动</a>
						</logic:notEqual>
					</td>
				</tr>
				</logic:iterate>
				<tr>
					<td height="30" colspan="7" align="right" class="td_LTRB">
					<bean:size id="count" name="dossierPageList"/>
						共有 ${count }条记录，当前第 ${curPage }/${totalPage }  页&nbsp;&nbsp;
						<a href="../positionChange.do?method=getEmployeeList&page=1"> <img src="../images/first.gif" width="37" height="15" align="absmiddle" border="0" /></a>
						<logic:notEqual value="1" name="curPage">
						<a href="../positionChange.do?method=getEmployeeList&page=${(curPage-1)}">
						    <img src="../images/back.gif" width="43" height="15" align="absmiddle" border="0" /></a>&nbsp;
						 </logic:notEqual>
						 <logic:notEqual value="${totalPage}" name="curPage">
						<a href="../positionChange.do?method=getEmployeeList&page=${(curPage+1)}"><img src="../images/next.gif" width="43" height="15" align="absmiddle" border="0" /></a>&nbsp;
						</logic:notEqual>
						<a href="../positionChange.do?method=getEmployeeList&page=${totalPage}"><img src="../images/last.gif" width="37" height="15" align="absmiddle" border="0" /></a>&nbsp;转到第
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
