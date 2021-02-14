<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>YD Dosirak</title>

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
<div class="carousel">
	<div class="container-fluid">
		<div class="owl-carousel">
			<div class="carousel-item">
				<div class="carousel-img">
					<img src="img/carousel-1.jpg" alt="Image">
				</div>
				<div class="carousel-text">
					<h1>도시락에 <span>품격을</span> 담다</h1>
					<p>언제나 가격 이상의 가치를 누리실 수 있도록 접객 서비스와 청결까지
					   늘 고민하며 갓 지은 솥밥과 같은 한 끼를 대접하겠습니다.</p>
					<div class="carousel-btn">
						<a class="btn custom-btn" href="food.do">메뉴 보기</a>
						<a class="btn custom-btn" href="franchise.do">창업 문의</a>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="carousel-img">
					<img src="img/carousel-2.jpg" alt="Image">
				</div>
				<div class="carousel-text">
					<h1>믿을수<span> 있는 </span>음식</h1>
					<p>'모든 음식은 정직한 요리'라는 요리철학과 신념을 실천하겠습니다.</p>
					<div class="carousel-btn">
						<a class="btn custom-btn" href="food.do">메뉴 보기</a>
						<a class="btn custom-btn" href="franchise.do">창업 문의</a>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="carousel-img">
					<img src="img/carousel-3.jpg" alt="Image">
				</div>
				<div class="carousel-text">
					<h1>당신을 <span>위한</span> 도시락</h1>
					<p>오늘도 소중한 고객의 제대로된 한 끼를 위해 정성껏 식사를 만듭니다.</p>
					<div class="carousel-btn">
						<a class="btn custom-btn" href="food.do">메뉴 보기</a>
						<a class="btn custom-btn" href="franchise.do">창업 문의</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />