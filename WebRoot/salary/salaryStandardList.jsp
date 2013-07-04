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
    <script type="text/javascript">
	 	function deleteTo(ssId){
			  if(window.confirm("您确定要删除此条数据吗？")){
			    window.location.href="salaryStandAction.do?method=deleteSstand&ssId="+ssId;
			  }
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
		     window.location.href="salaryStandAction.do?method=selectStandardList&page="+pageNum;
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
																<span class="STYLE3">你当前的位置</span>：薪酬管理>>薪酬标准列表
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
									   <html:form action="/Dossier?method=search" method="post">
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="9">&nbsp;
												</td>
											</tr>
										 
										    <tr>
				<td height="30" colspan="9" class="td_LR">
					<img src="../images/22.gif" />
					<a href="../option.do?param=getBranch&forward=salaryStandardRegister">添加薪酬标准</a>
				</td>
			</tr>
			<tr>
				<td width="5%" height="30" class="td_LTR">
					编号
				</td>
				<td class="td_LTR" width="8%">职位</td>
				<td width="10%" class="td_LTR">
					基本工资
				</td>
				<td width="10%" class="td_LTR">
					浮动工资
				</td>
				<td width="10%" class="td_LTR">
					交通补贴
				</td>
				<td width="10%" class="td_LTR">
					通讯补贴
				</td>
				<td width="10%" class="td_LTR">
					午餐补助
				</td>
				<td width="10%" class="td_LTR">
					制定者
				</td>
				<td class="td_LTE">
					操&nbsp;&nbsp;作
				</td>
			</tr>
			<logic:notEmpty name="list">
			<logic:iterate id="salaryStandard" name="list">
			<tr>
				<td height="30" class="td_LTR">
				    <bean:write name="salaryStandard" property="ssId"/>
				</td>
				<td class="td_LTR">
				    <bean:write name="salaryStandard" property="position.branch.branchName"/>
				    ${salaryStandard.position.positionName}
				</td>
				<td class="td_LTR">
				    <bean:write name="salaryStandard" property="basicmoney"/>
				</td>
				<td class="td_LTR">
				     <bean:write name="salaryStandard" property="floatWage"/>
				</td>
				<td class="td_LTR">
				    <bean:write name="salaryStandard"  property="trafficSubsidy"/>
				</td>
				<td class="td_LTR">
				    <bean:write name="salaryStandard" property="contact"/>
				</td>
				<td class="td_LTR">
				    <bean:write name="salaryStandard" property="lunchSubsidy"/>
				</td>
				<td class="td_LTR">
				    <bean:write name="salaryStandard" property="ssDesigner"/>
				</td>
				<td class="td_LTE">
					<img src="../images/edit.gif" width="16" height="16" border="0" />
					<a href="../salaryStandAction.do?method=getStandardById&ssId=${salaryStandard.ssId}">修改</a>&nbsp;
					<img src="../images/delete.gif" width="16" height="16" border="0"
						align="absmiddle" />
					<a href="javascript:deleteTo(${salaryStandard.ssId })">删除</a>
				</td>
			</tr>
			</logic:iterate>
			<tr>
				<td height="30" colspan="10" align="right" class="td_LTRB">
					&nbsp;
						<logic:notEmpty name="list">
							<bean:size id="count" name="list" />
						</logic:notEmpty>
						共有 ${count} 条记录，当前第 ${ curPage}/${totalPage } 页&nbsp;&nbsp;
						<a href="../salaryStandAction.do?method=selectStandardList&page=1"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" /></a>&nbsp;
						<logic:notEqual value="1" name="curPage">
							<a
								href="../salaryStandAction.do?method=selectStandardList&page=${(curPage-1) }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>&nbsp;    					  
    					</logic:notEqual>
						<logic:notEqual value="${totalPage}" name="curPage">
							<a
								href="../salaryStandAction.do?method=selectStandardList&page=${(curPage+1) }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" /></a>&nbsp;
						</logic:notEqual>
						<a href="../salaryStandAction.do?method=selectStandardList&page=${totalPage }"><img
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
			</logic:notEmpty>
			<logic:empty name="list">
			   <tr>
			    <td height="30" class="td_LTRB"  colspan="10" >
			    <font color="red">
			     暂无信息！
			    </font></td>
			   </tr>
			</logic:empty>
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
