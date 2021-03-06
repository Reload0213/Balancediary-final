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
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- https://fontawesome.com/start -->
<script src="https://kit.fontawesome.com/f1def33959.js"
	crossorigin="anonymous"></script>
<!-- sumernote settiing -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">
	
<!-- default css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/format.css">
<!-- header, footer css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">

<!-- js -->
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
	background-color: #f5f5f5;
}

main {
	width: 100%;
	padding-top: 130px;
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

.loginForm {
	position: absolute;
	width: 300px;
	height: 400px;
	padding: 30px, 20px;
	background-color: #FFFFFF;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 15px;
}

.loginForm h2 {
	text-align: center;
	margin: 30px;
}

.idForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.passForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.id {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.pw {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.btn {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 80%;
	height: 40px;
	background: linear-gradient(125deg, #81ecec, #6c5ce7, #81ecec);
	background-position: left;
	background-size: 200%;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
}

.btn:hover {
	background-position: right;
}

.bottomText {
	text-align: center;
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
									<li><a href="#">?????? ??????</a></li>
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
				<form id="post-form"
					action="${pageContext.request.contextPath}/setdiary" method="post">
					<input type="hidden" name="owner"
						value="${sessionScope.account.userid}"> <label
						for="mcontent">??????</label>
					<textarea class="summernote" name="mcontent"></textarea>

					<label for="lcontent">??????</label>
					<!-- id??? ???????????????? -->
					<textarea class="summernote" name="lcontent"></textarea>

					<label for="dcontent">??????</label>
					<textarea class="summernote" name="dcontent"></textarea>

					<label for="scontent">??????</label>
					<textarea class="summernote" name="scontent"></textarea>

					<label for="mncontent">??????</label>
					<textarea class="summernote" name="mncontent"></textarea>
					<input type="hidden" name="postlist" /> <input type="hidden"
						name="diarylist" />
					<button id="submit">??????</button>
				</form>
		</main>
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
	<script>
		$('.summernote').summernote(
				{
					height : 300, // ????????? ??????
					minHeight : null, // ?????? ??????
					maxHeight : null, // ?????? ??????
					focus : true, // ????????? ????????? ???????????? ????????? ??????
					lang : "ko-KR", // ?????? ??????
					placeholder : '?????? 2048????????? ??? ??? ????????????', //placeholder ??????
					callbacks : { //?????? ????????? ???????????? ???????????? ??????
						onImageUpload : function(files) {
							uploadSummernoteImageFile(files[0], this);
						},
						onPaste : function(e) {
							var clipboardData = e.originalEvent.clipboardData;
							if (clipboardData && clipboardData.items
									&& clipboardData.items.length) {
								var item = clipboardData.items[0];
								if (item.kind === 'file'
										&& item.type.indexOf('image/') !== -1) {
									e.preventDefault();
								}
							}
						}
					}
				});

		/**
		 * ????????? ?????? ?????????
		 */
		function uploadSummernoteImageFile(file, editor) {
			data = new FormData();
			data.append("file", file);
			$
					.ajax({
						data : data,
						type : "POST",
						url : "${pageContext.request.contextPath}/uploadSummernoteImageFile",
						contentType : false,
						processData : false,
						success : function(data) {
							//?????? ???????????? ????????? url??? ????????? ??????.
							$(editor).summernote(
									'insertImage',
									'${pageContext.request.contextPath}'
											+ data.url);
							console.log(data);
						}
					});
		}
	</script>
</body>
</html>