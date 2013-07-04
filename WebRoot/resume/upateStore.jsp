<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
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
		<script type="text/javascript" src="/hr/dwr/interface/cposition.js"></script>
	    <script type="text/javascript" src="/hr/dwr/engine.js"></script>
	    <script type="text/javascript" src="/hr/dwr/util.js"></script>
	
	</head>

	<body>
		<html:form method="post" action="/exam?method=upDate">
			<table width="100%" height="413" border="0" align="center" cellpadding="0" cellspacing="0">
			<html:hidden property="subId" value="${examSubject.subId }"/>
			<html:hidden property="subRegister" value="${examSubject.subRegister }"/>
			<html:hidden property="subRegisterTime" value="${examSubject.subRegisterTime }"/>
				<tr>
					<td height="28" colspan="2" class="td_LTBG_TOP">
						招聘管理 &gt;&gt; 招聘试题管理&gt;&gt; 修改试题
					</td>
				</tr>
				<tr>
					<td width="6%" height="73" class="td_LTR">
						题&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目：
					</td>
					<td width="94%" class="td_LTE">
						<html:textarea property="subContent"cols="50" rows="5" value="${examSubject.subContent }"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="33" class="td_LTR">
						答&nbsp;案&nbsp;&nbsp;A：
					</td>
					<td class="td_LTE">
						<html:textarea property="subAnswer1"cols="50" rows="3" value="${examSubject.subAnswer1 }"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="28" class="td_LTR">
						答&nbsp;案&nbsp;&nbsp;B：
					</td>
					<td class="td_LTE">
						<html:textarea property="subAnswer2"cols="50" rows="3" value="${examSubject.subAnswer2 }"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="37" class="td_LTR">
						答&nbsp;案&nbsp;&nbsp;C：
					</td>
					<td class="td_LTE">
						<html:textarea property="subAnswer3"cols="50" rows="3" value="${examSubject.subAnswer3 }"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="36" class="td_LTR">
						答&nbsp;案&nbsp;&nbsp;D：
					</td>
					<td class="td_LTE">
						<html:textarea property="subAnswer4"cols="50" rows="3" value="${examSubject.subAnswer4 }"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="40" class="td_LTR">
						正确答案：
					</td>
					<td class="td_LTE">
						<html:textarea property="subCorrectAnswer"cols="50" rows="3" value="${examSubject.subCorrectAnswer }"></html:textarea>
					</td>
				</tr>
				<tr>
					<td height="35" class="td_LTR">
						试题类型
					</td>
					<td class="td_LTE">
							<html:select property="examSecondLevelId">
							   ${typeString }
							</html:select>
					</td>
				</tr>
				<tr>
					<td height="34" class="td_LTR">
						考核部门：
					</td>
					<td class="td_LTE">
							<html:select property="branchId" onchange="changePosition(this)">
							 <html:option value="0">请选择</html:option>
							  ${requestScope.branchString}
							</html:select>
					</td>
				</tr>
				<tr>
					<td height="31" align="center" class="td_LTB">
						<label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
					</td>
					<td height="31" align="left" class="td_LTRB">
						<input name="Submit" type="submit" class="bt_four" value="提交" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="Submit2" type="reset" class="bt_four" value="重置" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
