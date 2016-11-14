<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="com.ZG.model.userTable,com.ZG.service.updateUserData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>deal-modifyUserData.jsp</title>
</head>
<body>
	<jsp:useBean id="userTable" class="com.ZG.model.userTable"></jsp:useBean>
	<jsp:setProperty property="username" name="userTable" param="username"></jsp:setProperty>
	<jsp:setProperty property="birthday" name="userTable" param="birthday"></jsp:setProperty>
	<jsp:useBean id="updateUserData" class="com.ZG.service.updateUserData"></jsp:useBean>
	<%
		userTable u=(userTable)session.getAttribute("user");
		userTable.setId(u.getId());
		if(updateUserData.updateUser(userTable)==false){
			out.print("error");
		}
	%>
</body>
</html>