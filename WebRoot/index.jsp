<%@ page language="java"  pageEncoding="UTF-8"%>
<%--<%@ include file="checkUser.jsp"%>--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>人力资源管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script>
	var ad_tl_width=930;
	var ad_tl_height=80;
	var ad_full_height=300;
	var screenwidth=1024;
	if(screen.width < screenwidth)
	{
	  ad_tl_width=760;
	  ad_tl_height=80;
	  ad_full_height=245;
	  document.write ('<style type="text/css">.ch_right{display="none";}</style>');
	  document.write ('<style type="text/css">.linktable{width: 760px;;}</style>');
	}
	else
	{
	  document.write ('<style type="text/css">.linktable{width: 930px;}</style>');
	}
	</script>
  </head>
  
 <frameset rows="96,*,10" cols="*" framespacing="0" frameborder="no" border="0">
  <frame src="top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset rows="*" cols="125,882">
    <frame src="left2.jsp" scrolling="no"/>
    <frame src="center.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
  
  <frame src="down.jsp" name="bottomFrame" scrolling="no" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset>
<noframes><body>
</body>
</noframes>
</html>
