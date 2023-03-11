<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

body {
  font-family: "Avenir Next";
}

h1{
font-size 14pt;
color: green;
text-align: center;

}

#content1{
font-size 30px;
margin-right: 10px;
text-align: center;
font-weight:bold;
}


.c8 {
border-bottom:2px solid #CCC;

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
color:blue;
}

.btn-back{
	font-size: 20px;
	color: black;
	min-width: 150px;
	border-radius: 10px;
	border: 1px solid #CCC;
	display:inline-block;
	margin-bottom:20px;
}

.btn-back:hover {
	background-color: yellow;
}

</style>
<title>売上確認</title>
</head>
<body>
<h1>売上確認</h1>
<div id="content1">
<c:forEach var= "sale" items="${sale}">
<h2 class=class>売上</h2>
<c:if test="${sale.karubinum > 0}">
<p class="c1">	カルビ 350円：${sale. karubinum}</p>
</c:if>

<c:if test="${sale.rosnum > 0}">
	<p class="c2">ロース 400円：${sale.rosnum}</p>
</c:if>

<c:if test="${sale.haraminum > 0}">
<p class="c3">	ハラミ 400円：${sale.haraminum}</p>
</c:if>

<c:if test="${sale.tannum > 0}">
	<p class="c4">タン 600円:${sale.tannum}</p>
</c:if>

<c:if test="${sale.ricenum > 0}">
<p class="c5">	ごはん 200円:${sale.ricenum}</p>
</c:if>

<c:if test="${sale.vegnum > 0}">
<p class="c6">	野菜の盛り合わせ 800円:${sale.vegnum} </p>
</c:if>

<p class="c7">注文合計金額: ${sale.total} 円</p>

<p class="c8">
${sale.time}
</p>

</c:forEach>

</div>

<div id="button">
<a href = "/Order/OrderServlet" class = "btn-back">戻る</a>
</div>
</body>
</html>