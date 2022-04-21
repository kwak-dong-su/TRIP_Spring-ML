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

</head>

<body data-target="#nino-navbar" data-spy="scroll">

<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner">
			<%
				if (session.getAttribute("적을내용") == null) {
			%>
			<jsp:include page="header.jsp"></jsp:include>
			<%
				} else {
			%>
			<jsp:include page="header2.jsp"></jsp:include>
			<%
				}
			%>
			<section id="nino-slider" class="carousel slide container" data-ride="carousel">
			</section>
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
				</ul>
			</div>
		</div>
	</section>
	<!--/#nino-story-->

	<!-- 추천수 top 3
    ================================================== -->
	<section id="nino-story">
		<div class="container">
			<h2 class="nino-sectionHeading">추천 여행지 top3</h2>
			<div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" href="#"> <span class="content"> <i
									class="mdi mdi-account-multiple nino-icon"></i> super team
							</span> <img src="resources/images/story/img-1.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" href="#"> <span class="content"> <i
									class="mdi mdi-image-filter-center-focus-weak nino-icon"></i>
									Creativity
							</span> <img src="images/story/img-2.jpg" alt="">
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<a class="overlay" href="#"> <span class="content"> <i
									class="mdi mdi-airplay nino-icon"></i> Digital
							</span> <img src="images/story/img-3.jpg" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#nino-story-->

	<!-- Unique Design
    ================================================== -->
	<section id="nino-uniqueDesign">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">For all devices</span> 써 먹을 방법이 있을까?
			</h2>
			<div class="sectionContent">
				<div class="nino-devices">
					<img class="tablet" src="images/unique-design/img-1.png" alt="">
					<img class="mobile" src="images/unique-design/img-2.png" alt="">
				</div>
			</div>
		</div>
	</section>
	<!--/#nino-uniqueDesign-->


	<!-- Portfolio
    ================================================== -->
	<section id="nino-portfolio">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">What we do</span> some of our work
			</h2>
			<p class="nino-sectionDesc">Lorem ipsum dolor sit amet,
				consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
				labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat.</p>
		</div>
		<div class="sectionContent">
			<ul class="nino-portfolioItems">
				<li class="item"><a class="nino-prettyPhoto"
					rel="prettyPhoto[gallery1]" title="Development Mobile"
					href="images/our-work/img-1.jpg"> <img
						src="resources/images/our-work/img-1.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-crown nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
				</a></li>
				<li class="item"><a class="nino-prettyPhoto"
					rel="prettyPhoto[gallery1]" title="Development Mobile"
					href="images/our-work/img-2.jpg"> <img
						src="resources/images/our-work/img-2.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-cube-outline nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
				</a></li>
				<li class="item"><a class="nino-prettyPhoto"
					rel="prettyPhoto[gallery1]" title="Development Mobile"
					href="images/our-work/img-3.jpg"> <img
						src="resources/images/our-work/img-3.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-desktop-mac nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
				</a></li>
				<li class="item"><a class="nino-prettyPhoto"
					rel="prettyPhoto[gallery1]" title="Development Mobile"
					href="images/our-work/img-4.jpg"> <img
						src="resources/images/our-work/img-4.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-flower nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
				</a></li>
				<li class="item"><a class="nino-prettyPhoto"
					rel="prettyPhoto[gallery1]" title="Development Mobile"
					href="images/our-work/img-5.jpg"> <img
						src="resources/images/our-work/img-5.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-gamepad-variant nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
				</a></li>
				<li class="item"><a class="nino-prettyPhoto"
					rel="prettyPhoto[gallery1]" title="Development Mobile"
					href="images/our-work/img-6.jpg"> <img
						src="resources/images/our-work/img-6.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-gnome nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
				</a></li>
				<li class="item"><a class="nino-prettyPhoto"
					rel="prettyPhoto[gallery1]" title="Development Mobile"
					href="images/our-work/img-7.jpg"> <img
						src="resources/images/our-work/img-7.jpg" />
						<div class="overlay">
							<div class="content">
								<i class="mdi mdi-guitar-electric nino-icon"></i>
								<h4 class="title">creatively designed</h4>
								<span class="desc">Lorem ipsum dolor sit</span>
							</div>
						</div>
				</a></li>
			</ul>
		</div>
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
				url : "mainlist",
				success : function(result) {
					$('#nino-slider').html(result);
				}
			});
		});
	</script>


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