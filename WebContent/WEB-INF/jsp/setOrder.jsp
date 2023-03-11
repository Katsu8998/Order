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

#button{
text-align: center;
}


.btn{
	font-size: 20px;
	color: black;
	min-width: 150px;
	border-radius: 10px;
	border: 1px solid #CCC;
	display:inline-block;
	margin-bottom:20px;
}

.btn:hover {
	background-color: yellow;
}
}
</style>
<title>注文確定</title>
</head>
<body>
<h1>ご注文を受け付けました</h1>
<div id="button"><a href = "/Order/OrderServlet" class = "btn">注文画面へ</a>
</div>

</body>
</html>