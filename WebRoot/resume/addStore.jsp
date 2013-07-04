<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	 <html:base/>
		<title>My JSP 'addStore.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
	    <script type="text/javascript" src="/hr/dwr/engine.js"></script>
	    <script type="text/javascript" src="/hr/dwr/util.js"></script>
	</head>

	<body>
		<html:form  method="post" action="/exam?method=add">
			<table width="100%" height="620" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td height="28" colspan="2" class="td_LTBG_TOP">
						招聘管理 &gt;&gt; 招聘试题管理&gt;&gt; 添加试题
					</td>
				</tr>
				<tr>
					<td width="5%" height="88" align="right" class="td_LTR">
						题&nbsp;&nbsp;&nbsp;&nbsp;目：
					</td>
					<td width="95%" class="td_LTE">
						<textarea name="subContent" cols="50" rows="5"></textarea>
					</td>
				</tr>
				<tr>
					<td height="81" align="right" class="td_LTR">
						答&nbsp;&nbsp;案&nbsp;A：
					</td>
					<td class="td_LTE">
							<textarea name="subAnswer1" cols="50" rows="3"></textarea>
					</td>
				</tr>
				<tr>
					<td height="78" align="right" class="td_LTR">
						答&nbsp;&nbsp;案&nbsp;B：
					</td>
					<td class="td_LTE">			
							<textarea name="subAnswer2" cols="50" rows="3"></textarea>
					</td>
				</tr>
				<tr>
					<td height="37" align="right" class="td_LTR">
						答&nbsp;&nbsp;案&nbsp;C：
					</td>
					<td class="td_LTE">
							<textarea name="subAnswer3" cols="50" rows="3"></textarea>
					</td>
				</tr>
				<tr>
					<td height="36" align="right" class="td_LTR">
						答&nbsp;&nbsp;案&nbsp;D：
					</td>
					<td class="td_LTE">
							<textarea name="subAnswer4" cols="50" rows="3"></textarea>
					</td>
				</tr>
				<tr>
					<td height="40" align="right" class="td_LTR">
						正确答案：
					</td>
					<td class="td_LTE">
						<textarea name="subCorrectAnswer" cols="50" rows="3"></textarea>
					</td>
				</tr>
				<tr>
					<td height="35" class="td_LTR">
						试题分类
					</td>
					<td width="94%" class="td_LTE">
							<html:select property="examSecondLevelId">
							   ${typeString }
							</html:select>
					</td>
				</tr>
				<tr>
					<td height="34" align="right" class="td_LTR">
						考核部门：
					</td>
					<td class="td_LTE">
						<html:select property="branchId">
							 <html:option value="0">请选择</html:option>
							  ${requestScope.branchString}
							</html:select>
					</td>
				</tr>
				<tr>
					<td height="31" align="left" class="td_LTB">
						
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
					</td>
					<td height="31" align="left" class="td_LTRB">
						<span class="td_LTR"> <input name="Submit" type="submit"
								class="bt_four" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp; <input
								name="Submit2" type="reset" class="bt_four" value="重置" /> </span>
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
