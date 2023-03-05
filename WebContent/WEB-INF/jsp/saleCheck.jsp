<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
h1{
font-size 14pt;
font-family: メイリオ;
color: green;
text-align: center;

}

#content1{
font-size 30pt;
font-family: メイリオ;
color:black;
margin-right: 10px;
text-align: center;
font-weight:bold;

}


#button{
font-size 30pt;
font-family: メイリオ;
color:black;
margin-right: 10px;
text-align: center;
font-weight:bold;
}

.class{
font-family: メイリオ;
color:blue;
}
</style>
<title>売上確認</title>
</head>
<body>
<h1>売上確認</h1>
<div id="content1">
<c:forEach var= "sale" items="${sale}">
<p class=class>売上</p>
<c:if test="${sale.karubinum > 0}">
	カルビ 350円：${sale. karubinum}<br>
</c:if>

<c:if test="${sale.rosnum > 0}">
	ロース 400円：${sale.rosnum}<br>
</c:if>

<c:if test="${sale.haraminum > 0}">
	ハラミ 400円：${sale.haraminum}<br>
</c:if>



<c:if test="${sale.tannum > 0}">
	タン 600円:${sale.tannum}<br>
</c:if>

<c:if test="${sale.ricenum > 0}">
	ごはん 200円:${sale.ricenum}
</c:if>
<br>

<c:if test="${sale.vegnum > 0}">
	野菜の盛り合わせ 800円:${sale.vegnum}
</c:if>
<br>

注文合計金額: ${sale.total} 円
<br>
${sale.time}
<br>
</c:forEach>

</div>

<div id="button">
<a href = "/Order/OrderServlet">戻る</a>
</div>
</body>
</html>