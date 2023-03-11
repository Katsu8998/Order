<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

#button{
font-size 30pt;
font-family: メイリオ;
color:black;
margin-right: 10px;
text-align: center;
font-weight:bold;
}

.btn-back {
	font-size: 20px;
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
<title>お会計</title>
</head>
<body>
<h1>ご来店ありがとうございました。</h1>
<div id="content1">
<h2>レジにてお支払いをお願いいたします。</h2>
</div>
<div id="button">
<a href = "/Order/OrderServlet" class="btn-back">注文画面へ</a>
</div>
</body>
</html>