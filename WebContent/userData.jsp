<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="com.ZG.model.userTable,com.ZG.service.queryUser"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userData</title>
<link rel="stylesheet" type="text/css" href="css/userData.css"/>
</head>
<body>
	<jsp:useBean id="queryUser" class="com.ZG.service.queryUser"></jsp:useBean>
	<%
		userTable user=(userTable)session.getAttribute("user");
		userTable U=queryUser.getUserInfo(user.getId());
		String birthday=new String();
		String warehouseNumber =new String();
		String balance=new String();
		if(U!=null){
			if(U.getBirthday()==null){
				birthday="未填写";
			}else{
				birthday=U.getBirthday();
			}
			if(U.getWarehouseNumber()==null){
				warehouseNumber="未开通证券帐户";
			}else{
				U.getWarehouseNumber();
			}
			if(U.getBalance()==null){
				balance="0";
			}else {
				U.getBalance();
			}
	%>
	<a><h3><i><%=U.getId() %></i></h3></a>
	<hr noshade color="#0066cc">
	<div>
		<span><strong><font color=#0066cc>基本资料</font></strong></span>
		<span style="float:right;"><a style="text-decoration:none;" href="modifyUserData.jsp" target="userBottom">修改</a></span>
	</div>
	<hr noshade color="#0066cc">
	<div class="panel">
		<a>昵称：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=U.getUsername() %></a><br>
		<a>生日：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=birthday %></a><br>
		<a>仓库编号：&nbsp;&nbsp;&nbsp;&nbsp;<%=warehouseNumber%></a><br>
		<a>账户余额：&nbsp;&nbsp;&nbsp;&nbsp;<%=balance%>元</a>
		<%}%>
	</div>
	
</body>
</html>