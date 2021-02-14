<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>YD Dosirak</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free Website Template" name="keywords">
<meta content="Free Website Template" name="description">

<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Nunito:600,700" rel="stylesheet">

<!-- CSS 라이브러리 -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

<!-- CSS 스타일 -->
<link href="css/style.css" rel="stylesheet">
</head>
<jsp:include page="../common/menu.jsp" />

<!-- 페이지 내용 Start -->
<!-- Page Header Start -->
<div class="page-header mb-0">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2>About Us</h2>			
			<div class="col-12">
				<a href="feature.do">Feature</a> <a href="map.do">Visit us</a>
			</div>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End -->

<!-- About Start -->
<div class="about">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6">
				<div class="about-img">
					<img src="img/about.jpg" alt="Image">
					<button type="button" class="btn-play" data-toggle="modal"
						data-src="https://www.youtube.com/embed/o06UZfoHeLU"
						data-target="#videoModal">
						<span></span>
					</button>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="about-content">
					<div class="section-header">
						<p>About Us</p>
						<h3>YD도시락은 행복한 삶을 추구하는<br>
							지식프랜차이즈 기업입니다.</h3>
					</div>
					<div class="about-text">
						<p>건강한 우리 음식을 고객 모두가 더욱 편리하고, 맛있게, 그리고 믿고 즐길 수<br>
						   있도록 도시락을 꾸준히 연구하고 있습니다. YD도시락은 도시락에 대한 끊임<br>
						   없는 궁금증과 열정, 오랜 경험을 바탕으로 고객이 '어디에서나 쉽게 만날 수<br>
						   있는' 도시락 전문 프랜차이즈 기업으로 완성해 나가고 있습니다.</p>
						<p>저희는 쌀의 맛과 가격을 위하여 정기적으로 전국 무세미 rpc의 쌀을 엄격한<br>
						   테스트를 통하여 선정하고 있습니다. 김치는 땅 좋고 물 맑은 해남, 평창, 태백<br>
						   등에서 재배한 배추에 국내산 고춧가루, 고기는 청정 호주산 S등급의 목심만<br> 
						   사용하여 엄격한 품질관리를 통해 최상의 품질을 유지합니다.<br>
						   또한, 점주교육을 통해 외식업에 대한 철학을 공유하며 따끈한 한 끼의 힘에<br>
						   대해 늘 고민합니다.<br>
						   무엇보다도 이 세상 누구보다 도시락을 사랑합니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- About End -->


<!-- Video Modal Start-->
<div class="modal fade" id="videoModal" tabindex="-1" role="dialog"	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<!-- 16:9 aspect ratio -->
				<div class="embed-responsive embed-responsive-16by9">
					<iframe class="embed-responsive-item" src="" id="video"	allowscriptaccess="always" allow="autoplay"></iframe>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Video Modal End -->
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />
