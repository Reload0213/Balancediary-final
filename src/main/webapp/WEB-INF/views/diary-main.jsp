<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- swiper -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">

<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


<!-- https://fontawesome.com/start -->
<script src="https://kit.fontawesome.com/f1def33959.js"
	crossorigin="anonymous"></script>
<!-- default css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/format.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/diary/diaryMain.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/header.js"></script>

<style>
* {
	box-sizing: border-box;
}

body {
	text-align: center;
	overflow-x: hidden;
	margin: 0;
	color: #333;
	font-size: 18px;
	line-height: 1.6em;
}

a {
	-webkit-transition: all 0.1s linear;
	transition: all 0.1s linear;
	text-decoration: none;
	color: #333;
}

a:hover {
	-webkit-transform: scale(1.05);
	-moz-transform: scale(1.05);
	-ms-transform: scale(1.05);
	-o-transform: scale(1.05);
	transform: scale(1.05);
}

#container {
	width: 100%;
	height: 100%;
}

p.blank {
	height: 200px;
}
/* main */
#diary-main {
	background:
		url(${pageContext.request.contextPath}/resources/images/diary-main/diary-main.jpg)
		no-repeat;
	background-size: cover;
	width: 100%;
	height: 900px;
	z-index: -10;
	margin-top: 130px;
}

.our-diary {
	width: 100%;
	height: 70vw;
	background:
		url(${pageContext.request.contextPath}/resources/images/diary-main/our-diary-board.jpg)
		no-repeat;
	background-size: cover;
	z-index: -10;
	position: relative;
	padding: 13%;
}

