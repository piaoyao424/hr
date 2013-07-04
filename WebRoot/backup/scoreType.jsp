<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'MyJsp.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript">
 function show(){
  if(document.getElementById("divPosition").style.display=="none"){
    document.getElementById("divPosition").style.display="block";
  }else{
    document.getElementById("divPosition").style.display="none";
  }
 }
 
  function hidden(){
  if(document.getElementById("divPosition").style.display=="block"){
     document.getElementById("divPosition").style.display="none";
  }
 }
 function openWindow(action){
  open(action,"职位添加","toolvars=0,scrollbars=0,location=0,statusbars=0,menubars=0,resizable=0,width=300,height=250");
 }
 	  function deleteTo(op){
			  if(window.confirm("你确认要删除吗？")){
			    window.location.href="examLeoveAction.do?method=deleteFistExam&dataDetailId="+op;
		  }
		}
</script>
	</head>

	<body>
<%--		<div id="divPosition"--%>
<%--			style="position:absolute;left:350px;top:61px;width:403px;height:251px;z-index:1; display:none; background-color:#66CCFF ">--%>
<%--			<table width="100%" height="170" border="0" cellpadding="0"--%>
<%--				cellspacing="0">--%>
<%--				<tr>--%>
<%--					<td height="30" colspan="2" class="td_LTR">--%>
<%--						<a href="javascript:openWindow('addSecondType.jsp')">点击添加试题二级分类</a>--%>
<%--					</td>--%>
<%--					<td height="30" align="right" valign="top" class="td_TR">--%>
<%--						<a href="javascript:show()">关闭</a>--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--				<tr>--%>
<%--					<td height="30" class="td_LTR">--%>
<%--						编号--%>
<%--					</td>--%>
<%--					<td width="34%" class="td_LTR">--%>
<%--						二级分类--%>
<%--					</td>--%>
<%--					<td width="41%" class="td_LTE">--%>
<%--						操作--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--				<logic:iterate id="FistExam"name="ListFistExam">--%>
<%--				<tr>--%>
<%--					<td height="30" class="td_LTR">--%>
<%--						${FistExam.dataDetailId}--%>
<%--					</td>--%>
<%--					<td class="td_LTR">--%>
<%--						${FistExam.dataDetailName}--%>
<%--					</td>--%>
<%--					<td class="td_LTE">--%>
<%--						<a href="javascript:deleteTo()"><img--%>
<%--								src="../image/calendar_week_remove.png" width="16" height="16"--%>
<%--								border="0" alt="删除" /> </a>--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--				</logic:iterate>--%>
<%--				<tr>--%>
<%--					<td height="30" colspan="3" align="right" class="td_LTRB">--%>
<%--						共--%>
<%--						<font color="#FF0000">3</font>页&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--						<a href="#">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--						<a href="#">上一页</a>&nbsp;&nbsp;&nbsp;1/3 &nbsp;&nbsp;--%>
<%--						<a href="#">下一页</a> &nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--						<a href="#">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--						<input name="Input2" type="text" size="3" />--%>
<%--						<input name="btnPage2" type="button" id="btnPage2" value="GO"--%>
<%--							class="bt_Go" />--%>
<%--					</td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</div>--%>
		<table width="100%" height="170" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="30" colspan="4" class="td_LTBG_TOP">
					数据字典管理&gt;&gt;试题分类管理
				</td>
			</tr>
			<tr>
				<td height="30" colspan="4" class="td_LR">
					<img src="../images/22.gif" align="absmiddle" />
					<a href="addFirstType.jsp">点击添加试题一级分类</a>
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					编号
				</td>
				<td width="22%" class="td_LTR">
					一级分类
				</td>
				<td width="23%" class="td_LTR">
					查看二级分类
				</td>
				<td width="33%" class="td_LTE">
					操作
				</td>
			</tr>
			<logic:iterate id="FistExam"name="ListFistExam">
			<tr>
				<td height="30" class="td_LTR">
					${FistExam.dataDetailId}
				</td>
				<td class="td_LTR">
					${FistExam.dataDetailName}
				</td>
				<td class="td_LTR">
					<a href="../examSecondLevelAction.do?method=selectExamSecond&dataDetailId=${FistExam.dataDetailId}">点击查看</a>
				</td>
				<td class="td_LTE">
					<img src="../images/delete.gif" width="16" height="16" border="0"
						align="absmiddle" />
					&nbsp;
					<a href="javascript:deleteTo(${FistExam.dataDetailId})">删除</a>
				</td>
			</tr>
		</logic:iterate>
			<tr>
				<td height="30" colspan="4" class="td_LTRB">
				  <bean:size id="count" name="ListFistExam"/>
				 共有${count }条记录
				</td>
			</tr>
		</table>
	</body>
</html>
