<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/Order/css/order.css">
<link rel="icon" type="image/svg+xml" href="/vite.svg" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="module" src="/main.js"></script>
<link rel="stylesheet" type="text/css" href="./style.css" />
<style>
body {
	font-family: "Avenir Next";
	width:100%;
}

header {
	background-color: black;
	color: #fff;
	height: 120px;
}

.header-logo {
	font-size: 30px;
	padding: 3px 40px;
}

.list li {
	font-size: 20px;
	float: left;
	list-style-type: none;
	padding: 3px 20px;
}

span {
	color: red;
}

footer {
	color: #fff;
	height: 120px;
	padding: 40px;
	background-color: black;
}

.footer-logo {
	font-size: 25pt;
	float: left;
}

.footer-list {
	float: right;
}

.footer-list li {
	font-size: 20px;
	list-style-type: none;
	padding-bottom: 3px;
}

.main {
	padding: 100px 80px;
}

h1 {font-size 35pt;
	color: black;
	text-align: center;
}

.content-h2 {
	text-align: center;
	border-bottom: 2px solid #dee7ec;
}

.menu {
	padding: 7px;
	border-radius: 10px;
	border: 1px solid #CCC;
}

.contents {
	height: 400px;
	margin-top: 100px;
	border-bottom: 1px solid #CCC;
}

@media screen and ( max-width :1000px) {
	.contents {
		width: 50%;
		height: 200px;
		border-radius: 5px;
		margin-left: 100px;
		float: left;
	}
}

@media screen and ( max-width :640px) {
	.contents {
		width: 20%;
		height: 20%;
		border-radius: 5px;
		margin-left: 100px;
		float: left;

	}
}

.pic {
		width: 300px;
		height: 250px;
		border-radius: 5px;
		margin-left: 100px;
		float: left;
}

#popup-wrapper {
  background-color: rgba(0, 0, 0, .5);
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: none;
}

#popup-inside {
  text-align: center;
  width: 100%;
  max-width: 1000px;
  height:100%;
  background: white;
  margin: 10% auto;
  padding: 20px;
  position: relative;
}
#close {
  position: absolute;
  top: 0;
  right: 5px;
  cursor: pointer;
}

.pic1{
		width: 300px;
		height: 200px;
}

a {
		color: white;
	}

#content1 {font-size 30pt;
		color: black;
		margin-right: 10px;
		text-align: center;
		font-weight: bold;
	}

#content2 {font-size 30pt;
		color: black;
		margin-right: 15px;
		text-align: center;
		font-weight: bold;
	}
	#button {font-size 10pt;
		color: black;
		margin-top: 15px;
		text-align: center;
	}
	#button:hover {
		color: white;
	}
	.button-select {
		margin-top: 30px;
		padding: 5px;
		border-radius: 10px;
		border: 1px solid #CCC;
		min-width: 300px;
	}
	.order-button {
		margin-top: 15px;
		min-width: 150px;
		border-radius: 10px;
	}
	.order-button:hover {
		background-color: red;
	}
	.pay-button {
		margin-top: 7px;
		min-width: 150px;
		border-radius: 10px;
	}
	.pay-button:hover {
		background-color: red;
	}
	.sale-button {
		margin-top: 15px;
		min-width: 150px;
		border-radius: 10px;
	}
	.sale-button:hover {
		background-color: red;
	}
	.contact-h {font-size 35pt;
		color: black;
		text-align: center;
	}
	.query-section {
		border-radius: 10px;
		border: 1px solid #CCC;
	}
	.contact {
		text-align: center;
	}
	.input, textarea {
		border: 1px solid #dee7ec;
	}
	.form-table {
		margin: 0 auto;
	}
	.form-table th {
		padding: 10px;
		text-align: left;
	}
	.form-table td {
		padding: 10px;
	}
	.form-button {
		text-align: center;
	}
	.query-button {
		margin-top: 7px;
		min-width: 150px;
		border-radius: 10px;
	}
	.query-button:hover {
		background-color: red;
	}
	#map {
		margin-top: 7px;
		width: 700px;
		height: 400px;
		margin: 0 auto;
	}
}
</style>

<title>ご注文画面</title>
<script src="" defer>  </script>
<script>
 let map;
 function initMap() {
     map = new google.maps.Map(document.getElementById('map'), { // #sampleに地図を埋め込む
    	 mapId: "e83f55c1e8cc32d9 ",
    	   center: {  lat: 35.68953, // 緯度
               lng: 139.70130 },
    	   zoom: 12,
    	 });

     new google.maps.Marker({
    	 position: { lat: 35.68953, lng: 139.70130 },
    	   map,
    	   title: "当店",
    	 });

    	}
    	window.initMap = initMap;
</script>
</head>
<body>
	<header>
		<div class="header-logo">お肉専門店</div>
		<div class="list">
			<ul>
				<li><a href="#order">注文</a></li>
				<li><a href="#query">お問い合わせ</a></li>
				<li><a href="#location">場所</a></li>
			</ul>
		</div>
	</header>
	<div class="main">
		<h1>
			お肉専門店<span>.</span>
		</h1>
		<h2 class="content-h2">当店は一級品のお肉を揃えています</h2>
		<div id="popup-wrapper">
		<div id="popup-inside">
			<img name = "pic1" id = "big_pic"  src="">
      <div id="message">
      <h2>商品名</h2>
      <p>商品説明</p>
       <div id="close">x</div>
    </div>
  </div>
</div>

		<div class="contents">
			<img src="/Order/img/お肉1.jpg" class="pic" onclick="mClick(this)" >
			<img
				src="/Order/img/お肉2.jpeg"  class="pic" onclick="mClick(this)" >
				<img
				src="/Order/img/お肉3.jpg"   class="pic" onclick="mClick(this)" >
				<img
				src="/Order/img/お肉4.jpg" class="pic" onclick="mClick(this)" >

		</div>

		<h2 class="contact-h" id="order">ご注文数を入力してください。</h2>

		<form name="form1" action="/Order/OrderServlet" method="post"
			onsubmit="return funcConfirm()">
			<section class="menu">
				<div id="content1">
					カルビ 350円: <input type="number" name="karubi" min="0" max="20">
					ロース 400円: <input type="number" name="ros" min="0" max="20">
					ハラミ 400円: <input type="number" name="harami" min="0" max="20">
				</div>
				<br>
				<div id="content2">
					タン 600円: <input type="number" name="tan" min="0" max="20">
					ごはん 200円: <input type="number" name="rice" min="0" max="20">
					野菜盛り合わせ 800円: <input type="number" name="veg" min="0" max="20">
				</div>
				<div id="button">
					<input type="submit" value="注文" name="order" class="order-button">
				</div>
		</form>

		<form action="/Order/OrderServlet" method="post">
			<div id="button">
				<input type="submit" value="お会計" name="order" class="pay-button"><br>
				<input type="submit" value="売上確認" name="order" class="sale-button">
			</div>
			</section>
		</form>


		<h2 class="contact-h" id="query">お問い合わせ</h2>
		<section class="query-section">
			<form action="/Order/Question" method="post" name = "form2" onsubmit="return funcConfirm2()">
				<table class="form-table">
					<tr>
						<th>問い合わせ内容</th>
						<td><select class="contact-select" name="option">
								<option value="Q1">プランについて</option>
								<option value="Q2">注文方法について</option>
								<option value="Q3">その他</option>
						</select></td>
					</tr>
					<tr>
						<th>お名前</th>
						<td><input type="text" name="name"></td>
					</tr>


					<tr>
						<th>Email</th>
						<td><input type="email" name="email" required></td>
					</tr>

					<tr>
						<th>詳細</th>
						<td><textarea rows="10" cols="20" name="detail"></textarea></td>
					</tr>

				</table>
				<div class="form-button">
					<input type="submit" value="お問い合わせ" name="query"
						class="query-button">
				</div>
			</form>
		</section>
		<h2 class="contact-h" id="location">場所</h2>
		<div id="map"></div>
	</div>

	<footer>
		<div class="footer-logo">お肉専門店</div>
		<ul class="footer-list">
			<li><a href="#order">注文</a></li>
			<li><a href="#query">お問い合わせ</a></li>
			<li><a href="#location">場所</a></li>
		</ul>
	</footer>
</body>



<script type="text/javascript">
        function funcConfirm() {
        	if (document.form1.name.value == "") {
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

        function funcConfirm2() {
        	if (document.form2.name.value ==""){
        		 alert("名前欄が空白です。");
        		 return false;
        	} else if (document.form2.name.value != /^[0-9a-zA-Z]*$/){
       		 alert("名前欄には半角英数字で入力ください");
       		return false;
       	}

        }

        function mClick(obj){
        	const popupWrapper = document.getElementById('popup-wrapper');
        	popupWrapper.style.display = "block";
        	let fileName = obj.getAttribute('src');
        	document.getElementById('big_pic').setAttribute('src', fileName);
        }

    	const popupWrapper = document.getElementById('popup-wrapper');
        const close = document.getElementById('close');
        popupWrapper.addEventListener('click', e => {
        	  if (e.target.id === popupWrapper.id || e.target.id === close.id) {
        	    popupWrapper.style.display = 'none';
        	  }
        	});



        </script>
</html>