.our-diary-board {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 20px;
}
</style>
</head>
<body>
	<div id="container">
		<header>
			<section id="top-area">
				<section id="top-menu">
					<div>
						<a href="#" class="h-open-btn"><i class="fas fa-bars"></i></a>
					</div>
					<div>
						<a href="${pageContext.request.contextPath}/home"><h1>BalanceDiary</h1></a>
					</div>
					<div class="top-side">
						<div>
							<a href="${pageContext.request.contextPath}/member/my-diary">My
								Diary</a>
						</div>
						<c:if test="${empty sessionScope.account.userid}">
							<div>
								<a href="${pageContext.request.contextPath}/isLogin">?????????</a>
							</div>
						</c:if>
						<c:if test="${!empty sessionScope.account.userid}">
							<div>
								<a href="${pageContext.request.contextPath}/logout">????????????</a>
							</div>
						</c:if>
					</div>
				</section>
				<nav id="top-nav">
					<ul id="nav-menu">
						<li><a href="#">???????????? <span>???</span></a>
							<ul>
								<li><a href="#">?????? ??????</a></li>
								<li><a href="#">?????? ??????</a></li>
							</ul></li>
						<li><a href="#">?????? ????????? <span>???</span></a>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/lean-mass-up">????????????
										+ ?????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/diet">??????
										?????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/bulk-up">??????
										+ ?????? ??????</a></li>
							</ul></li>
						<li><a href="#">Information <span>???</span></a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/q&a">??????
										?????? ?????? Q&A</a></li>
								<li><a href="${pageContext.request.contextPath}/recommend">BalanceDiary
										?????? ?????????</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath}/diary-main">????????????
								Diary</a></li>
						<li><a href="#">????????????</a></li>
					</ul>
				</nav>
			</section>
			<div class="hamburger-container">
				<nav>
					<div class="hamburger_menu">
						<a href="#" class="h-close-btn"><i class="far fa-times-circle"></i></a>
						<div class="logo">
							<a href="#">BalanceDiary</a>
						</div>
						<ul>
							<li class="menu"><a class="main" href="#">?????? ??????</a>
								<ul class="sub">
									<li><a href="">?????? ??????</a></li>
									<li><a href="#">?????? ??????</a></li>
								</ul></li>
							<li class="menu"><a class="main" href="#">???????????????</a>
								<ul class="sub">
									<li><a
										href="${pageContext.request.contextPath}/lean-mass-up">????????????
											+ ?????? ??????</a></li>
									<li><a href="${pageContext.request.contextPath}/diet">??????
											?????? ??????</a></li>
									<li><a href="${pageContext.request.contextPath}/bulk-up">??????
											+ ?????? ??????</a></li>
								</ul></li>
							<li class="menu"><a class="main" href="#">Information</a>
								<ul class="sub">
									<li><a href="${pageContext.request.contextPath}/q&a">??????
											?????? ?????? Q&A</a></li>
									<li><a href="${pageContext.request.contextPath}/recommend">BalanceDiary
											?????? ?????????</a></li>
								</ul></li>
							<li><a href="${pageContext.request.contextPath}/diary-main">????????????
									Diary</a></li>
							<li><a href="#">????????????</a></li>
						</ul>
					</div>
				</nav>
				<div class="overlay"></div>
			</div>
		</header>
		<main>
			<section id="diary-main">
				<h1>???????????? ?????? ????????????</h1>
			</section>
			<p class="blank"></p>
			<section>
				<article class="diary-main-recent">
					<h1>?????? ???????????? ?????? ?????? ????????? Top 5</h1>
					<div class="swiper-container mySwiper1">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/any" />
							</div>
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/animals" />
							</div>
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/nature" />
							</div>
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/people" />
							</div>
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/tech" />
							</div>
						</div>
						<button class="swiper-button-prev1">
							<i class="fas fa-chevron-circle-left"></i>
						</button>
						<button class="swiper-button-next1">
							<i class="fas fa-chevron-circle-right"></i>
						</button>
						<div class="swiper-pagination"></div>
						<div></div>
					</div>
				</article>
				<p class="blank"></p>
				<article class="diary-main-Most">
					<h1>?????? ???????????? ?????? ????????? Top 5</h1>
					<div class="swiper-container mySwiper2">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/any" />
							</div>
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/animals" />
							</div>
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/nature" />
							</div>
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/people" />
							</div>
							<div class="swiper-slide">
								<img src="https://placeimg.com/640/480/tech" />
							</div>
						</div>
						<button class="swiper-button-prev2">
							<i class="fas fa-chevron-circle-left"></i>
						</button>
						<button class="swiper-button-next2">
							<i class="fas fa-chevron-circle-right"></i>
						</button>
						<div class="swiper-pagination"></div>
						<div></div>
					</div>
				</article>
			</section>
			<p class="blank"></p>
			<section class="our-diary">
				<div class="our-diary-title">Our Diary</div>
				<div class="our-diary-board">
					<div>
						<div>?????????</div>
						<div>
							<h5>aaa??? 0000??? ??????</h5>
						</div>
					</div>
					<div>
						<div>?????????</div>
						<div>
							<h5>aaa??? 0000??? ??????</h5>
						</div>
					</div>
					<div>
						<div>?????????</div>
						<div>
							<h5>aaa??? 0000??? ??????</h5>
						</div>
					</div>
					<div>
						<div>?????????</div>
						<div>
							<h5>aaa??? 0000??? ??????</h5>
						</div>
					</div>
					<div>
						<div>?????????</div>
						<div>
							<h5>aaa??? 0000??? ??????</h5>
						</div>
					</div>
					<div>
						<div>?????????</div>
						<div>
							<h5>aaa??? 0000??? ??????</h5>
						</div>
					</div>
					<div>
						<div>?????????</div>
						<div>
							<h5>aaa??? 0000??? ??????</h5>
						</div>
					</div>
					<div>
						<div>?????????</div>
						<div>
							<h5>aaa??? 0000??? ??????</h5>
						</div>
					</div>
				</div>
			</section>
			<a href="${pageContext.request.contextPath}/member/write-diary">??????
				?????? ????????????</a>
		</main>
		<p class="blank"></p>
		<footer>
			<article class="footer-logo">
				<a href="${pageContext.request.contextPath}/home">BalanceDiary</a>
			</article>
			<section class="footer-content-box">
				<nav>
					<ul class="footer-nav">
						<li><a href="#">???????????? ???</a></li>
						<li><a href="#">???????????? ???</a></li>
						<li><a href="#">???????????? ???</a></li>
						<li><a href="#">???????????? ???</a></li>
						<li><a href="#">???????????????????????? ???</a></li>
						<li><a href="#">????????????</a></li>
					</ul>
				</nav>
				<div class="footer-infor">
					<address>
						<h6>(???)?????????????????????</h6>
						<p>????????????: ?????? ??? 00000 | ???????????????: 2011. 11. 11</p>
						<p>?????????: ????????? | ?????????: ????????? | ?????????: ?????? ????????? ???????????????2??? 115 ????????????????????? 3???
							1109???</p>
						<p>???????????????: 2011 11. 11 | ????????????: 02 - 0000 - 0000</p>
					</address>
					<article>
						<h6>?????????????????? 080-777-7777</h6>
						<p>E-mail: BalanceDiary@naver.com</p>
						<p>?????? : 09:00 - 18:00</p>
					</article>
				</div>
				<div class="footer-aBox">
					<a href="https://www.youtube.com"><i class="fab fa-youtube"></i></a>
					<a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
					<a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
					<a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a>
					<a href="https://www.ePrivacy.or.kr"><img
						src="${pageContext.request.contextPath}/resources/images/ePrivacy.png"
						alt="ePrivacy"></a> <a href="https://www.kns.or.kr"><img
						src="${pageContext.request.contextPath}/resources/images/kns.png"
						alt="kns"></a> <a href="https://www.mfds.go.kr"><img
						src="${pageContext.request.contextPath}/resources/images/foodsafe.png"
						alt="foodsafe"></a> <a href="https://www.mohw.go.kr"><img
						src="${pageContext.request.contextPath}/resources/images/bogun.png"
						alt="bogun"></a>
				</div>
				<div class="copyright">
					<h5>Copyright ??? balanceDiary co. Ltd All Rights Reserved.</h5>
				</div>
			</section>
		</footer>
	</div>

	<script type="text/javascript">
		// hot-daily-menu 
		let swiper1 = new Swiper(".mySwiper1", {
			spaceBetween : 30,
			centeredSlides : true,
			autoplay : {
				delay : 2500,
				disableOnInteraction : false,
			},
			pagination : {
				el : ".swiper-pagination",
				clickable : true,
			},
			navigation : {
				nextEl : ".swiper-button-next1",
				prevEl : ".swiper-button-prev1",
			},
		});

		// hot-daily-menu 
		let swiper2 = new Swiper(".mySwiper2", {
			spaceBetween : 30,
			centeredSlides : true,
			autoplay : {
				delay : 2500,
				disableOnInteraction : false,
			},
			pagination : {
				el : ".swiper-pagination",
				clickable : true,
			},
			navigation : {
				nextEl : ".swiper-button-next2",
				prevEl : ".swiper-button-prev2",
			},
		});
	</script>
</body>
</html>