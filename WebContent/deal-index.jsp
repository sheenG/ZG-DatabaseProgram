<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>deal-Login.jsp</title>
</head>
<body>
<jsp:useBean id = "user" class="com.ZG.model.userTable"></jsp:useBean>
<jsp:useBean id ="judgeLogin" class="com.ZG.service.judgeLogin"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<%
	if(judgeLogin.judgeUser(user)){
		session.setAttribute("user",user);
		%>
		<jsp:forward page="userPage.jsp"></jsp:forward>
		<%
	}else{
		%>
		 <script type="text/javascript">
			alert("帐户或密码错误，请重新登录！");
			window.location.href="index.jsp"; 
		</script>
	<%
	}
%>
</body>
</html>