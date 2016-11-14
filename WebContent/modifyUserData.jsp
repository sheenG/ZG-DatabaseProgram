<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="com.ZG.model.userTable,com.ZG.service.queryUser"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language="javascript" type="text/javascript" src="datepicker/WdatePicker.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>modifyUserData.jsp</title>
<link rel="stylesheet" type="text/css" href="css/modifyUserData.css"/>
</head>
<body>
	<jsp:useBean id="queryUser" class="com.ZG.service.queryUser"></jsp:useBean>
	<%
		userTable user=(userTable)session.getAttribute("user");
		userTable U=queryUser.getUserInfo(user.getId());
		String birthday=new String();
		if(U!=null){
			if(U.getBirthday()==null){
				birthday="未曾填写";
			}
		}
	%>
	<a><h3><i><%=U.getId() %></i></h3></a>
	<hr noshade color="#0066cc">
	<div>
		<span><strong><font color=#0066cc>修改基本资料</font></strong></span>
		<span style="float:right;"><a style="text-decoration:none;cursor:pointer;"onclick="saveM()" >保存</a></span>
	</div>
	<hr noshade color="#0066cc">
	<form id="form4" action = "deal-modifyUserData.jsp" name="modifyUserData">
		<div class="panel">
			<div>
				<span><a>昵称：</a></span>
				<span><input id="username" name="username" value="<%=U.getUsername()%>"></span>
			</div>
			<br>
			<div>
				<span><a>生日：</a></span>
				<span><input id="birthday" name ="birthday" type="text" value="<%=birthday %>" onClick="WdatePicker()"/></span>
			</div>
		</div>
	</form>
</body>
</html>