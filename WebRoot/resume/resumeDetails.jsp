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
		<html:form method="post" action="/employ?method=addExamInterview">
			<html:hidden property="resumeId" value="${resume.resumeId }"/>
			<html:hidden property="personName" value="${resume.personName }"/>
			<div id="Layer1"
			style="position:absolute;width:124px;height:158px;z-index:1;left: 538px;top: 32px; border:#CCCCCC 1px solid">
			<img src="../image/${resume.resumePhoto }" width="129" height="158" border="0" />
		</div>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		
			<tr>
				<td height="30" colspan="2" class="td_LTBG_TOP">
					<img src="../image/list_icon.gif" width="13" height="13" />
					简历管理&gt;&gt;简历列表&gt;&gt;详细信息
				</td>
			</tr>
			<tr>
				<td width="11%" height="30" class="td_LTR">
					姓&nbsp;&nbsp;&nbsp;&nbsp;名
				</td>
				<td width="89%" class="td_LTE">
					${resume.personName }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					性&nbsp;&nbsp;&nbsp;&nbsp;别
				</td>
				<td class="td_LTE">
					${resume.resumeSex }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					年&nbsp;&nbsp;&nbsp;&nbsp;龄
				</td>
				<td class="td_LTE">
					${resume.resumeAge }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					出生日期
				</td>
				<td class="td_LTE">
					<bean:write name="resume" property="resumeBirthday" format="yyyy-MM-dd"/>
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					身份证号码
				</td>
				<td class="td_LTE">
					${resume.resumeIdCard }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					政治面貌
				</td>
				<td class="td_LTE">
					${polity }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					民&nbsp;&nbsp;&nbsp;&nbsp;族
				</td>
				<td class="td_LTE">
					${nation }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					学&nbsp;&nbsp;&nbsp;&nbsp;历
				</td>
				<td class="td_LTE">
					${degree }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					毕业院校
				</td>
				<td class="td_LTE">
					${resume.resumeGraduate }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					应聘职位
				</td>
				<td class="td_LTE">
					${position.branch.branchName } ${position.positionName } <html:hidden property="positionId" value="${position.positionId }"/>
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					现住址
				</td>
				<td height="22" class="td_LTE">
					${resume.resumeBirthPlace }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					家庭电话
				</td>
				<td height="6" class="td_LTE">
					${resume.resumeFamilyPhone }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					薪酬要求
				</td>
				<td class="td_LTE">
					${resume.resumeRequire }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					联系电话
				</td>
				<td class="td_LTE">
					${resume.resumePhone }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					邮政编码
				</td>
				<td class="td_LTR">
					${resume.resumePostcode }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					电子邮箱
				</td>
				<td class="td_LTE">
					${resume.resumeEmail }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					收到时间
				</td>
				<td class="td_LTE">
					${resume.resumeTime }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					爱好
				</td>
				<td class="td_LTE">
					${resume.resumeHobby }
				</td>
			</tr>
			<tr>
				<td height="30" class="td_LTR">
					特长
				</td>
				<td class="td_LTE">
					${resume.resumeSkill }
				</td>
			</tr>
			<tr>
				<td height="15" class="td_LTR">
					个人履历
				</td>
				<td class="td_LTE">
					${resume.resumeHistory }
				</td>
			</tr>
			<tr>
				<td height="30" colspan="2" class="td_LTRB" align="center">
					<logic:equal value="0" name="resume" property="resumeCheckStatus">
					      <input type="submit" name="Submit" value="通过" class="bt_four"/> 
					</logic:equal>		
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input name="button" type="button" class="bt_four"
							onclick="javascript:history.go(-1);" value="返回" />
				</td>
			</tr>
		</table>
		</html:form>
	</body>
</html>
