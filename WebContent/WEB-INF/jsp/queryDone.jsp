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

.h{
font-size 35px;
	color: green;
	text-align: center;
}

.h2{
	font-size 45px;
	text-align: center;
	font-weight:bold;
}

.button{
text-align: center;
}

.btn{
font-size:20px;
min-width: 150px;
 border-radius: 10px;
 border: 1px solid #CCC;
display:inline-block;
text-align: center;
}

.btn:hover {
	background-color: yellow;
}

</style>



<title>お問い合わせ完了</title>
</head>
<body>
<h1 class = "h">お問い合わせ完了</h1>
<h2 class = "h2">少々お待ち下さい。</h2>
<div class="button"><a href = "/Order/OrderServlet" class = "btn">注文画面へ</a>
</div>
</body>
</html>