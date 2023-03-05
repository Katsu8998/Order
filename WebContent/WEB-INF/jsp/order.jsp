<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
h1{
font-size 35pt;
font-family: メイリオ;
color:green;
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
font-size 10pt;
font-family: メイリオ;
color:black;
margin-top:15px;
text-align: center;
}
</style>
<title>ご注文画面</title>
</head>
<body>
<h1>ご注文数を入力してください。</h1>
<form name = "form1" action = "/Order/OrderServlet" method="post" onsubmit="return funcConfirm()">
<div id="content1">
カルビ 350円: <input type = "number" name = "karubi"min ="0" max = "20">
ロース 400円: <input type = "number" name = "ros" min ="0" max = "20">
ハラミ 400円: <input type = "number" name = "harami" min ="0" max = "20">
</div>
<br>
<div id="content2">
タン   600円: <input type = "number" name = "tan" min ="0" max = "20">
ごはん 200円: <input type = "number" name = "rice" min ="0" max = "20">
野菜盛り合わせ 800円: <input type = "number" name = "veg" min ="0" max = "20">
</div>

<div id="button">
 <input type="submit" value = "注文" name="order">
</div>
  </form>


 <form  action = "/Order/OrderServlet" method="post">
 <div id="button">
 <input type="submit" value="お会計" name ="order" >
 <input type="submit" value = "売上確認" name = "order">
 </div>
 </form>


</body>

<script type="text/javascript">
        function funcConfirm() {
        	if (document.form1.karubi.value == "") {
                alert("カルビに0-20の数字を入力してください");
                return false;
            }

        	if (document.form1.ros.value == "") {
                alert("ロースに0-20の数字を入力してください");
                return false;
            }

        	if (document.form1.harami.value == "") {
                alert("ハラミに0-20の数字を入力してください");
                return false;
            }

        	if (document.form1.tan.value == "") {
                alert("タンに0-20の数字を入力してください");
                return false;
        	}

        	if (document.form1.rice.value == "") {
                alert("ごはんに0-20の数字を入力してください");
                return false;
            }

        	if (document.form1.veg.value == "") {
                alert("野菜の盛り合わせに0-20の数字を入力してください");
                return false;
            }
        }
        </script>
</html>