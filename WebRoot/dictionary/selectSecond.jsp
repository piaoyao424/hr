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
	   function deleteTo(p){
			  if(window.confirm("你确认要删除吗？")){
			    window.location.href="examSecondLevelAction.do?method=deleteExamSecond&dataDetailId=${requestScope.dataDetailId}&&eslId="+p;
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
																<span class="STYLE3">你当前的位置</span>：数据字典管理>>部门职位管理
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
					               <td colspan="4">
					                 <table width="100%" height="170" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
               <td class="td_LTBG_TOP" height="30" colspan="3" >
                   <img src="../image/list_icon.gif" />
					数据字典管理管理&gt;&gt;试题分类管理管理&gt;&gt;添加试题二级分类</td>
              </tr>
				<tr>
					<td height="30" colspan="2" class="td_LR">
						<a href="../option.do?param=selectLevel&dataDetailId=${requestScope.dataDetailId }">点击添加试题二级分类</a>
					</td>
					<td height="30" align="right" valign="top" class="td_TR">
						<a href="javascript:show()"><br></a>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						编号
					</td>
					<td width="34%" class="td_LTR">
						二级分类
					</td>
					<td width="41%" class="td_LTE">
						操作
					</td>
				</tr>
				<logic:notEmpty name="examSecondAll">
                <logic:iterate id="examSecondLevel" name="examSecondAll">
				<tr>
					<td height="30" class="td_LTR">
                      <bean:write name="examSecondLevel" property="eslId"/>
					</td>
					<td class="td_LTR">
                         <bean:write name="examSecondLevel" property="eslSecondName"/>
					</td>
					<td class="td_LTE">
						    <img src="../image/calendar_week_remove.png" width="16" height="16"
								border="0" alt="删除" /><a href="javascript:deleteTo(${examSecondLevel.eslId })">删除</a>
					</td>
				</tr>
            </logic:iterate>
            </logic:notEmpty>
            <logic:empty name="examSecondAll">
              <tr><td colspan="3"  class="td_LTE"><font color="red">无二级分类信息</font></td></tr>
            </logic:empty>
				<tr>
					<td height="30" colspan="3"  class="td_LTRB">
						  <bean:size id="count" name="examSecondAll"/>
				          共有${count }条记录
					</td>
				</tr>
			</table>
			 	                     </td>
		                           </table>
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
