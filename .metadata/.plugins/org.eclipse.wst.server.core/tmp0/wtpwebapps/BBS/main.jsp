<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹사이트</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			 	data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			 	aria-expanded="false">
			 	<span class="icon-bar"></span>
			 	<span class="icon-bar"></span>
			 	<span class="icon-bar"></span>	
			 </button>
			 <a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-expample-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if(userID == null){
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
				 	<a href="#" class="dropdown-toggle"
				 		data-toggle="dropdown" role="button" aria-haspopup="ture"
				 		aria-expanded="false">접속하기<span class="caret"></span></a>
				 	<ul class="dropdown-menu">
				 		<li><a href="login.jsp">로그인</a></li>
				 		<li><a href="join.jsp">회원가입</a></li>
				 	</ul>
				</li>
			</ul>
			<%	
				} else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
				 	<a href="#" class="dropdown-toggle"
				 		data-toggle="dropdown" role="button" aria-haspopup="ture"
				 		aria-expanded="false">회원관리<span class="caret"></span></a>
				 	<ul class="dropdown-menu">
				 		<li><a href="logoutAction.jsp">로그아웃</a></li>
				 	</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotorn">
			<h1>웹 사이트 소개</h1>
			<p>이 웹 사이트는 부트스트립으로 만든 JSP 웹 사이트 입니다. 코드는 유튜브 "나동빈"채널에서 참고하여 개발하였습니다. 디자인 템플릿으로는 부트스트랩을 이용하였습니다. 저의 첫 웹사이트 입니다.</p>
			<p><a class="btn btn-primary btn-pull" href="https://www.youtube.com/c/dongbinna" role="button">자세히 알아보기</a></p>
		</div>
	</div>
	
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/Seoul.png">
				</div>
				<div class="item">
					<img src="images/Tokyo.jpg">
				</div>
				<div class="item">
					<img src="images/La.jpg">
				</div>
				<div class="item">
					<img src="images/Puppy.jpg">
				</div>
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">
					<span class="glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>