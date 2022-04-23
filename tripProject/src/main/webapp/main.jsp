<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
<meta name="copyright" content="ninodezign.com">
<title>HI TRIP</title>

<!-- favicon -->
<link rel="shortcut icon" href="resources/images/ico/favicon.jpg">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="resources/images/ico/apple-touch-icon-57-precomposed.png">

<!-- css -->
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="resources/css/unslider.css" />
<link rel="stylesheet" type="text/css" href="resources/css/template.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/slideshow.css" />

</head>

<body data-target="#nino-navbar" data-spy="scroll">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner">
			<%
				if (session.getAttribute("적을내용") == null) { // 세션에 있는 값이 ''이면 아래 출력
			%>
			<jsp:include page="header.jsp"></jsp:include>
			<%
				} else { // 아니면 아래 출력
			%>
			<jsp:include page="header2.jsp"></jsp:include>
			<%
				}
			%>
			<section id="nino-slider" class="carousel slide container"
				data-ride="carousel"></section>
		</div>
	</header>

	<!-- 날씨 API
    ================================================== -->
	<section id="nino-story">
		<div class="container">
			<div class="vis-weather">
				<h2 class="nino-sectionHeading">전국 날씨</h2>
				<ul class="list-group list-group-flush weather"
					style="font-weight: 600; display: table; margin-left: auto; margin-right: auto;">
					<!-- <li class="list-group-item weather"></li> -->
					<!-- ajax를 통해 이 안에 값을 불러온다. -->
				</ul>
			</div>
		</div>



	</section>

	<!-- 추천수 top 3
    ================================================== -->
	<section id="nino-uniqueDesign">
		<div class="container">
			<h2 class="nino-sectionHeading">추천 여행지 top3</h2>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<!-- ajax를 통해 이 안에 값을 불러온다. -->
				</div>
			</div>
		</div>
	</section>
	<!--/#nino-uniqueDesign-->


	<!-- 여행 경로 조회수  top3
    ================================================== -->
	<section id="nino-portfolio">
		<div class="container">
			<h2 class="nino-sectionHeading">여행 경로 조회수 top3</h2>
		</div>
		<!-- Container for the image gallery -->
		<div id="d1"></div>

	</section>
	<!--/#nino-portfolio-->

	<!-- Happy Client
    ================================================== -->
	<section id="nino-happyClient">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Happy Clients</span> What people say
			</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="images/happy-client/img-1.jpg"
									alt="">
							</div>
							<div class="info">
								<h4 class="name">Matthew Dix</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Nemo illo cupiditate temporibus sapiente,
									sint, voluptatibus tempora esse. Consectetur voluptate nihil
									quo nulla voluptatem dolorem harum nostrum</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="images/happy-client/img-2.jpg"
									alt="">
							</div>
							<div class="info">
								<h4 class="name">Nick Karvounis</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Nemo illo cupiditate temporibus sapiente,
									sint, voluptatibus tempora esse. Consectetur voluptate nihil
									quo nulla voluptatem dolorem harum nostrum</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="images/happy-client/img-3.jpg"
									alt="">
							</div>
							<div class="info">
								<h4 class="name">Jaelynn Castillo</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Nemo illo cupiditate temporibus sapiente,
									sint, voluptatibus tempora esse. Consectetur voluptate nihil
									quo nulla voluptatem dolorem harum nostrum</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="images/happy-client/img-4.jpg"
									alt="">
							</div>
							<div class="info">
								<h4 class="name">Mike Petrucci</h4>
								<span class="regency">Graphic Design</span>
								<p class="desc">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Nemo illo cupiditate temporibus sapiente,
									sint, voluptatibus tempora esse. Consectetur voluptate nihil
									quo nulla voluptatem dolorem harum nostrum</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#nino-happyClient-->


	<!-- Scroll to top
    ================================================== -->
	<a href="#" id="nino-scrollToTop">Go to Top</a>

	<!-- javascript -->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.hoverdir.js"></script>
	<script type="text/javascript"
		src="resources/js/modernizr.custom.97074.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="resources/js/unslider-min.js"></script>
	<script type="text/javascript" src="resources/js/template.js"></script>
	<script type="text/javascript" src="resources/js/weatherAPI.js?var=1"></script>
	
	<script type="text/javascript">
		$(function() {
			$.ajax({
				url : "slidelist",
				success : function(result) {
					$('#nino-slider').html(result);
				}
			});

			$.ajax({
				url : "likelist",
				success : function(result) {
					$('.nino-hoverEffect').html(result);
				}
			});

			$.ajax({
				url : "slideshow",
				success : function(result) {
					console.log(result)
					$('#d1').html(result);
				}
			});
		});
	</script>
	<script type="text/javascript" src="resources/js/slideshow.js"></script>
	

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<!-- css3-mediaqueries.js for IE less than 9 -->
	<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
	
</body>
</html>