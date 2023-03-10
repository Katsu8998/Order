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
}

header{
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
span{
color:red;
}

footer{
 color: #fff;
  height: 120px;
  padding: 40px;
  background-color:black;

}
.footer-logo{
  font-size: 25pt;
   float:left;

}

.footer-list {
  float: right;
}

.footer-list li{
 font-size: 20px;
 list-style-type: none;
 padding-bottom:3px;

}

.main{
	padding: 100px 80px;
}

h1 {
    font-size 35pt;
    color: black;
    text-align: center;

}

.content-h2{
	text-align:center;
	border-bottom:2px solid #dee7ec;
}

.menu {
    padding: 7px;
    border-radius: 10px;
    border: 1px solid #CCC;
}

.contents{
height: 400px;
  margin-top: 100px;
   border-bottom: 1px solid #CCC;
}

.pic {
    width: 300px;
    height: 250px;
    border-radius: 5px;
    margin-left:100px;
     float: left;


}

a{
color:white;
}
#content1 {
    font-size 30pt;
    color: black;
    margin-right: 10px;
    text-align: center;
    font-weight: bold;
}

#content2 {
    font-size 30pt;
    color: black;
    margin-right: 15px;
    text-align: center;
    font-weight: bold;

}

#button {
    font-size 10pt;
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

.order-button:hover{
background-color:red;
}

.pay-button {
    margin-top: 7px;
    min-width: 150px;
    border-radius: 10px;
}

.pay-button:hover{
background-color:red;
}


.sale-button {
    margin-top: 15px;
    min-width: 150px;
    border-radius: 10px;
}

.sale-button:hover{
background-color:red;
}


.contact-h {
    font-size 35pt;
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

.input,textarea{
border:1px solid #dee7ec;
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
.query-button:hover{
background-color:red;
}


#map {
    margin-top: 7px;
    width: 700px;
    height: 400px;
    margin: 0 auto;
}


</style>

<title>???????????????</title>
	
<script
	src=""
	defer>  </script>
<script>
 let map;
 function initMap() {
     map = new google.maps.Map(document.getElementById('map'), { // #?????????????????????
    	 mapId: "",
    	   center: {  lat: 35.68953, // ??????
               lng: 139.70130 },
    	   zoom: 12,
    	 });

     new google.maps.Marker({
    	 position: { lat: 35.68953, lng: 139.70130 },
    	   map,
    	   title: "??????",
    	 });

    	}
    	window.initMap = initMap;
</script>
</head>
<body>
<header>
	<div class="header-logo">???????????????</div>
	<div class="list">
		<ul>
			<li><a href="#order">??????</a></li>
			<li><a href="#query">??????????????????</a></li>
			<li><a href="#location">??????</a></li>
		</ul>
	</div>
</header>
 <div class="main">
	<h1>???????????????<span>.</span></h1>
	<h2 class= "content-h2">????????????????????????????????????????????????</h2>

<div class = "contents">

	<img src="/Order/img/??????1.jpeg" class="pic">

	<img src="/Order/img/??????2.jpeg" class="pic">

	<img src="/Order/img/??????3.jpeg" class="pic">

	<img src="/Order/img/??????4.jpeg" class="pic">

</div>

	<h2 class="contact-h" id="order">??????????????????????????????????????????</h2>

	<form name="form1" action="/Order/OrderServlet" method="post"
		onsubmit="return funcConfirm()">
		<section class="menu">
			<div id="content1">
				????????? 350???: <input type="number" name="karubi" min="0" max="20">
				????????? 400???: <input type="number" name="ros" min="0" max="20">
				????????? 400???: <input type="number" name="harami" min="0" max="20">
			</div>
			<br>
			<div id="content2">
				?????? 600???: <input type="number" name="tan" min="0" max="20">
				????????? 200???: <input type="number" name="rice" min="0" max="20">
				????????????????????? 800???: <input type="number" name="veg" min="0" max="20">
			</div>
			<div id="button">
				<input type="submit" value="??????" name="order" class="order-button">
			</div>
	</form>

	<form action="/Order/OrderServlet" method="post">
		<div id="button">
			<input type="submit" value="?????????" name="order" class="pay-button"><br>
			<input type="submit" value="????????????" name="order" class="sale-button">
		</div>
		</section>
	</form>


	<h2 class="contact-h" id="query">??????????????????</h2>
	<section class="query-section">
		<form action="/Order/Question" method="post">
			<table class="form-table">
				<tr>
					<th>?????????????????????</th>
					<td><select class="contact-select" name="option">
							<option value="Q1">?????????????????????</option>
							<option value="Q2">????????????????????????</option>
							<option value="Q3">?????????</option>
					</select></td>
				</tr>
				<tr>
					<th>?????????</th>
					<td><input type="text" name="name"></td>
				</tr>


				<tr>
					<th>Email</th>
					<td><input type="email" name="email" required></td>
				</tr>

				<tr>
					<th>??????</th>
					<td><textarea rows="10" cols="20" name="detail"></textarea></td>
				</tr>

			</table>
			<div class="form-button">
				<input type="submit" value="??????????????????" name="query"
					class="query-button">
			</div>
		</form>
	</section>
	<h2 class="contact-h" id="location">??????</h2>
	<div id="map"></div>
</div>

	<footer>
	<div class = "footer-logo">???????????????</div>
		<ul class = "footer-list">
			<li><a href="#order">??????</a></li>
			<li><a href="#query">??????????????????</a></li>
			<li><a href="#location">??????</a></li>
		</ul>
</footer>
</body>



<script type="text/javascript">
        function funcConfirm() {
        	if (document.form1.karubi.value == "") {
                alert("????????????0-20????????????????????????????????????");
                return false;
            }

        	if (document.form1.ros.value == "") {
                alert("????????????0-20????????????????????????????????????");
                return false;
            }

        	if (document.form1.harami.value == "") {
                alert("????????????0-20????????????????????????????????????");
                return false;
            }

        	if (document.form1.tan.value == "") {
                alert("?????????0-20????????????????????????????????????");
                return false;
        	}

        	if (document.form1.rice.value == "") {
                alert("????????????0-20????????????????????????????????????");
                return false;
            }

        	if (document.form1.veg.value == "") {
                alert("???????????????????????????0-20????????????????????????????????????");
                return false;
            }
        }
        </script>
</html>
