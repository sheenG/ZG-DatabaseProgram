<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="com.ZG.model.userTable"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top.jsp</title>
<link rel="stylesheet" type="text/css" href="css/userTop.css"/>

<script>
function query()
{
	document.getElementById('form3').submit();
}
</script>

</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body bgcolor=white>
	
	<div class="content">
		<form id="form3" action="queryRs.jsp" name="form3" target="userBottom">
			<div style="float:left;">
				<nobr>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size=4px color=black><i>ZG-Search</i></font>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <input id="query" name="query" placeholder="股票编号" style="display:inline">
					 <button style="display:inline" onclick="query()">查找</button>
				</nobr>
			</div>
		</form>
		
		<div style="float:right;">
			<font size=3px color=red>当前帐户ID：<%
			userTable user=(userTable)session.getAttribute("user");
			String s=user.getId();
			%>
			<%=s%>
			</font>
		</div>
	</div>
 </body>
</html>