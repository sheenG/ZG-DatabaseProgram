<%@ page language="java"  import="java.util.List,com.ZG.model.*,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>query</title>
<link rel="stylesheet" type="text/css" href="css/queryStock.css"/>
</head>
<body >
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="stockInfo" class="com.ZG.model.stockInfo"></jsp:useBean>
<jsp:setProperty property="stockId" name="stockInfo" param="query"></jsp:setProperty>
<jsp:useBean id="queryStock" class="com.ZG.service.queryStock"></jsp:useBean>
<%
	List list=queryStock.getStockInfo(stockInfo);
	if(list!=null){
		Iterator iter=list.iterator();
		stockInfo sI=(stockInfo)iter.next();
	%>
	<div class="content">
		
		<div class="panel">
			<p size=4px style="font-weight:bold;">股票编号：<%=sI.getStockId()%></p>
			<p size=4px style="font-weight:bold;">股票名称：<%=sI.getStockName()%></p>
			<p size=4px style="font-weight:bold;">当前价格：<%=sI.getStockPrice()%>元/手</p>
			<p size=4px style="font-weight:bold;">归属地：<%=sI.getStockLoc()%></p>
			<p size=4px style="font-weight:bold;">备注：<%=sI.getStockComment()%></p>
			
		</div>
	</div>
	<%}else {%>
		<script type="text/javascript">
			alert("所查股票不存在!");
			//window.parent.在frame框架中右边的name名.location.href=url;这是js跳转target唯一的方法，如果没看懂，自己加
		</script><%
	}%>
</body>
</html>