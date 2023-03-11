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

.check-h {font-size 35px;
	color: green;
	text-align: center;
}

.check-p {font-size 35px;
	text-align: center;
}

.form-dl {
	text-align: center;
}

.form-dl-p {
	font-size: 20px;
	font-weight: bold;
}

.form-dl dt {
	margin: 15px;
	font-weight: bold;
}

.form-dl dd {
	margin: 10px;
}

.btn {
	text-align: center;
}

.doneSpe {
	font-size: 20px;
	color: black;
	min-width: 150px;
	border-radius: 10px;
	border: 1px solid #CCC;

	display:inline-block;
	margin-bottom:20px;
}

.doneSpe:hover {
	background-color: yellow;
}

.backSpe {
	font-size: 20px;
	color: black;
	min-width: 150px;
	border-radius: 10px;
	border: 1px solid #CCC;
	display:inline-block;
}

.backSpe:hover {
	background-color: yellow;
}


</style>

<title>問い合わせ内容確認</title>
</head>
<body>
	<h1 class="check-h">問い合わせ内容確認</h1>


	<p class="check-p">下記の内容でよろしいでしょうか？</p>


	<dl class="form-dl">
		<p class="form-dl-p">問い合わせ内容</p>
		<dt>お名前</dt>
		<dd>${QB.name}</dd>

		<dt>Eメールアドレス</dt>
		<dd>${QB.email}</dd>

		<dt>お問い合わせ内容の種類</dt>
		<dd>${QB.option}</dd>

		<dt>詳細</dt>
		<dd>${QB.detail}</dd>

	</dl>

	<div class="btn">
		<div class="btn done">
			<a href="/Order/Question?action=done" class="doneSpe">確定</a>
		</div>

		<div class="btn back">
			<a href="/Order/Question" class="backSpe">戻る</a>
		</div>
	</div>


</body>
</html>