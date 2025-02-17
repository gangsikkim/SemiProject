<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<link
	href="https://fonts.googleapis.com/css?family=Calistoga&display=swap"
	rel="stylesheet">
<style>
body {
	margin: 0px;
	padding: 0px;
	background-color: #FFFFFF;
}

.lastbar {
	margin: 0px;
	overflow: hidden;
	padding: 0px;
}

.navi {
	position: fixed;
	top: 0px;
	margin: 0px;
	overflow: hidden;
	padding: 0px;
	width: 60%;
	left: 20%;
	background-color: #FFFFFF90;
	font-family: fantasy;
	font-size: 20px;
}

.title {
	margin: 0px;
	padding: 0px;
	width: 50%;
}

.itemList {
	position: absolute;
	margin: 0px;
	padding: 0px;
	right: 0px;
	width: 50%;
}

.navi-title {
	list-style-type: none;
	width: 50%;
	line-height: 72px;
	float: left;
	text-align: center;
	color: #7019FF;
}

.navi-title>img {
	width: 100%;
	height: 100%;
}

.navi-item {
	list-style-type: none;
	width: 30%;
	line-height: 72px;
	float: left;
	text-align: center;
	color: #7019FF;
}

.navi-item2 {
	list-style-type: none;
	width: 25%;
	line-height: 30px;
	float: left;
	text-align: center;
	color: #7019FF;
}

.navi-item3 {
	list-style-type: none;
	width: 25%;
	line-height: 72px;
	float: left;
	text-align: center;
	color: #7019FF;
}

.navi-item>a {
	text-decoration: none;
	color: #7019FF;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item2>a {
	text-decoration: none;
	color: #7019FF;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item3>a {
	text-decoration: none;
	color: #7019FF;
	width: 100%;
	height: 100%;
	display: block;
	font-weight: bold;
}

.navi-title>a {
	text-decoration: none;
	color: #7019FF;
	width: 100%;
	height: 100%;
	display: block;
}

.navi-item>a:hover {
	background-color: orange;
}

.container {
	background-color: #ededed;
	width: 60%;
	margin: auto;
	margin-top: 0px;
}

.onefloor {
	border-bottom: 3px solid #7019FF;
	border-top: 3px solid #7019FF;
	border-radius: 3px;
}

.twofloor {
	border-top: 3px solid #7019FF;
	border-bottom: 3px solid #7019FF;
	border-radius: 3px;
	height: 40px;
	font-size: 20px;
}

.threefloor {
	border-bottom: 3px solid #7019FF;
	border-radius: 3px;
	height: 50px;
}

.fivefloor {
	border-top: 3px solid #7019FF;
	border-radius: 3px;
	width: 100%;
	background-color: gainsboro;
}

.progress {
	display: inline-block;
	width: 90%;
	height: 10%;
}

.category {
	position: fixed;
	top: 80px;
	left: 5%;
	width: 13%;
	height: 150px;
	border: 3px solid #7019FF;
}

#enjoybtn {
	width: 80%;
	height: 50px;
	font-size: 20px;
	position: relative;
	top: 430px;
}

.submenu {
	font-family: 'Calistoga', cursive;
	color: #7019FF;
}

.sidebar {
	height: 51px;
	font-family: 'Calistoga', cursive;
	text-align: center;
}

.sidebar>a {
	height: 100%;
	color: #FFFFFF;
}

.menubtn {
	width: 24%;
	height: 100%;
	font-size: 20px;
	background: none;
	padding: 0;
	margin: 0;
	border: 0px solid black;
}

.fourthfloor {
	height: 100%;
}

.listboard {
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	margin: auto;
	width: 80%;
}

#title {
	font-size: 20px;
	text-align: center;
	border: 1px solid black;
}

td {
	border: 1px solid black;
}

th {
	border: 1px solid black;
}
</style>
</head>
<body>
	<div class="container">
		<br> <br> <br>
		<div class="twofloor">Manager Page</div>
		<div class="threefloor">Member List</div>

		<div class="fourthfloor">
			<br>
			<table class="listboard">
				<tr>
					<th colspan=2 id="title">회원목록
				</tr>
				<tr>
					<th width="20%" style="text-align: center">회원ID
					<th width="80%" style="text-align: center">${dto.id }
				</tr>
				<tr>
					<th width="20%" style="text-align: center">회원명
					<th width="80%" style="text-align: center">${dto.name }
				</tr>
				<tr>
					<th width="20%" style="text-align: center">핸드폰번호
					<th width="80%" style="text-align: center">${dto.phone }
				</tr>
				<tr>
					<th width="20%" style="text-align: center">이메일
					<th width="80%" style="text-align: center">${dto.email }
				</tr>

				<tr>
					<th width="20%" style="text-align: center">포인트
					<th width="80%" style="text-align: center">${dto.point }
				</tr>
				<tr>
					<th width="20%" style="text-align: center">탈퇴여부
					<th width="80%" style="text-align: center">${dto.getout }
				</tr>
				</table>
