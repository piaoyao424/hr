<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	</head>

	<body>
		<html:form  method="post" action="/examSecondLevelAction?method=addExamSecond&dataDetailId=${requestScope.dataDetailId}">
			<table width="100%" height="123" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td colspan="2" class="td_LTBG_TOP">
						数据字典管理&gt;&gt;试题分类管理&gt;&gt;试题二级分类添加
					</td>
				</tr>
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
	</body>
</html>
