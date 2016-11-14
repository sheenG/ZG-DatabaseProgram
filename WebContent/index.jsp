<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/Login_style.css"/>

<script>

function login()
{
	document.getElementById('form1').submit();
}

function judgeKey()
{
	if(event.keyCode ==13)
		login();
}
</script>


</head>

<body background=source/bgcolor1.jpg onKeyDown ="judgeKey()">
	<div class="content">
		
		<!-- 登录面板 -->
		<div class="panel">
			<img src="source/logo.png" alt="logo"/>
			<br>
			<!-- 昵称帐号密码组 -->
			<form id="form1" action = "deal-index.jsp" name="Login">
				<div class="group">
					<input placeholder="帐号" name="id">
				</div>
				<div class="group">
					<input placeholder="密码" type="password" name="password">
				</div>
			</form>
			
			<div class="login">
				<button onclick="login()">登录</button>
			</div>
			
		</div>
		<!-- 注册按钮 -->
		
			<div class="register">
				<button onclick="window.location.href='sign.jsp'">创建新帐号</button>
			</div>
		
	</div>

</body>
</html>