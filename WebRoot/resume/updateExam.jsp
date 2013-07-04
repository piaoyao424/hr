<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/inhead.jsp"%>
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
		<form id="form1" name="form1" method="post" action="">
			<table width="100%" height="353" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td height="25" colspan="2" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" width="13" height="13" />
						招聘管理 &gt;&gt; 招聘考试信息管理&gt;&gt;修改考试信息
					</td>
				</tr>
				<tr>
					<td width="6%" height="40" class="td_LTR">
						考试时间：
					</td>
					<td width="94%" class="td_LTE">
						<input name="examDate" type="text" id="examDate" />
						<img src="../image/datetime.gif" style="CURSOR: hand"
							onclick="fPopUpCalendarDlg(examDate);return false" alt="请选择日期"
							align="absmiddle" width="16" height="15" />
					</td>
				</tr>
				<tr>
					<td height="35" class="td_LTR">
						地&nbsp;&nbsp;&nbsp;&nbsp;点：
					</td>
					<td class="td_LTE">
						<input name="address" type="text" id="address" />
					</td>
				</tr>
				<tr>
					<td height="37" class="td_LTR">
						考试人数：
					</td>
					<td class="td_LTE">
						<input name="num" type="text" id="num" />
					</td>
				</tr>
				<tr>
					<td height="26" class="td_LTR">
						招聘职位：
					</td>
					<td class="td_LTE">
						<select name="position" id="position">
							<option value="-----">
								请选择
							</option>
							<option value="0">
								经理
							</option>
							<option value="1">
								部门经理
							</option>
							<option value="2">
								普通员工
							</option>
							<option value="3">
								全部
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td height="35" class="td_LTR">
						职位描述：
					</td>
					<td class="td_LTE">
						<textarea name="textarea2" cols="50" rows="8"></textarea>
					</td>
				</tr>
				<tr>
					<td height="23" align="center" class="td_LTB">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="23" align="left" class="td_LTRB">
						<input type="submit" name="Submit" value="提交" class="bt_four" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="Submit2" type="reset" class="bt_four" value="重置" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
