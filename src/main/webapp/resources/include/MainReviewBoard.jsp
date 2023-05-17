<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" href="resources/css/MainReviewBoard.css">

</head>
<body>
	<!-- <div id="commonpart_issue" class="commonpart blue section_openissue"
		data-site="webzine">
		<div class="common_header">
			<h3 class="common_title common_title04">
				<a href="https://www.inven.co.kr/board/webzine/2097?iskin=webzine">리뷰글</a>
			</h3>
			<ul class="category_tab">
				<li>
					<button class="btn" data-tab="tab1"
						data-src="https://www.inven.co.kr/board/webzine/2097?iskin=webzine">배스트</button>
				</li>
				<li>
					<button class="btn" data-tab="tab2"
						data-src="https://www.inven.co.kr/board/webzine/2097?iskin=webzine&amp;category=%EC%9C%A0%EB%A8%B8">최신글</button>
				</li>

			</ul>
		</div>
		<ul class="openissue_list">
			<li><a href="#"><div class="thumb">
						<img src="#">
					</div></a>
				<p class="text">
					<a href="#"><strong class="title">리라 근황 ㄷㄷ</strong></a><span
						class="category">기타</span>
				</p></li>
			<li><a href="#"><div class="thumb">
						<img src="#">
					</div></a>
				<p class="text">
					<a href="#"><strong class="title">(ㅎㅂ)
							2D????2.5D????3D</strong></a><span class="category">계층</span>
				</p></li>
			<li><a href="#"><div class="thumb">
						<img src="#">
					</div></a>
				<p class="text">
					<a href="#"><strong class="title">튀르키예 떡상 ㄷㄷ</strong></a><span
						class="category">기타</span>
				</p></li>
			<li><a href="#"><div class="thumb">
						<img src="#">
					</div></a>
				<p class="text">
					<a href="#"><strong class="title">고인물</strong></a><span
						class="category">기타</span>
				</p></li>
			<li><a href="#"><div class="thumb">
						<img src="#">
					</div></a>
				<p class="text">
					<a href="#"><strong class="title">한문철이 제보자편 안든 사고</strong></a><span
						class="category">기타</span>
				</p></li>
			<li><a href="#"><div class="thumb">
						<img src="#">
					</div></a>
				<p class="text">
					<a href="#"><strong class="title">에코프로 근황 ㄷㄷ</strong></a><span
						class="category">기타</span>
				</p></li>
		</ul>
	</div> -->

	<section class="visual">
		<div>
			<a href="/ReviewDetailMapping"> <!-- src 나중에 수정 --> <img
				src="https://chestercathedral.com/wp-content/uploads/2016/04/The-Snowman-200px-x-200px.jpg"
				alt="Click me!">
			</a>
		</div>

		<div>
			<a href="/ReviewDetailMapping"> <!-- src 나중에 수정 --> <img
				src="https://chestercathedral.com/wp-content/uploads/2016/04/The-Snowman-200px-x-200px.jpg"
				alt="Click me!">
			</a>
		</div>

		<div>
			<a href="/ReviewDetailMapping"> <!-- src 나중에 수정 --> <img
				src="https://chestercathedral.com/wp-content/uploads/2016/04/The-Snowman-200px-x-200px.jpg"
				alt="Click me!">
			</a>
		</div>

		<div>
			<a href="/ReviewDetailMapping"> <!-- src 나중에 수정 --> <img
				src="https://chestercathedral.com/wp-content/uploads/2016/04/The-Snowman-200px-x-200px.jpg"
				alt="Click me!">
			</a>
		</div>
	</section>

	<script type="text/javascript">
		$('.visual').slick({
			dots : true,
			infinite : false,
			speed : 300,
			slidesToShow : 4,
			slidesToScroll : 4,
			responsive : [ {
				breakpoint : 1024,
				settings : {
					slidesToShow : 3,
					slidesToScroll : 3,
					infinite : true,
					dots : true
				}
			}, {
				breakpoint : 600,
				settings : {
					slidesToShow : 2,
					slidesToScroll : 2
				}
			}, {
				breakpoint : 480,
				settings : {
					slidesToShow : 1,
					slidesToScroll : 1
				}
			}

			]
		});
	</script>

</body>

</html>