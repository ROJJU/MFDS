<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr"/>
<title>관리자</title>
<link rel="shortcut icon" href="http://www.k-gmp.co.kr/favicon.ico"/>
<link href="/resources/css/admin/style_admin.css" rel="stylesheet" type="text/css"/>
</head>
<script language="javascript">
<!--
function sendit() {
    var form=document.login_form;
	if(form.admin_userid.value=="") {
	    alert("관리자 아이디를 입력해 주십시오.");
		form.admin_userid.focus();
	} else if(form.admin_passwd.value=="") {
	    alert("관리자 비밀번호를 입력해 주십시오.");
		form.admin_passwd.focus();
	} else {
	    form.submit();
	}
}

function inputSendit() {
	if(event.keyCode==13) { 
		sendit();
	}
}
//-->
</script>
<body onload="document.login_form.admin_userid.focus();">
<table width="100%" border="0" height="100%" cellspacing="0" cellpadding="0" >
<tr>
<td height="70px;">

</td>
</tr>
<tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0" background="/resources/img/admin/login_bg.gif">
          <tr>
            <td width="50%" height="390" ></td>
            <td width="450" align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="154" ><img src="/resources/img/admin/key.gif" ></td>
                  <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="49" valign="top"><img src="/resources/img/admin/login_title.gif"></td>
                    </tr>
                    <tr>
                      <td valign="top">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
						<form name="login_form" method="post" action="/AdminLoginProc.do" onsubmit="inputSendit();event.returnValue = false;">
	                        <tr>
	                          <td width="30" height="23"><img src="/resources/img/admin/login_ID.gif"></td>
	                          <td width="187"><input type="text" name="admin_userid" id="textfield" class="form" tabindex="1"></td>
	                          <td rowspan="3"><a href="javascript:sendit();" onfocus="this.blur()"><img src="/resources/img/admin/login_button.gif" border="0" alt="로그인"></a></td>
	                        </tr>
	                        <tr>
	                          <td height="4"></td>
	                          <td></td>
	                          </tr>
	                        <tr>
	                          <td><img src="/resources/img/admin/login_PW.gif"></td>
	                          <td><input type="password" name="admin_passwd" id="textfield2" class="form" onKeyDown="inputSendit();"  tabindex="2"></td>
                            </tr>
						  </form>
                      </table>
                                                </td>
                    </tr>
                    <tr>
                      <td height="21">&nbsp;</td>
                    </tr>
                    <tr>
                      <td><img src="/resources/img/admin/login_story.gif"></td>
                    </tr>
                  </table></td>
                  </tr>
                
                <tr>
                  <td height="60">&nbsp;</td>
                  <td>&nbsp;</td>
                  </tr>
                <tr>
                  <td colspan="2" align="center"> copyright ⓒ <span class="s_txt1">K-GMP </span>. All rights reserved. </td>
                  </tr>
            </table></td>
            <td width="50%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
</tr>
</table>
</body>
</html>

