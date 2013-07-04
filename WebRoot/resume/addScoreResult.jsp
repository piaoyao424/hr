<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	 <html:base/>
		<title>My JSP 'addScoreResult.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
	</head>
	<body>
		<html:form action="/employ?method=upDateExamInterview" method="post">
		<html:hidden property="resumeId" value="${examInterview.resume.resumeId }"/>
		<html:hidden property="eiId" value="${examInterview.eiId }"/>
		<html:hidden property="eiName" value="${examInterview.eiName }"/>
			<div id="Layer1"
				style="position:absolute;width:124px;height:158px;z-index:1;left: 838px;top: 43px; border:#CCCCCC 1px solid">
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
					<td colspan="2" class="td_LTE"> 
						${examInterview.resume.personName } 
					</td>
					<td width="12%" class="td_LTE">
						<span class="td_LTR">性&nbsp;&nbsp;&nbsp;&nbsp;别</span>
					</td>
					<td width="13%" class="td_LTE">${examInterview.resume.resumeSex } 
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
					<td class="td_LTR">
					  <bean:write name="examInterview" property="resume.resumeBirthday" format="yyyy-MM-dd"/>
<%--					${examInterview.resume.resumeBirthday } --%>
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
					<td colspan="5" class="td_LTE"> 
					 <bean:write name="examInterview" property="resume.resumeTime" format="yyyy-MM-dd"/>
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
					    <bean:write name="examInterview" property="resume.resumeCheckTime" format="yyyy-MM-dd"/>
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
						<html:text property="eiInterviewTime" size="15" onblur="checkNull(this,'divBirthday','面试时间')"></html:text>
						<img src="../image/datetime.gif" style="CURSOR: hand"
							onclick="fPopUpCalendarDlg(eiInterviewTime);return false"
							alt="请选择日期" align="absmiddle" width="16" height="15" />
					</td>
					<td class="td_LTR">
						面试人
					</td>
					<td class="td_LTR">
						<html:text property="eiInterviewer"></html:text>
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
					<html:select property="eiFace">
					<option value="A">&nbsp;&nbsp;A&nbsp;&nbsp;</option>
					<option value="B">&nbsp;&nbsp;B&nbsp;&nbsp; </option>
					<option value="C">&nbsp;&nbsp;C&nbsp;&nbsp; </option>
					<option value="D">&nbsp;&nbsp;D&nbsp;&nbsp;</option>
					</html:select>
					
					</td>
					<td class="td_LTR">
						口才评价
					</td>
					<td class="td_LTR">
						<html:select property="eiAbility">
							<option value="A">&nbsp;&nbsp;A&nbsp;&nbsp;	</option>
							<option value="B">&nbsp;&nbsp;B&nbsp;&nbsp; </option>
							<option value="C">&nbsp;&nbsp;C&nbsp;&nbsp; </option>
							<option value="D">&nbsp;&nbsp;D&nbsp;&nbsp;	</option>
						</html:select>
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
						<html:text property="eiGrade" size="8"></html:text>分
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
					<html:textarea property="eiComment"cols="70" rows="5"></html:textarea>
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
