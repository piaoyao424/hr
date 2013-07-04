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
     function checkNull(){
       var eslSecondName=document.getElementById("divEslSecondName");
       eslSecondName.innerHTML="";
       if(document.forms[0].eslSecondName.value.length==0){
         eslSecondName.innerHTML="<font color='red'>* 二级分类不能为空</font>";
         return false;
       }else{
         return true;
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
																<span class="STYLE3">你当前的位置</span>：数据字典管理&gt;&gt;试题分类管理&gt;&gt;试题二级分类添加
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
								<html:form  method="post" action="/examSecondLevelAction?method=addExamSecond&dataDetailId=${requestScope.dataDetailId}" onsubmit="return checkNull()">
			<table width="100%" height="123" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="50%" align="right" class="td_LTR">
						一级分类：
					</td>
					<td width="50%" class="td_LTE">
						<html:select property="eslDataDetailId">
							${levelString }
						</html:select>
					</td>
				</tr>
				<tr>
					<td align="right" class="td_LTR">
						二级分类：
					</td>
					<td class="td_LTE">
					    <html:text property="eslSecondName"></html:text>
					    <div id="divEslSecondName" style="display:inline"><font color="green">* 二级分类不能为空</font></div>
					</td>
				</tr>

				<tr>
					<td colspan="2" align="center" class="td_LTRB">
						<input name="Submit" type="submit" class="bt_four" value="提交" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="Submit2" type="button" class="bt_four" value="返回" />
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
