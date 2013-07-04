<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/inhead.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'employManager.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript">
			 function deleteTo(id){
			  if(window.confirm("你确认要删除吗？")){
			    window.location.href="employ.do?method=deleteExamInterview&id="+id;
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
			     window.location.href="employ.do?method=getList&page="+pageNum;
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
	<table width="100%" height="63%" border="0" cellpadding="0"
		cellspacing="0" style="table-layout:fixed;">
      <tr>
        <td height="280" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：招聘管理 &gt;&gt; 录用管理 </td>
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
                    <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="30" colspan="7" class="td_LTBG_TOP">  </td>
                        </tr>
                        <tr>
                          <td height="28" colspan="7" class="td_LTRB"><img src="../images/22.gif" border="0" align="absmiddle" /> <a href="../employ.do?method=getList2">点击录入面试成绩</a> </td>
                        </tr>
                        <tr>
                          <td height="30" colspan="7" class="td_LR"><form id="empolySearchForm" name="empolySearchForm" method="post"
						action="">
                            按考试成绩查找：
                            <input name="score" type="text" size="8" />
            <input name="submit" type="submit" class="bt_four" value="查询" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input name="reset" type="reset" class="bt_four" value="重置" />
                          </form></td>
                        </tr>
                        <tr>
                          <td width="14%" height="30" class="td_LTR"> 姓名 </td>
                          <td width="14%" class="td_LTR"> 笔试成绩 </td>
                          <td width="15%" class="td_LTR"> 参加考试时间 </td>
                          <td width="15%" class="td_LTR"> 应聘职位 </td>
                          <td width="15%" class="td_LTR"> 审核状态 </td>
                          <td width="27%" colspan="2" class="td_LTE">操作</td>
                        </tr>
                        <logic:empty name="examInterviewList">
                          <tr>
                            <td colspan="7" align="center" class="td_LTRB"><font color="red">暂无数据！</font> </td>
                          </tr>
                        </logic:empty>
                        <logic:notEmpty name="examInterviewList">
                          <logic:iterate id="examInterview" name="examInterviewList">
                            <tr>
                              <td height="30" class="td_LTR">
                                <bean:write name="examInterview" property="eiName"/>
                               </td>
                              <td height="30" class="td_LTR">
                                 <bean:write name="examInterview" property="eiGrade"/>
                                 </td>
                              <td class="td_LTR"> 
                                <bean:write name="examInterview" property="eiInterviewTime"  format="yyyy-MM-dd"/>
                               </td>
                              <td class="td_LTR">
                                  <bean:write name="examInterview" property="position.positionName"/>
                              </td>
                              <td class="td_LTR"><logic:equal value="1" name="examInterview"
								property="eiInterviewStatus"> 已审核 </logic:equal>
                                  <logic:equal value="0" name="examInterview"
								property="eiInterviewStatus"> 未审核 </logic:equal>
                              </td>
                              <td colspan="2" class="td_LTE"><img src="../images/icon2_090.png" width="16" height="16"
								align="absmiddle" /> <a href="../employ.do?method=getById&id=${examInterview.eiId }">详细信息</a> <img src="../images/delete.gif" width="16" height="16" border="0"
								align="absmiddle" /> <a href="javascript:deleteTo(${examInterview.eiId})">删除</a> </td>
                            </tr>
                          </logic:iterate>
                          <tr>
                            <td height="30" colspan="7" align="right" class="td_LTRB">&nbsp;共有 ${count } 条记录，当前第 ${curPage }/${totalPage } 页&nbsp;&nbsp; <a href="../employ.do?method=getList&page=${curPage }"><img
								src="../images/first.gif" width="37" height="15"
								align="absmiddle" border="0" /> </a>&nbsp;
                                <logic:notEqual value="1" name="curPage"> <a href="../employ.do?method=getList&page=${curPage-1 }"><img
									src="../images/back.gif" width="43" height="15"
									align="absmiddle" border="0" /> </a>&nbsp; </logic:notEqual>
                                <logic:notEqual value="${totalPage }" name="curPage"> <a href="../employ.do?method=getList&page=${curPage+1 }"><img
									src="../images/next.gif" width="43" height="15"
									align="absmiddle" border="0" /> </a>&nbsp; </logic:notEqual>
                                <a href="../employ.do?method=getList&page=${totalPage }"><img
								src="../images/last.gif" width="37" height="15"
								align="absmiddle" border="0" /> </a>&nbsp;转到第
                              <input name="txtPage" type="text" size="4"
							style="height:15px; width:20px; border:1px solid #999999;"
							id="txtPage" />
                              页 <a href="javascript:locationTo()"><img src="../images/go.gif"
								width="37" height="15" align="absmiddle" border="0" /> </a> </td>
                          </tr>
                        </logic:notEmpty>
                      </table></td>
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
