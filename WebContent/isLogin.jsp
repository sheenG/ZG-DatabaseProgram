<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="com.ZG.model.userTable"%>

<%
	userTable user=(userTable)session.getAttribute("user");
	if(user==null){
		%>
		<jsp:forward page="index.jsp"></jsp:forward>
		<%
	}
%>