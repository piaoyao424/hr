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
	<html:form action="employ?method=addEmployee">
		<html:hidden property="resumeId" value="${examInterview.resume.resumeId }"/>
		<html:hidden property="eiId" value="${examInterview.eiId }"/>
		<html:hidden property="eiName" value="${examInterview.eiName }"/>
			<div id="Layer1"
				style="border: 1px solid rgb(204, 204, 204); position: absolute; width: 124px; height: 158px; z-index: 1; left: 734px; top: 32px;">
				<img src="../image/${examInterview.resume.resumePhoto }" width="129" height="158" border="0" />
			</div>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td height="30" colspan="6" class="td_LTBG_TOP">
						<img src="../image/list_icon.gif" width="13" height="13" />
						简历管理&gt;&gt;简历列表&gt;&gt;详细信息
					</td>
				</tr>
				<tr>
					<td width="11%" height="30" class="td_LTR">
						姓&nbsp;&nbsp;&nbsp;&nbsp;名
					</td>
					<td colspan="2" class="td_LTR">
						${examInterview.resume.personName }
					</td>
					<td width="12%" class="td_LTR">
						性&nbsp;&nbsp;&nbsp;&nbsp;别
					</td>
					<td width="13%" class="td_LTR">${examInterview.resume.resumeSex }
					</td>
					<td width="38%" class="td_LTE">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						年&nbsp;&nbsp;&nbsp;&nbsp;龄
					</td>
					<td colspan="2" class="td_LTR">${examInterview.resume.resumeAge } 
					</td>
					<td class="td_LTR">
						出生日期
					</td>
					<td class="td_LTR">${examInterview.resume.resumeBirthday }
					</td>
					<td class="td_LTE">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						身份证号码
					</td>
					<td colspan="5" class="td_LTE">
					${examInterview.resume.resumeIdCard }
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						政治面貌
					</td>
					<td colspan="2" class="td_LTR">
					${polity }
					</td>
					<td class="td_LTR">
						民&nbsp;&nbsp;&nbsp;&nbsp;族
					</td>
					<td class="td_LTR">
					${nation}
					</td>
					<td class="td_LTE">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						学&nbsp;&nbsp;&nbsp;&nbsp;历
					</td>
					<td colspan="2" class="td_LTR">${degree }
					</td>
					<td class="td_LTR">
						毕业院校
					</td>
					<td class="td_LTR">${examInterview.resume.resumeGraduate }
					</td>
					<td class="td_LTE">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						家庭电话
					</td>
					<td height="6" colspan="2" class="td_LTR">
					${examInterview.resume.resumeFamilyPhone }
					</td>
					<td height="6" class="td_LTR">
						联系电话
					</td>
					<td height="6" class="td_LTR">${examInterview.resume.resumePhone } 
					</td>
					<td height="6" class="td_LTE">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">应聘职位
					</td>
					<td colspan="2" class="td_LTR">
					${position.branch.branchName } ${position.positionName } <html:hidden property="positionId" value="${position.positionId }"/>
					</td>
					<td height="30" class="td_LTR">
						薪酬要求
					</td>
					<td colspan="2" class="td_LTE">
					${examInterview.resume.resumeRequire }
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						邮政编码
					</td>
					<td colspan="2" class="td_LTR">
					${examInterview.resume.resumePostcode }
					</td>
					<td class="td_LTR">
						现住址
					</td>
					<td colspan="2" class="td_LTE">&nbsp; 
						${examInterview.resume.resumeBirthPlace } 
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						电子邮箱
					</td>
					<td colspan="5" class="td_LTE">
					${examInterview.resume.resumeEmail }
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						收到时间
					</td>
					<td colspan="5" class="td_LTE"> ${examInterview.resume.resumeTime } 
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						爱好
					</td>
					<td colspan="5" class="td_LTE">
					${examInterview.resume.resumeHobby }
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						特长
					</td>
					<td colspan="5" class="td_LTE">&nbsp; 
						${examInterview.resume.resumeSkill } 
					</td>
				</tr>
				<tr>
					<td height="29" class="td_LTR">
						个人履历
					</td>
					<td colspan="5" class="td_LTE">
					${examInterview.resume.resumeHistory }
					</td>
				</tr>
				<tr>
					<td height="29" class="td_LTR">
						推荐时间
					</td>
					<td width="13%" class="td_LTR">
						${examInterview.resume.resumeCheckTime }
					</td>
					<td width="13%" class="td_LTR">
						推荐人
					</td>
					<td class="td_LTR">
						${examInterview.resume.resumeChecker }
					</td>
					<td colspan="2" class="td_LTR">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="29" class="td_LTR">
						面试时间
					</td>
					<td class="td_LTR">
						${examInterview.eiInterviewTime }
							<html:hidden property="eiInterviewTime" value="${examInterview.eiInterviewTime }"/>
					</td>
					<td class="td_LTR">
						面试人
					</td>
					<td class="td_LTR">
						${examInterview.eiInterviewer }
						<html:hidden property="eiInterviewer" value="${examInterview.eiInterviewer }"/>
					</td>
					<td class="td_LTR">
						&nbsp;
					</td>
					<td class="td_LTE">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="29" class="td_LTR">
						形象评价
					</td>
					<td class="td_LTR">
						${examInterview.eiFace }
						<html:hidden property="eiFace" value="${examInterview.eiFace }"/>
					</td>
					<td class="td_LTR">
						口才评价
					</td>
					<td class="td_LTR">
						${examInterview.eiAbility }
						<html:hidden property="eiAbility" value="${examInterview.eiAbility }"/>
					</td>
					<td class="td_LTR"> 
						 
					<br></td>
					<td class="td_LTE">
						<br>
					</td>
				</tr>
				<tr>
					<td height="29" class="td_LTR">
						笔试成绩
					</td>
					<td class="td_LTR">
						${examInterview.eiGrade }分
						<html:hidden property="eiGrade" value="${examInterview.eiGrade }"/>
					</td>
					<td class="td_LTR">
						&nbsp;
					</td>
					<td class="td_LTR">
						&nbsp;
					</td>
					<td class="td_LTR">
						&nbsp;
					</td>
					<td class="td_LTE">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="29" class="td_LTR">
						面试评价
					</td>
					<td height="29" colspan="5" class="td_LTE">
							${examInterview.eiComment }
							<html:hidden property="eiComment" value="${examInterview.eiComment }"/>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="6" align="center" class="td_LTRB">
						<input type="submit" value="通过" class="bt_four">
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="重置" class="bt_four">
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
