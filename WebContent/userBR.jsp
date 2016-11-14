<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userBR.jsp</title>
<link rel="stylesheet" type="text/css" href="css/userBR.css"/>
<script type="text/javascript" src="js/userBR.js"></script>
</head>
<body bgcolor=#1A2E39 >
	<br>
	<div style="color:#5A879D"><font size=2px>Naviation</font></div>
	<br>
	<div class="panel" onmouseover="this.style.backgroundColor='#172329'"
	onmouseout="this.style.backgroundColor='#1A2E39'">
		<img src="source/userInfo.png" align="absmiddle" alt="userInfo.png" height="20" width="20"/>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="userData.jsp" target="userBottom">帐户信息</a>
	</div>
	
	<div class="panel" onmouseover="this.style.backgroundColor='#172329'"
	onmouseout="this.style.backgroundColor='#1A2E39'">
		<img src="source/warehouse.png" align="absmiddle" alt="warehouse.png" height="20" width="20"/>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="warehouseData.jsp" target="userBottom">持仓信息</a>
	</div>
	
	<div class="panel" onmouseover="this.style.backgroundColor='#172329'"
	onmouseout="this.style.backgroundColor='#1A2E39'">
		<img src="source/charge.png" align="absmiddle" alt="charge.png" height="20" width="20"/>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="charge.jsp" target="userBottom">帐号充值</a>
	</div>

	<div class="panel" onmouseover="this.style.backgroundColor='#172329'"
	onmouseout="this.style.backgroundColor='#1A2E39'">
		<img src="source/modifyPassword.png" align="absmiddle" alt="modifyPassword.png" height="20" width="20"/>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="modifyPassword.jsp" target="userBottom">交易记录</a>
	</div>
	
	<div class="panel" onmouseover="this.style.backgroundColor='#172329'"
	onmouseout="this.style.backgroundColor='#1A2E39'">
		<img src="source/sign-up.png" align="absmiddle" alt="sign-up.png" height="20" width="20"/>
		&nbsp;&nbsp;&nbsp;&nbsp;<a href="sign-up.jsp" target="userBottom">注册证券帐号</a>
	</div>
	
	<div class="panel" onmouseover="this.style.backgroundColor='#172329'"
	onmouseout="this.style.backgroundColor='#1A2E39'">
		<img src="source/exit.png" align="absmiddle" alt="exit.png" height="20" width="20"/>
		&nbsp;&nbsp;&nbsp;&nbsp;<a onclick="exit()">退出...</a>
	</div>
</body>
</html>
