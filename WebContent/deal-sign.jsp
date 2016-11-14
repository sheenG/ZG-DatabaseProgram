<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>deal-sign.jsp</title>
<script type="text/javascript" src="js/sign.js"></script>
</head>

<body>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="com.ZG.model.userTable"></jsp:useBean>
<jsp:setProperty property="*" name="user"></jsp:setProperty>
<jsp:useBean id="signService" class="com.ZG.service.signService"></jsp:useBean>
<% 
	int ok=signService.addUser(user);
	if(ok==1){

	%>
		<script type="text/javascript"> 
			
		</script>
		<jsp:forward page="index.jsp"></jsp:forward>
	<%
	}else {
		%>
		<script type="text/javascript">
			alert("账户已存在，请重新注册！");
			window.location.href="sign.jsp"; 
		</script>
		<%
	}
%>
</body>
</html>