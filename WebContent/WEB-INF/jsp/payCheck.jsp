<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
	font-family: "Avenir Next";
}

h1 {font-size 14pt;
	color: green;
	text-align: center;
}

#content1 {
	margin-right: 10px;
	text-align: center;
	font-weight: bold;
	font-size: 30px;
	font-weight:bold;

}

#button {
	color: black;
	margin-top: 15px;
	text-align: center;
	font-weight: bold;

}



span{
color:red;
}

.btn-done {
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

.btn-back {
	font-size: 20px;
	color: black;
	min-width: 150px;
	border-radius: 10px;
	border: 1px solid #CCC;
	display:inline-block;
}

.btn-back:hover {
	background-color: yellow;
}
</style>
<title>お会計確認</title>
</head>
<body>
	<h1>ご注文内容の確認</h1>
	<div id="content1">
		<c:if test="${OB.karubinum > 0}">
			<p class="c1">カルビ 350円：${OB. karubinum}</p>
		</c:if>

		<c:if test="${OB.rosnum > 0}">
			<p class="c2">ロース 400円：${OB.rosnum}</p>
		</c:if>

		<c:if test="${OB.haraminum > 0}">
			<p class="c3">ハラミ 400円：${OB.haraminum}</p>
		</c:if>

		<c:if test="${OB.tannum > 0}">
			<p class="c4">タン 600円:${OB.tannum}</p>
		</c:if>

		<c:if test="${OB.ricenum > 0}">
			<p class="c5">ごはん 200円:${OB.ricenum}</p>
		</c:if>

		<c:if test="${OB.vegnum > 0}">
			<p class="c6">野菜の盛り合わせ 800円:${OB.vegnum}</p>
		</c:if>

		<p>注文合計金額:<span> ${OB.total} 円</span></p>
	</div>

	<div id="button">
		<a href="/Order/OrderServlet?action=payDone" class="btn-done">支払いへ</a>
		<a href="/Order/OrderServlet" class="btn-back">戻る</a>
	</div>
</body>
</html>