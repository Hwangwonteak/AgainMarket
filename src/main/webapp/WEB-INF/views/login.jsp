<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#### 로그인 ####</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/login/login.js"></script>

</head>
<body>
<center>
	<div class="login_outbox">
	<form action="loginOk" name="login_frm" method="post">
	<div class="login_no1">
			<img id="logo" src="${pageContext.request.contextPath}/resources/img/logo.png"
			 width="320" height="160" align="center" border="0" style="margin:35px 0 20px 0;">
	
	    <div class="mb-2">
	      <input type="text" id="#" class="btn_login_no1" placeholder="아이디" name="id">
	    </div>
	    <div class="mb-3">
	      <input type="password" id="pw" class="btn_login_no1" placeholder="비밀번호" name="pwd" onkeydown='mykeydown()'>
	    </div>
	    
	    <div class="mb-3">
	      
	    </div>
		 <div class="d-grid gap-2">
  			<input class="btn" type="button" value="로그인" onclick="loginCheck()">
		</div>
		<div class="d-grid gap-2">
  			<input class="btn" type="button" value="회원가입" onclick="script:window.location='join'">
		</div>
		<div>
			<input class="btn_searchId" type="button" value="아이디 찾기" onclick="script:window.location='findId'">
		</div>
		<div>
			<input class="btn_searchPw" type="button" value="비밀번호 찾기" onclick="script:window.location='findPw'"/>
		</div>
	</form>
		
	</div>

	<div class="wqb_write">
		앱을 다운로드하세요.	
	</div>
	<div class="wqb_box">
		<a href="https://play.google.com/store/apps"><img src="https://static.cdninstagram.com/rsrc.php/v3/ye/r/UtJtFmFLCiD.png"
		 width="180" height="50" align="center" border="0"></a>
		<a href="ms-windows-store://pdp/"><img src="https://static.cdninstagram.com/rsrc.php/v3/yw/r/LBxTdceDfgS.png"
		 width="180" height="50" align="center" border="0"></a>	
	</div>
	</div>
	</center>

<script>
function mykeydown() {
	if(event.keyCode == 13){
		loginCheck();
		return;
	}
}
</script>
	
</body>
</html>