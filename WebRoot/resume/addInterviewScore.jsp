<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/inhead.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<html:base />
		<title>My JSP 'addExamScore.html.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="../js/style.css" type="text/css"></link>
		<script type="text/javascript">
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
			     window.location.href="employ.do?method=getList2&page="+pageNum;
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
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
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
																	<span class="STYLE3">你当前的位置</span>：招聘管理 &gt;&gt;
																	招聘考试信息管理&gt;&gt;添加考试信息
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
											<table width="100%" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="30" colspan="3" class="td_LTBG_TOP">
														&nbsp;
													</td>
												</tr>
												<tr>
													<td height="30" colspan="3" align="center" class="td_LTRB">
														<form action="" method="post" name="">
															按姓名查询：
															<input name="Input" type="text" />
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<input name="submit" type="submit" value="查询"
																class="bt_four" />
														</form>
													</td>
												</tr>
												<tr>
													<td width="22%" height="30" class="td_LTR">
														编号
													</td>
													<td width="20%" class="td_LTE">
														姓名
													</td>
													<td width="58%" class="td_LTE">
														录入面试成绩
													</td>
												</tr>
												<logic:empty name="examInterviewList">
													<tr>
														<td colspan="3" height="30" align="center" class="td_LTRB">
															<font color="red">暂无数据！</font>
														</td>
													</tr>
												</logic:empty>
												<logic:notEmpty name="examInterviewList">
													<logic:iterate id="examInterview" name="examInterviewList">
														<tr>
															<td height="30" class="td_LTR">
																${examInterview.eiId }
															</td>
															<td class="td_LTE">
																${examInterview.eiName }
															</td>
															<td class="td_LTE">
																<a
																	href="../employ.do?method=getById&type=1&id=${examInterview.eiId }">录入面试成绩</a>
															</td>
														</tr>
													</logic:iterate>
													<tr>
														<td height="30" colspan="3" align="right" class="td_LTRB">
															&nbsp;共有 ${count } 条记录，当前第 ${curPage }/${totalPage }
															页&nbsp;&nbsp;
															<a href="../employ.do?method=getList2&page=${curPage }"><img
																	src="../images/first.gif" width="37" height="15"
																	align="absmiddle" border="0" /> </a>&nbsp;
															<logic:notEqual value="1" name="curPage">
																<a
																	href="../employ.do?method=getList2&page=${curPage-1 }"><img
																		src="../images/back.gif" width="43" height="15"
																		align="absmiddle" border="0" /> </a>&nbsp; </logic:notEqual>
															<logic:notEqual value="${totalPage }" name="curPage">
																<a
																	href="../employ.do?method=getList2&page=${curPage+1 }"><img
																		src="../images/next.gif" width="43" height="15"
																		align="absmiddle" border="0" /> </a>&nbsp; </logic:notEqual>
															<a href="../employ.do?method=getList2&page=${totalPage }"><img
																	src="../images/last.gif" width="37" height="15"
																	align="absmiddle" border="0" /> </a>&nbsp;转到第
															<input name="txtPage" type="text" size="4"
																style="height:15px; width:20px; border:1px solid #999999;"
																id="txtPage" />
															页
															<a href="javascript:locationTo()"><img
																	src="../images/go.gif" width="37" height="15"
																	align="absmiddle" border="0" /> </a>
														</td>
													</tr>
												</logic:notEmpty>
											</table>
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
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
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
</html>
