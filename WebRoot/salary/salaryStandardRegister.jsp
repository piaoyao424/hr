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
   <script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
		<script type="text/javascript" src="/hr/dwr/engine.js"></script>
		<script type="text/javascript" src="/hr/dwr/util.js"></script>
		<script type="text/javascript" src="/hr/dwr/interface/dwrCheckPositionIdExists.js"></script>
		<script type="text/javascript">
		 function changePosition(employeeBranchId){
	       var name=employeeBranchId.value;
	       cposition.getPositionByBranch(name,callBack);
	     }
	     
	     function callBack(listPosition){
			DWRUtil.removeAllOptions("employeePositionId");
			DWRUtil.addOptions("employeePositionId",["---请先选择职位---"]);
			DWRUtil.addOptions("employeePositionId",listPosition);
	     }
	     
	     function checkPostionId(employeePositionId){
	        dwrCheckPositionIdExists.checkPositionIdExists(employeePositionId,callBacks);
	     }
	     
	     function callBacks(msg){
	      if(msg==true){
	         alert("该职位的薪酬标准已经存在！继续添加将会被更新");
	     }
	    }
	    
	    function clearBasic(){
	      if(document.forms[0].basicmoney.value=="0.00"){
	       document.forms[0].basicmoney.value="";
	       document.forms[0].style.color="red";   
	      }
	    }
	      function clearTrafficSubsidy(){
	      if(document.forms[0].trafficSubsidy.value=="0.00"){
	       document.forms[0].trafficSubsidy.value="";
	       document.forms[0].style.color="red";   
	      }
	    }
	    function clearContact(){
	      if(document.forms[0].contact.value=="0.00"){
	       document.forms[0].contact.value="";
	       document.forms[0].style.color="red";   
	      }
	    }
	      function clearFloatWage(){
	      if(document.forms[0].floatWage.value=="0.00"){
	       document.forms[0].floatWage.value="";
	       document.forms[0].style.color="red";   
	      }
	    }
	     function clearLunchSubsidy(){
	      if(document.forms[0].lunchSubsidy.value=="0.00"){
	       document.forms[0].lunchSubsidy.value="";
	       document.forms[0].style.color="red";   
	      }
	    }
	    
	    function calc(){
	    var basic=parseFloat(document.forms[0].basicmoney.value);
<%--	    alert(basic);--%>
	    var traffic=parseFloat(document.forms[0].trafficSubsidy.value);
	    var contact=parseFloat(document.forms[0].contact.value);
	    var float=parseFloat(document.forms[0].floatWage.value);
	    var lunch=parseFloat(document.forms[0].lunchSubsidy.value);
	    document.forms[0].ssSalary.value=basic+traffic+contact+float+lunch;
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
																<span class="STYLE3">你当前的位置</span>：薪酬管理&gt;&gt;薪酬标准管理&gt;&gt;添加薪酬标准
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
									   <html:form method="post" onsubmit="return checkDossier()"
										action="/salaryStandAction?method=add" >
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="4">&nbsp; <br></td>
											</tr>
								           <tr>
					<td height="30" colspan="3" class="td_LR">
						登记人: ${sessionScope.USER.userName }&nbsp;&nbsp;&nbsp;&nbsp;
						  <html:hidden property="register" value="${sessionScope.USER.userName }"/>
							登记时间:&nbsp;${date }
						    <html:hidden property="registerTime"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<html:select property="employeeBranchId"
							onchange="changePosition(this)">
							<html:option value="0">---请先选择部门---</html:option>
							  ${requestScope.branchString}
							</html:select>&nbsp;&nbsp;
						  <select id="employeePositionId" name="employeePositionId" onchange="checkPostionId(this.value)">
							<option value="0">
								---请先选择职位---
							</option>
						</select>&nbsp;&nbsp;&nbsp;&nbsp;
							总额
							<html:text property="ssSalary" value="0.00"  ></html:text>
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
					       <html:text property="basicmoney"  value="0.00" onfocus="clearBasic()"  onblur="calc()"></html:text>
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
					        <html:text property="trafficSubsidy"  value="0.00"  onfocus="clearTrafficSubsidy()" onblur="calc()"></html:text>
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
					        <html:text property="contact"  value="0.00" onfocus="clearContact()" onblur="calc()"></html:text>
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
					        <html:text property="floatWage"  value="0.00" onfocus="clearFloatWage()" onblur="calc()"></html:text>
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
					        <html:text property="lunchSubsidy"  value="0.00" onfocus="clearLunchSubsidy()" onblur="calc()"></html:text>
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
