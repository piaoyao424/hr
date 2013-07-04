<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <html:base />
    <title>My JSP 'selectSecond.jsp' starting page</title>
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
</body>
</html>
