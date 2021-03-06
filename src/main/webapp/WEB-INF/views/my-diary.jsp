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
<!-- https://fontawesome.com/start -->
<script src="https://kit.fontawesome.com/f1def33959.js"
	crossorigin="anonymous"></script>
<!-- default css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/format.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mydiary/mydiary.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/header.js"></script>

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
							<a href="${pageContext.request.contextPath}/member/my-diary">My Diary</a>
						</div>
						<c:if test="${empty sessionScope.account.userid}">
                        <div><a href="${pageContext.request.contextPath}/isLogin">?????????</a></div>
                        </c:if>
                        <c:if test="${!empty sessionScope.account.userid}">
                        <div><a href="${pageContext.request.contextPath}/logout">????????????</a></div>
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
								<li><a href="${pageContext.request.contextPath}/lean-mass-up">???????????? + ?????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/diet">?????? ?????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/bulk-up">?????? + ?????? ??????</a></li>
							</ul></li>
						<li><a href="#">Information <span>???</span></a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/q&a">?????? ?????? ?????? Q&A</a></li>
								<li><a href="${pageContext.request.contextPath}/recommend">BalanceDiary ?????? ?????????</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath}/diary-main">???????????? Diary</a></li>
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
									<li><a href="${pageContext.request.contextPath}/lean-mass-up">???????????? + ?????? ??????</a></li>
									<li><a href="${pageContext.request.contextPath}/diet">?????? ?????? ??????</a></li>
									<li><a href="${pageContext.request.contextPath}/bulk-up">?????? + ?????? ??????</a></li>
								</ul></li>
							<li class="menu"><a class="main" href="#">Information</a>
								<ul class="sub">
									<li><a href="${pageContext.request.contextPath}/q&a">?????? ?????? ?????? Q&A</a></li>
									<li><a href="${pageContext.request.contextPath}/recommend">BalanceDiary ?????? ?????????</a></li>
								</ul></li>
							<li><a href="${pageContext.request.contextPath}/diary-main">???????????? Diary</a></li>
							<li><a href="#">????????????</a></li>
						</ul>
					</div>
				</nav>
				<div class="overlay"></div>
			</div>
		</header>
		<main>
			<div class="my-calendar clearfix">
				<div class="calendar-box">
					<div class="ctr-box clearfix">
						<button type="button" title="prev" class="btn-cal prev">
						</button>
						<span class="cal-year"></span> <span class="cal-month"></span> <span
							class="cal-date"></span> <span class="cal-day"></span>
						<button type="button" title="next" class="btn-cal next">
						</button>
					</div>
					<table class="cal-table">
						<thead>
							<tr>
								<th>???</th>
								<th>???</th>
								<th>???</th>
								<th>???</th>
								<th>???</th>
								<th>???</th>
								<th>???</th>
							</tr>
						</thead>
						<tbody class="cal-body"></tbody>
					</table>
				</div>
			</div>

			<article class="today-diary">
				<h2>
					<span class="cal-year"></span> <span class="cal-month"></span> <span
						class="cal-date"></span> <span class="cal-day"></span>
				</h2>
				<h4>???????????? ?????? ?????? ??????????????? ???????????? ?????? ??? ??? ?????????.</h4>
				<label for="morning-btn"><input type="checkbox"
					name="morning-btn" id="mornin-btn">??????</label> <label
					for="lunch-btn"><input type="checkbox" name="lunch-btn"
					id="lunch-btn">??????</label> <label for="dinner-btn"><input
					type="checkbox" name="dinner-btn" id="dinner-btn">??????</label> <label
					for="snack-btn"><input type="checkbox" name="snack-btn"
					id="snack-btn">??????</label> <label for="midnight-btn"><input
					type="checkbox" name="midnight-btn" id="midnight-btn">??????</label>
				<article class="today-diary-content">
					<article class="today-diary-grape">
						<div>????????????</div>
						<div>
							<ul>
								<li>??? ?????? ??????</li>
								<li>????????????</li>
								<li>?????????</li>
								<li>??????</li>
								<li>?????????</li>
							</ul>
						</div>
					</article>
					<div>
						<ul>
							<li>1. ??????????????? 0.6??????(521 kcal</li>
							<li>2. ????????? 0.6??????(293 kcal</li>
							<li>3. ???????????? ????????? 0.6??????(230 kcal</li>
							<li>4 .????????? 0.5??????(142 kcal</li>
							<li>5. ?????? 1 ??? ?????? 0.6??????(15 kcal</li>
						</ul>
					</div>
				</article>
			</article>

			<article class="thismonth-diary">
				<h2>
					<span class="cal-year"></span><span class="cal-month"></span> ?????? ??????
					?????? ??????
				</h2>
				<article class="thismonth-diary-graph">
					<div>????????????</div>
					<div>
						<ul>
							<li>??? ?????? ??????</li>
							<li>????????????</li>
							<li>?????????</li>
							<li>??????</li>
							<li>?????????</li>
						</ul>
					</div>
				</article>
			</article>
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
						src="${pageContext.request.contextPath}/resources/images/ePrivacy.png" alt="ePrivacy"></a> <a
						href="https://www.kns.or.kr"><img src="${pageContext.request.contextPath}/resources/images/kns.png"
						alt="kns"></a> <a href="https://www.mfds.go.kr"><img
						src="${pageContext.request.contextPath}/resources/images/foodsafe.png" alt="foodsafe"></a> <a
						href="https://www.mohw.go.kr"><img src="${pageContext.request.contextPath}/resources/images/bogun.png"
						alt="bogun"></a>
				</div>
				<div class="copyright">
					<h5>Copyright ??? balanceDiary co. Ltd All Rights Reserved.</h5>
				</div>
			</section>
		</footer>
	</div>

	<script type="text/javascript">

	 // calandar
	const init = {
        monList: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
        dayList: ['?????????', '?????????', '?????????', '?????????', '?????????', '?????????', '?????????'],
        today: new Date(),
        monForChange: new Date().getMonth(),
        activeDate: new Date(),
        getFirstDay: (yy, mm) => new Date(yy, mm, 1),
        getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
        nextMonth: function () {
            let d = new Date();
            d.setDate(1);
            d.setMonth(++this.monForChange);
            this.activeDate = d;
            return d;
        },
        prevMonth: function () {
            let d = new Date();
            d.setDate(1);
            d.setMonth(--this.monForChange);
            this.activeDate = d;
            return d;
        },
        addZero: (num) => (num < 10) ? '0' + num : num,
        activeDTag: null,
        getIndex: function (node) {
            let index = 0;
            while (node = node.previousElementSibling) {
            index++;
            }
            return index;
        }
        };

        const $calBody = document.querySelector('.cal-body');
        const $btnNext = document.querySelector('.btn-cal.next');
        const $btnPrev = document.querySelector('.btn-cal.prev');

        /**
         * @param {number} date
         * @param {number} dayIn
        */
        function loadDate (date, dayIn) {
        let calDates = document.querySelectorAll('.cal-date');
        let calDays = document.querySelectorAll('.cal-day');
        calDates.forEach(calDate => {
            calDate.textContent = date+"??? ";
        });
        calDays.forEach(calDay => {
            calDay.textContent = init.dayList[dayIn];
        });

        };

        /**
         * @param {date} fullDate
         */
        function loadYYMM (fullDate) {
        let yy = fullDate.getFullYear();
        let mm = fullDate.getMonth();
        let firstDay = init.getFirstDay(yy, mm);
        let lastDay = init.getLastDay(yy, mm);
        let markToday;  // for marking today date
        
        if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
            markToday = init.today.getDate();
        };

        let calYears = document.querySelectorAll('.cal-year');
        calYears.forEach(year => {
            year.textContent = yy+"??? ";
        });
        let calMonths = document.querySelectorAll('.cal-month');
        calMonths.forEach(month => {
            month.textContent = init.monList[mm];
        });

        let trtd = '';
        let startCount;
        let countDay = 0;
        for (let i = 0; i < 6; i++) {
            trtd += '<tr>';
            for (let j = 0; j < 7; j++) {
            if (i === 0 && !startCount && j === firstDay.getDay()) {
                startCount = 1;
            }
            if (!startCount) {
                trtd += '<td>'
            } else {
                let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
                trtd += '<td class="day';
                trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
                trtd += "data-date="+(countDay + 1)+" data-fdate="+fullDate+">";
            }
            trtd += (startCount) ? ++countDay : '';
            // ************ ????????? ?????? **************
          /*   trtd += '<div>???</div>';
            trtd += '<div>???</div>';
            trtd += '<div>???</div>'; */
            if (countDay === lastDay.getDate()) { 
                startCount = 0; 
            }
            trtd += '</td>';
            }
            trtd += '</tr>';
        }
        $calBody.innerHTML = trtd;
        };

        /**
         * @param {string} val
         */
        function createNewList (val) {
        let id = new Date().getTime() + '';
        let yy = init.activeDate.getFullYear();
        let mm = init.activeDate.getMonth() + 1;
        let dd = init.activeDate.getDate();
        const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

        let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);

        let eventData = {};
        eventData['date'] = date;
        eventData['memo'] = val;
        eventData['complete'] = false;
        eventData['id'] = id;
        // init.event.push(eventData);
        // $todoList.appendChild(createLi(id, val, date));
        };

        loadYYMM(init.today);
        loadDate(init.today.getDate(), init.today.getDay());

        $btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
        $btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

        $calBody.addEventListener('click', (e) => {
            if (e.target.classList.contains('day')) {
                if (init.activeDTag) {
                init.activeDTag.classList.remove('day-active');
                }

                let day = Number(e.target.dataset.date);
                loadDate(day, e.target.cellIndex);
                e.target.classList.add('day-active');
                init.activeDTag = e.target;
                init.activeDate.setDate(day);
            };
        });
    </script>
</body>
</html>