<br><br>

<h1 style = "text-align :center">참여중인 챌린지</h1>
<br><br>
<table class="listboard">
				<c:choose>
					<c:when test="${list.size() == 0 }">
						<tr><td style="text-align:center;">참여 중인 챌린지가 없습니다.</tr>
					</c:when>
					<c:otherwise>
					<c:forEach items="${list}" var="dto">
					<tr>
					<th width="100%" style="text-align: center"><a href = "${pageContext.request.contextPath}/detail.adboard?seq=${dto.seq}">${dto.title}</a>
					</c:forEach>
					</c:otherwise>
					</c:choose>
					</tr>
			</table>
			<br><br>
		</div>

	</div>

	<div class="fivefloor">
		<ul class="lastbar">
			<li class="navi-item3"><a href="#">COMPANY</a></li>
			<li class="navi-item3"><a href="#">POLICIES</a></li>
			<li class="navi-item3"><a href="#">SUPPORT</a></li>
			<li class="navi-item3"><a href="#">기업교육</a></li>
			<br>
			<br>
		</ul>
		<ul class="lastbar">
			<li class="navi-item2"><a href="#">블로그</a></li>
			<li class="navi-item2"><a href="#">이용약관</a></li>
			<li class="navi-item2"><a href="#">FAQ</a></li>
			<li class="navi-item2"><a href="#">MIWANSUNG.BIZ</a></li>

		</ul>
		<ul class="lastbar">
			<li class="navi-item2"><a href="#">언론보도</a></li>
			<li class="navi-item2"><a href="#">개인정보취급방침</a></li>
			<li class="navi-item2"><a href="#">미완성센터</a></li>
			<li class="navi-item2"><a href="#"></a></li>
			<br>
			<br>
		</ul>
		<div class="lastbar2" style="text-align: center;">
			상호 : (주)미완성자들 | 주소 : 서울특별시 종로구 평창동 486 -20 | 사업자등록번호 : 234-88-00720 |
			대표자명 : 김세원<br> Copyright ⓒ2019 Miwansung inc, ltd. All rights
			reserved
		</div>
		<br>
		<div class="lastbar3" style="text-align: center">
			<a href="#"><img src="Img/icon1.png" class="mr-3" alt="..."
				style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
			<a href="#"><img src="Img/icon2.png" class="mr-3" alt="..."
				style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
			<a href="#"><img src="Img/icon3.png" class="mr-3" alt="..."
				style="width: 50px; height: 50px; margin-left: 10%; margin: 0px;"></a>
		</div>
		<br>
	</div>
	<div class="wrapper">
	<div class="category">
		<ul style="list-style-type: none; padding: 0; text-align: center;">
			<li><a
				href="${pageContext.request.contextPath}/adminChallenge/adminMyPage.jsp"
				style="color: black; font-weight: bold">Manager Home</a> <br> <br>
			<li><a href="memberlist.mem" style="color: black">Member
					List</a>
			<li><a href="list.adboard" style="color: black;">Board List</a>
			<li><a href="list.adboard" style="color: black;">write Board</a>
		</ul>
</div>
	</div>
	</div>
	<ul class="navi">
		<ul class="title">
			<li class="navi-title"><a href=""> <!-- <img src="" class="mr-3" alt="..." style="width: 135px; height: 50px; margin-left: 10%;"> -->
					DON'T GIVE UP
			</a></li>
		</ul>
		<ul class="itemList">

			<li class="navi-item"><a href="#">GIVE OR TAKE</a></li>
			<li class="navi-item"><a href="#">CHALLENGE</a></li>
			<li class="navi-item"><a href="#">MYPAGE</a></li>
		</ul>
	</ul>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script>
		var ctx = document.getElementById('myChart').getContext('2d');
		var chart = new Chart(ctx, {
			// The type of chart we want to create
			type : 'line',

			// The data for our dataset
			data : {
				labels : [ 'January', 'February', 'March', 'April', 'May',
						'June', 'July' ],
				datasets : [ {
					label : 'My First dataset',
					backgroundColor : 'rgb(255, 99, 132)',
					borderColor : 'rgb(255, 99, 132)',
					data : [ 0, 10, 5, 2, 20, 30, 45 ]
				} ]
			},

			// Configuration options go here
			options : {}
		});
	</script>
	<script>
		$("#searchbtn").on("click", function() {
			$("#searchfrm").submit();
		})
	</script>
</body>
</html>