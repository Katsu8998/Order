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
text-align: center;
font-size: 30px;
font-weight:bold;

}
#button{
text-align: center;
}


.btn-done{
	font-size: 20px;
	color: black;
	min-width: 150px;
	border-radius: 10px;
	border: 1px solid #CCC;
	display:inline-block;
	margin-bottom:20px;
}

.btn-done:hover {
	background-color: yellow;
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
<title>注文確認</title>
</head>
<body>

<h1>注文確認画面</h1>
<div id="content1">
<c:if test="${OB.karubinum > 0}">
	<p>カルビ：${OB. karubinum}</p>
</c:if>

<c:if test="${OB.rosnum > 0}">
	<p>ロース：${OB.rosnum}</p>
</c:if>

<c:if test="${OB.haraminum > 0}">
	<p>ハラミ：${OB.haraminum}</p>
</c:if>

<c:if test="${OB.tannum > 0}">
	<p>タン  :${OB.tannum}</p>
</c:if>

<c:if test="${OB.ricenum > 0}">
	<p>ごはん:${OB.ricenum}</p>
</c:if>

<c:if test="${OB.vegnum > 0}">
	<p>野菜の盛り合わせ:${OB.vegnum}</p>
</c:if>
</div>
<br>
<div id="button">
<a href = "/Order/OrderServlet?action=done"class="btn-done">確定</a>
<a href = "/Order/OrderServlet" class="btn-back">戻る</a>
</div>

</body>
</html>