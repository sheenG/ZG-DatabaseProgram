<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Sign</title>
	<link rel="stylesheet" type="text/css" href="css/Sign_style.css"/>
	<script type="text/javascript" src="js/sign.js"></script>
</head>

<body background=source/signbgcolor1.jpg onKeyDown ="judgeKey()" >
	<div class="content">
		<!-- 登录面板 -->
		<div class="panel" ><center>
			<img src="source/sign-logo.png" alt="sign-logo" width="200" height="90" />
			</center><br>
			<br>
			<!-- 昵称帐号密码组 -->
			<form id="form2" action = "deal-sign.jsp" name="Login">
				<div class="group" >
					<nobr>
						<font size=4><strong><i>昵称：</i></strong></font>
						<input id="username" name="username" 
							style="display:inline" onfocus="focusNiCheng()" onblur="checkNiCheng()">&nbsp;&nbsp;&nbsp;
						<a style="font-size:12px; display:none;font-weight:bold;" id="hint1" ></a>
					</nobr>
				</div>
				
				<div class="group">
					<nobr>
						<font size=4><strong><i>帐号：</i></strong></font>
						<input id="id" name="id" 
							style="display:inline" onfocus="focusId()" onblur="checkId()">&nbsp;&nbsp;&nbsp;
						<a style="font-size:12px; display:none;font-weight:bold;" id="hint2" ></a>
					</nobr>
				</div>
				
				<div class="group">
					<nobr>
						<font size=4><strong><i>密码：</i></strong></font>
						<input id="password" type="password" name="password" 
							style="display:inline" onfocus="focusPw()" onblur="checkPw()">&nbsp;&nbsp;&nbsp;
						<a style="font-size:12px; display:none;font-weight:bold;" id="hint3" ></a>
					</nobr>
				</div>
			</form>
			
				<div class="judge">
					<nobr>
						<font size=4><strong><i>验证密码：</i></strong></font>
						<input id="password2" type="password" name="password2" 
							style="display:inline" onfocus="focusPw2()" onblur="checkPw2()">&nbsp;&nbsp;&nbsp;
						<a style="font-size:12px; display:none;font-weight:bold;" id="hint4" ></a>
					</nobr>
				</div>
			<br>
			
			<div class="sign">
				<center>
					<button onclick="submit()">提交</button>
				</center>
			</div>
		</div>
	</div>
</body>

</html>