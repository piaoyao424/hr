<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    	function checkRights(){
    		var rights=document.getElementsByName("rightsCode");
    		var i=0;
    		for(var j=0;j<rights.length;j++){
    			if(rights[j].checked==true){
    				i=1;
    				return;	
    			}
    		}
    		if(i==0){
    			alert("请选择用户权限！");
    			return false;
    		}
    		else{
    			document.forms[0].submit();
    		}
    	}
    	function checkRoleName(con){
    		if(con.length==0){
    			document.getElementById("roleNameText").innerHTML="<font color='red'>用户名不能为空</font>"
    			return false;
    		}
    		else{
    			document.getElementById("roleNameText").innerHTML="";
    		}
    	}
    	function check(con){
    		var roleName=con.roleName.value;
    		if(roleName.length==0){
    			return false;
    		}
    		if(checkRights()==false){
    			return false;
    		}
    		if(con.roleRemark.value.length==0){
    			return false ;
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
																<span class="STYLE3">你当前的位置</span>：用户管理&gt;&gt;编辑角色信息
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
									   <html:form action="role.do?method=updateRole&roleId=${role.roleId}" method="post" onsubmit="return check(this)">
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="2">&nbsp;
												</td>
											</tr>
											<tr>
				<td width="100%">
					<table border="0" cellpadding="0" cellspacing="0" align="left" width="100%">
							<tr>
							<td class="td_LTR" align="left" width="10%">
								角色名称：
								<html:hidden property="roleId" name="role"/>
							</td>
							<td class="td_LTE">
								<html:text property="roleName" name="role" onblur="checkRoleName(this.value)"></html:text>
								<div id="roleNameText" style="display: inline"></div>
							</td>
						</tr>
						<tr>
							<td class="td_LTR" align="left">
								角色描述：
							</td>
							<td class="td_LTE">
								<html:text property="roleRemark" name="role" />
							</td>
						</tr>
					</table>
			<tr>
				<td class="td_LTE">
					<table  cellpadding="0" cellspacing="0" >
						<tr>
							<td colspan="6" >
								<img src="../image/list_icon.gif" width="13" height="13" />
								请选择用户权限
							</td>
						</tr>
						<bean:define id="i" value="0"></bean:define>
						<c:if test="${i%6==0}">
								<tr>
							</c:if>
						<logic:iterate id="rights" name="rightsNode">
							<td align="left" valign="top" >
								<STRONG><bean:write name="rights" property="rightsName" />
								</STRONG>
								<br style="text-align: left;">
								<logic:iterate id="childNode" name="rightsChildNodes">
									<c:if test="${childNode.rightsParentCode==rights.rightsCode }">
										&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="checkbox" name="rightsCode" id="rightsCode${childNode.rightsCode }" value="${childNode.rightsCode }" >
										<bean:write name="childNode" property="rightsName" /><br>
									</c:if>

								
						<%--  使用Javascript使复选框选中--%>
						<logic:iterate id="right" name="roleRightsList">
						<logic:equal value="${childNode.rightsCode}" name="right" property="rightsCode">
							<script type="text/javascript">
						          var code="${right.rightsCode}";
						          var checkCode=document.forms[0].rightsCode${childNode.rightsCode };
						          if(code==checkCode.value){
						             checkCode.checked=true;
						          }   
							</script>
						</logic:equal>	
						 </logic:iterate>
		</logic:iterate>				 
							</td>
							<bean:define id="i" value="${i+1}"></bean:define>
						</logic:iterate>
						<c:if test="${i%6==1}"></c:if>
					</table>
				</td>
			</tr>
			<tr>
			<td class="td_LTRB">
				<html:submit value="确 定" styleClass="bt_four"></html:submit>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<html:reset value="取 消" styleClass="bt_four"></html:reset>
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
