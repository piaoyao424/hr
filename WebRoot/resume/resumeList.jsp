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
		<script type="text/javascript">
		 function deleteTo(id){
				  if(window.confirm("你确认要删除吗？")){
				    window.location.href="employ.do?method=deleteResume&id="+id;
				  }
				}
		function locationTo(){
		   var pageNum=document.getElementById("txtPage").value;
		    if(pageNum.length==0){
		     alert("不能为空");
		    }else if(isNaN(pageNum)){
	        alert("必须为数字");
	       }else if(pageNum<0){
	        alert("页数必须大于0");
	       }else if(pageNum>${totalPage}){
	        alert("必须小于总页数");
	       }else{
		     window.location.href="employ.do?method=getListResume&page="+pageNum;
		   }
		  }
	</script>
	    <style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE4 {color: #03515d;
	font-size: 12px;
}
-->
        </style>
</head>

	<body>
	<table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0" style="table-layout:fixed;">
      <tr>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="../images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="12" height="30"><img src="../images/tab_03.gif" width="12" height="30" /> </td>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0"
														cellpadding="0">
                              <tr>
                                <td width="5%"><div align="center"> <img src="../images/tb.gif" width="16" height="16" /> </div></td>
                                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：简历管理&gt;&gt;简历列表 </td>
                              </tr>
                          </table></td>
                          <td width="54%">&nbsp;</td>
                        </tr>
                    </table></td>
                    <td width="16"><img src="../images/tab_07.gif" width="16" height="30" /> </td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="8" background="../images/tab_12.gif">&nbsp;</td>
                    <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                          <td height="30" colspan="6" class="td_LTBG_TOP">&nbsp;</td>
                        </tr>
                        <tr>
                          <td width="118" class="td_LTR"> 简历编号 </td>
                          <td width="151" height="30" class="td_LTR"> 姓名 </td>
                          <td width="178" class="td_LTR"> 收到简历时间 </td>
                          <td width="176" class="td_LTR"> 联系电话 </td>
                          <td width="172" class="td_LTR"> 是否通知面试 </td>
                          <td width="398" class="td_LTE"> 操作 </td>
                        </tr>
                        <logic:empty name="resumeList">
                          <tr>
                            <td colspan="6" align="center" class="td_LTRB"><font color="red">暂无数据！</font> </td>
                          </tr>
                        </logic:empty>
                        <logic:notEmpty name="resumeList">
                          <logic:iterate id="resume" name="resumeList">
                            <tr>
                              <td class="td_LTR" height="30"> ${resume.resumeId } </td>
                              <td class="td_LTR"> ${resume.personName } </td>
                              <td class="td_LTR">
                              <bean:write name="resume" property="resumeTime" format="yyyy-MM-dd"/>
                               </td>
                              <td class="td_LTR"> ${resume.resumePhone } </td>
                              <td class="td_LTR"><logic:equal value="1" name="resume" property="resumeCheckStatus"> 是 </logic:equal>
                                  <logic:equal value="0" name="resume" property="resumeCheckStatus"> 否 </logic:equal>
                              </td>
                              <td class="td_LTE"><img src="../images/icon2_090.png" width="16" height="16"
								align="absmiddle" /> <a
								href="../employ.do?method=getResumeById&id=${resume.resumeId }">详细信息</a>&nbsp; <img src="../images/delete.gif" width="16" height="16" border="0"
								align="absmiddle" /> <a href="javascript:deleteTo(${resume.resumeId })">删除</a> </td>
                            </tr>
                          </logic:iterate>
                          <tr>
                            <td height="30" colspan="7" align="right" class="td_LTRB">&nbsp;共有 ${count } 条记录，当前第 ${curPage }/${totalPage } 页&nbsp;&nbsp; <a href="../employ.do?method=getListResume"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" /> </a>&nbsp;
                                <logic:notEqual value="1" name="curPage"> <a href="../employ.do?method=getListResume&page=${curPage-1 }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" /> </a>&nbsp; </logic:notEqual>
                                <logic:notEqual value="${totalPage }" name="curPage"> <a href="../employ.do?method=getListResume&page=${curPage+1 }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" /> </a>&nbsp; </logic:notEqual>
                                <a href="../employ.do?method=getListResume&page=${totalPage }"><img
								src="../images/last.gif" width="37" height="15"
								align="absmiddle" border="0" /> </a>&nbsp;转到第
                              <input name="txtPage" type="text" size="4"
							style="height:15px; width:20px; border:1px solid #999999;"
							id="txtPage" />
                              页 <a href="javascript:locationTo()"><img src="../images/go.gif"
								width="37" height="15" align="absmiddle" border="0" /> </a> </td>
                          </tr>
                        </logic:notEmpty>
                      </table>                    </td>
                    <td width="8" background="../images/tab_15.gif">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td height="35" background="../images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="12" height="35"><img src="../images/tab_18.gif" width="12" height="35" /> </td>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td class="STYLE4">&nbsp;&nbsp; </td>
                          <td>&nbsp;</td>
                        </tr>
                    </table></td>
                    <td width="16">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table>
</body>
</html>
