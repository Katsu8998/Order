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
}

#content2{
font-size 30pt;
font-family: メイリオ;
color:black;
margin-right: 15px;
text-align: center;
}

#button{
font-size 30pt;
font-family: メイリオ;
color:black;
margin-top:15px;
text-align: center;
}

</style>
<title>注文確認</title>
</head>
<body>
<h1>注文確認画面</h1>
<div id="content1">
<c:if test="${OB.karubinum > 0}">
	<strong>カルビ：${OB. karubinum}</strong><br>
</c:if>

<c:if test="${OB.rosnum > 0}">
	<strong>ロース：${OB.rosnum}</strong><br>
</c:if>

<c:if test="${OB.haraminum > 0}">
	<strong>ハラミ：${OB.haraminum}</strong><br>
</c:if>
</div>

<div id="content2">
<c:if test="${OB.tannum > 0}">
	<strong>タン  :${OB.tannum}</strong><br>
</c:if>

<c:if test="${OB.ricenum > 0}">
	<strong>ごはん:${OB.ricenum}</strong>
</c:if>
<br>

<c:if test="${OB.vegnum > 0}">
	<strong>野菜の盛り合わせ:${OB.vegnum}</strong>
</c:if>
</div>
<br>
<div id="button">
<a href = "/Order/OrderServlet"><strong>戻る</strong></a>
<a href = "/Order/OrderServlet?action=done"><strong>確定</strong></a>
</div>
</body>
</html>