<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'top.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
			 function outTo(){
				  if(window.confirm("你确认要退出吗？")){
<%--				    window.close();--%>
<%--				    window.open("user.do?method=userOut");--%>
<%--				    window.location.href="user.do?method=userOut";--%>
                        window.open("login.jsp");
				  }
				}
	</script>
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE2 {font-size: 9px}
.STYLE3 {
	color: #033d61;
	font-size: 12px;
}
-->
</style>
  </head>
  
  <body>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="70" background="images/main_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="24" background="images/main_03.gif">&nbsp;</td>
            <td width="505" background="images/main_04.gif">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="21"><img src="images/main_07.gif" width="21" height="24"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="38" background="images/main_09.gif">&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="77%" height="25" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="50" height="19"><div align="center"><a href="index.jsp" target="_parent"><img src="images/main_12.gif" width="49" height="19" border="0"></a></div></td>
                    <td width="50"><div align="center"><a href="javascript:history.go(-1)"><img src="images/main_14.gif" width="48" height="19" border="0"></a></div></td>
                    <td width="50"><div align="center"><a href="javascript:history.go(1)"><img src="images/main_16.gif" width="48" height="19" border="0"></a></div></td>
                    <td width="50"><div align="center"><a href="javascript:window.location.reload()" target="mainFrame"><img src="images/main_18.gif" width="48" height="19" border="0"></a></div></td>
                    <td width="50"><div align="center"><a href="javascript:if(window.confirm('你确认要退出吗？')) window.location.replace('login.jsp');" target="_parent"><img src="images/main_20.gif" width="48" height="19" border="0"></a></div></td>
                    <td width="26"><div align="center"><img src="images/main_21.gif" width="26" height="19"></div></td>
                    <td width="100"><a href="updatePassword.jsp" target="mainFrame"><img src="images/main_22.gif" width="98" height="19" border="0"></a></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
                  </td>
                <td width="270" valign="bottom"  nowrap="nowrap">
                <div align="right">
                 <span class="STYLE1" id="showDate">
                 <script type="text/javascript">
                 var time=new Date();
                 var year=time.getYear();
                 var month=time.getMonth();
                 var date=time.getDate();				
				 var hour=time.getHours();
				 var minute=time.getMinutes();
				 var second=time.getSeconds();
				 document.write("今天是："+year+"年"+month+"月"+date+"日        ");
				 document.write("现在时间："+hour+"时"+minute+"分"+second+"秒");
                 </script>
                 </span>
                 </div></td>
              </tr>
            </table></td>
            <td width="21"><img src="images/main_11.gif" width="21" height="38"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="8" style=" line-height:8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" background="images/main_29.gif" style=" line-height:8px;">&nbsp;</td>
            <td width="505" background="images/main_30.gif" style=" line-height:8px;">&nbsp;</td>
            <td style=" line-height:8px;">&nbsp;</td>
            <td width="21" style=" line-height:8px;"><img src="images/main_31.gif" width="21" height="8"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="28" background="images/main_36.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" height="28" background="images/main_32.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20%"  height="22">&nbsp;</td>
            <td width="59%" valign="bottom"><div align="center" class="STYLE1">当前用户：${sessionScope.USER.userName }</div></td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="28">&nbsp;</td>
          </tr>
        </table></td>
        <td width="21"><img src="images/main_37.gif" width="21" height="28"></td>
      </tr>
    </table></td>
  </tr>
</table>
  </body>
</html>
