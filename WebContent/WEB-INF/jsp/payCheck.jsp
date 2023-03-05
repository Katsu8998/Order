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

#content2{
font-size 30pt;
font-family: メイリオ;
color:black;
margin-right: 15px;
text-align: center;
font-weight:bold;
}

#button{
font-size 30pt;
font-family: メイリオ;
color:black;
margin-top:15px;
text-align: center;
font-weight:bold;
}
</style>
<title>お会計確認</title>
</head>
<body>
<h1>ご注文内容の確認</h1>
<div id="content1">
<c:if test="${OB.karubinum > 0}">
	カルビ 350円：${OB. karubinum}<br>
</c:if>

<c:if test="${OB.rosnum > 0}">
	ロース 400円：${OB.rosnum}<br>
</c:if>

<c:if test="${OB.haraminum > 0}">
	ハラミ 400円：${OB.haraminum}<br>
</c:if>
</div>

<div id="content2">
<c:if test="${OB.tannum > 0}">
	タン 600円:${OB.tannum}<br>
</c:if>

<c:if test="${OB.ricenum > 0}">
	ごはん 200円:${OB.ricenum}
</c:if>
<br>

<c:if test="${OB.vegnum > 0}">
	野菜の盛り合わせ 800円:${OB.vegnum}
</c:if>
<br>

注文合計金額: ${OB.total} 円
<br>
</div>

<div id="button">
<a href = "/Order/OrderServlet">戻る</a>
<a href="/Order/OrderServlet?action=payDone">支払いへ</a>
</div>
</body>
</html>