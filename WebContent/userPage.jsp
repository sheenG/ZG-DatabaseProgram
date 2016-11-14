<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userPage</title>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<frameset border=1px rows="7%,1%,*">
	<frame noresize="noresize" src="userTop.jsp">
	<frame noresize="noresize">
	<frameset cols="17%,*">
		<frame noresize="noresize" src="userBR.jsp">
		<frame noresize="noresize" src="userBottom.jsp" name="userBottom">
	</frameset>
</frameset>
<body>
	
</body>
</html>