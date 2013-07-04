<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
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
		<script type="text/javascript" src="../js/script.js"></script>
		<script type="text/javascript" src="../js/oa_Popup.js"></script>
		<script type="text/javascript">
<%--	      window.document.body.onload=inits;--%>
			function inits(){
				selectOneOption('employeeNation',${employee.employeeNation});
				selectOneOption('empolyeeDegree',${employee.employeeDegree});
				selectOneOption('employeePolity',${employee.employeePolity});
			}
	    
	    
	  function selectOneOption(objecth,id){
		var oh=document.getElementById(objecth);
		var n=oh.options.length;
		for(var i=0;i<n;i++){
			if(oh.options[i].value==id){
				oh.options[i].selected=true;
			}
		}
	}
	
	
	   function showImage(filePath){
	        document.getElementById("imagep").src=filePath;
	     }
	     
	     
	      function checkDossier(){
	       var name=document.forms[0].employeeName;
	       var age=document.forms[0].employeeAge;
	       var birthday=document.forms[0].employeeBirthday;
	       var speciality=document.forms[0].employeeSpeciality;
	       var mobile=document.forms[0].employeeMobile;
	       var familyAddress=document.forms[0].employeeFamilyAddress;
	       var email=document.forms[0].employeeEmail;
	       var qq=document.forms[0].employeeQq;
	       var postcode=document.forms[0].employeePostcode;
	       var skill=document.forms[0].employeeSkills;
	       var myFile=document.forms[0].myFile;
	       var branchId=document.forms[0].employeeBranchId;
	       var positionId=document.forms[0].employeePositionId;
	       
	       var divName=document.getElementById("divName");
	       var divAge=document.getElementById("divAge");
	       var divBirthday=document.getElementById("divBirthday");
	       var divSpeciality=document.getElementById("divSpeciality");
	       var divMobile=document.getElementById("divMobile");
	       var divFamilyAddress=document.getElementById("divFamilyAddress");
	       var divEmail=document.getElementById("divEmail");
	       var divQq=document.getElementById("divQq");
	       var divPost=document.getElementById("divPostCode");
	       var divSkills=document.getElementById("divSkills");
	       var divPosition=document.getElementById("divPosition");



	      
	       var emailStr=/^[-_A-Za-z0-9]+@([_A-Za-z0-9]+\.)+[A-Za-z0-9]{2,3}$/;
	       if(name.value.length==0){
	        divName.innerHTML="";
	         divName.innerHTML="<font color='red'>姓名不能为空</font>";
	         return false;
	         }
	        if(age.value.length==0){
	         divAge.innerHTML="";
	         divAge.innerHTML="<font color='red'>年龄不能为空</font>";
	         return false;
	        }
            if(isNaN(age.value)){
            divAge.innerHTML="<font color='red'>年龄必须为数字</font>";
	        return false;
	        }
            if(birthday.value.length==0){
             divBirthday.innerHTML="";
             divBirthday.innerHTML="<font color='red'>出生日期不能为空!</font>";
	         return false;
	        }
	        if(speciality.value.length==0){
	          divSpeciality.innerHTML="";
	          divSpeciality.innerHTML="<font color='red'>专业不能为空!</font>";
	          return false;
	        }
	        if(mobile.value.length==0){
    	     divMobile.innerHTML="";
	         divMobile.innerHTML="<font color='red'>手机号码不能为空!</font>";
	         return false;
	        }
	        if(isNaN(mobile.value)){
	         divMobile.innerHTML="";
	         divMobile.innerHTML="<font color='red'>手机号码必须为数字!</font>";
	         return false;
	        }
	        if(familyAddress.value.length==0){
	           divFamilyAddress.innerHTML="";
	           divFamilyAddress.innerHTML="<font color='red'>家庭住址不能为空!</font>";
	           return false;
	        }
	       if(email.value.length==0){
   	         divEmail.innerHTML="";
	         divEmail.innerHTML="<font color='red'>电子邮箱不能为空!</font>";
	         return false;
	        }
	       if(!(emailStr.test(email.value))){
	         divEmail.innerHTML="";
	         divEmail.innerHTML="<font color='red'>电子邮箱格式不正确!</font>";
	         return false;
	       }
	       if(qq.value.length==0){
    	      divQq.innerHTML="";
	          divQq.innerHTML="<font color='red'>QQ号码不能为空!</font>";
	          return false;
	        }
	       if(isNaN(qq.value)){
	       	  divQq.innerHTML="<font color='red'>QQ号码必须为数字!</font>";
	          return false;
	        }
	      if(postcode.value.length==0){
	         divPost.innerHTML="";
	         divPost.innerHTML="<font color='red'>邮政编码不能为空!</font>";
	         return false;
	      }
	      if(isNaN(postcode.value)){
	       	 divPost.innerHTML="<font color='red'>邮政编码必须为数字!</font>";
	         return false;
	       }
	      if(skill.value.length==0){
   	         divSkills.innerHTML="";
	         divSkills.innerHTML="<font color='red'>特长不能为空!</font>";
	         return false;
	       }
	     if(myFile.value.length==0){
	        alert("照片不能为空");
	        return false;
	        }
	     if(branchId.value==0){
	       divPosition.innerHTML="";
	       divPosition.innerHTML="<font color='red'>请选择部门和职位！</font>";
	       return false;
	      }
	      }
 </script>
  </head>
  
  <body  onload="inits()">
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
																<span class="STYLE3">你当前的位置</span>：档案管理&gt;&gt;修改档案
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
									  <html:form method="post" onsubmit="return checkDossier()"
			action="/Dossier?method=update&employeeId=${employee.employeeId}"
			enctype="multipart/form-data">
										<table border="0" cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td height="22" background="../images/bg.gif" colspan="4">&nbsp;
												 * 为必填项
												</td>
											</tr>
								             <tr>
					<td width="6%" height="30" class="td_LTR">
						姓&nbsp;&nbsp;&nbsp;&nbsp;名
					</td>
					<td width="30%" class="td_LTR">
						<html:text property="employeeName"
							onblur="checkNull(this,'divName','姓名')"
							value="${employee.employeeName }"></html:text>
						<div id="divName" style="display:inline">
							<font color="#003300">*&nbsp;</font>
						</div>
					</td>
					<td width="7%" class="td_LTR">
						性&nbsp;&nbsp;&nbsp;&nbsp;别
					</td>
					<td width="57%" class="td_LTE">
						<logic:equal name="employee" property="employeeSex" value="女">
							<input name="employeeSex" type="radio" value="男" />男
					      <input name="employeeSex" type="radio" value="女"
								checked="checked" />女
					     </logic:equal>
						<logic:equal name="employee" property="employeeSex" value="男">
							<input name="employeeSex" type="radio" value="男"
								checked="checked" />男
					      <input name="employeeSex" type="radio" value="女" />女
					     </logic:equal>
					</td>
				</tr>
				<tr>
					<td class="td_LTR">
						年&nbsp;&nbsp;&nbsp;&nbsp;龄
					</td>
					<td class="td_LTR">
						<html:text property="employeeAge"
							onblur="checkNull(this,'divAge','年龄')"
							value="${employee.employeeAge }"></html:text>
						<div id="divAge" style="display:inline">
							<font color="#003300">*&nbsp;</font>
						</div>
					</td>
					<td class="td_LTR">
						民&nbsp;&nbsp;&nbsp;&nbsp;族
					</td>
					<td height="30" class="td_LTE">
						<html:select property="employeeNation">
					          ${nationString }
					        </html:select>
						<div id="Layer1"
							style="position:absolute;width:231px;height:21px;z-index:2;left: 877px;top: 192px;">
							<html:file property="myFile" value="${employee.employeePhoto }"
								onchange="javascript:showImage(this.value)"></html:file>
						</div>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						出生日期
					</td>
					<td class="td_LTR">
						<html:text property="employeeBirthday"
							onblur="checkNull(this,'divBirthday','出生日期')"
							value="${employee.employeeBirthday }"></html:text>
						<img src="../image/datetime.gif" style="CURSOR: hand"
							onclick="fPopUpCalendarDlg(employeeBirthday);return false"
							alt="请选择日期" align="absmiddle" width="16" height="15" />
						<div id="divBirthday" style="display:inline">*</div>


						<div id="divPhoto"
							style="	position:absolute;width:126px;height:115px;z-index:1;left: 878px;top: 28px; border:#CCCCCC 1px solid">
							<img id="imagep" src="../upload/${employee.employeePhoto }"
								width="129" height="158" />
						</div>
					</td>
					<td class="td_LTR">
						出 生 地
					</td>
					<td class="td_LTE">
						<html:text property="employeeBirthPlace"
							onblur="checkNull(this,'divBirthPlace','出生地')"
							value="${employee.employeeBirthPlace }"></html:text>
						<div id="divBirthPlace" style="display:inline">
							<font color="#003300">*&nbsp;</font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						专&nbsp;&nbsp;&nbsp;&nbsp;业
					</td>
					<td class="td_LTR">
						<html:text property="employeeSpeciality"
							onblur="checkNull(this,'divSpeciality','专业')"
							value="${employee.employeeSpeciality }"></html:text>
						<div id="divSpeciality" style="display:inline">
							<font color="#003300">* </font>
						</div>
					</td>
					<td class="td_LTR">
						学&nbsp;&nbsp;&nbsp;&nbsp;历
					</td>
					<td class="td_LTE">
						<html:select property="empolyeeDegree">
								${degreeString }
							</html:select>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						手机号码
					</td>
					<td class="td_LTR">
						<html:text property="employeeMobile"
							onblur="checkNull(this,'divMobile','手机号码')"
							value="${employee.employeeMobile }"></html:text>
						<div id="divMobile" style="display:inline">
							<font color="#003300">* </font>
						</div>
					</td>
					<td class="td_LTR">
						住&nbsp;&nbsp;&nbsp;&nbsp;址
					</td>
					<td class="td_LTE">
						<html:text property="employeeAddress"
							onblur="checkNull(this,'divAddress','住址')"
							value="${employee.employeeAddress }"></html:text>
						<div id="divAddress" style="display:inline">
							<font color="#003300"><br></font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						家庭住址
					</td>
					<td class="td_LTR">
						<html:text property="employeeFamilyAddress"
							onblur="checkNull(this,'divFamilyAddress','家庭住址')"
							value="${employee.employeeFamilyAddress }"></html:text>
						<div id="divFamilyAddress" style="display:inline">
							<font color="#003300">*&nbsp;</font>
						</div>
					</td>
					<td class="td_LTR">
						家庭电话
					</td>
					<td class="td_LTE">
						<html:text property="employeeFamilyphone"
							onblur="checkNull(this,'divFamilyPhone','家庭电话')"
							value="${employee.employeePhone }"></html:text>
						<div id="divFamilyPhone" style="display:inline">
							<font color="#003300">*&nbsp;</font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						Emial
					</td>
					<td class="td_LTR">
						<html:text property="employeeEmail"
							onblur="checkNull(this,'divEmail','邮箱')"
							value="${employee.employeeEmail }"></html:text>
						<div id="divEmail" style="display:inline">
							<font color="#003300">*</font>
						</div>
					</td>
					<td class="td_LTR">
						政治面貌
					</td>
					<td class="td_LTE">
						<html:select property="employeePolity">
							${polityString }
						</html:select>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						QQ号码
					</td>
					<td class="td_LTR">
						<html:text property="employeeQq"
							onblur="checkNull(this,'divQQ','QQ号码')"
							value="${employee.employeeQq }"></html:text>
						<div id="divQQ" style="display:inline">
							<font color="#003300">*&nbsp;</font>
						</div>
					</td>
					<td class="td_LTR">
						职&nbsp;&nbsp;&nbsp;&nbsp;位
					</td>
					<td class="td_LTE">
						<input type="hidden" value="${employee.position.positionId }"
							name="employeePositionId">
						${employee.position.branch.branchName }
						${employee.position.positionName }
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						邮政编码
					</td>
					<td class="td_LTR">
						<html:text property="employeePostcode"
							onblur="checkNull(this,'divPostCode','邮政编码')"
							value="${employee.employeePostcode }"></html:text><br></td>
					<td class="td_LTR">
						爱&nbsp;&nbsp;&nbsp;&nbsp;好
					</td>
					<td class="td_LTE">
						<html:text property="employeeHobby"
							onblur="checkNull(this,'divHobby','爱好')"
							value="${employee.employeeHobby }"></html:text>
						<div id="divHobby" style="display:inline">
							<font color="#003300">*&nbsp;</font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="30" class="td_LTR">
						特&nbsp;&nbsp;&nbsp;&nbsp;长
					</td>
					<td colspan="3" class="td_LTE">
						<html:text property="employeeSkills"
							onblur="checkNull(this,'divSkills','特长')" size="45"
							value="${employee.employeeSkills }"></html:text>
						<div id="divSkills" style="display:inline">
							<font color="#003300">*</font>
						</div>
					</td>
				</tr>

				<tr>
					<td height="30" class="td_LTR">
						备&nbsp;&nbsp;&nbsp;&nbsp;注
					</td>
					<td colspan="3" class="td_LTE">
						<html:textarea property="employeeRemark"
							onblur="checkNull(this,'divRemark','备注')" cols="70" rows="5"
							value="${employee.employeeRemark }"></html:textarea>
						<div id="divRemark" style="display:inline">
							<font color="#003300">* 备注不能为空</font>
						</div>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="4" align="center" class="td_LTRB">
						<html:submit value="确认信息无误，提交"></html:submit>
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
