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
<div class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2>Visit us</h2>
			</div>
			<div class="col-12">
				<a href="brand.do">About Us</a> <a href="feature.do">Feature</a>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End -->


<!-- Contact Start -->
<div class="contact">
	<div class="container">
		<div class="section-header text-center">
			<h2>Visit us</h2>
		</div>
		<div class="row align-items-center contact-information">
			<div class="col-md-6 col-lg-3">
				<div class="contact-info">
					<div class="contact-icon">
						<i class="fa fa-map-marker-alt"></i>
					</div>
					<div class="contact-text">
						<h3>Address</h3>
						<p>대구광역시</p>
						<p>중구 국채보상로 537</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3">
				<div class="contact-info">
					<div class="contact-icon">
						<i class="fa fa-phone-alt"></i>
					</div>
					<div class="contact-text">
						<h3>Call Us</h3>
						<p>053-421-2460</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3">
				<div class="contact-info">
					<div class="contact-icon">
						<i class="fa fa-envelope"></i>
					</div>
					<div class="contact-text">
						<h3>Email Us</h3>
						<p>ask@yedam.ac</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3">
				<div class="contact-info">
					<div class="contact-icon">
						<i class="fa fa-share"></i>
					</div>
					<div class="contact-text">
						<h3>Follow Us</h3>
						<div class="contact-social">
							<a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
							<a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a>
							<a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="mapouter">
			<div class="gmap_canvas">
				<iframe width="1110" height="500" id="gmap_canvas"
				src="https://maps.google.com/maps?q=%EB%8C%80%EA%B5%AC%EA%B4%91%EC%97%AD%EC%8B%9C%20%EC%A4%91%EA%B5%AC%20%EA%B5%AD%EC%B1%84%EB%B3%B4%EC%83%81%EB%A1%9C%20537&t=&z=17&ie=UTF8&iwloc=&output=embed"
				frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
				<style>.mapouter{position:relative;text-align:left;height:500px;width:1110;}</style>
				<style>.gmap_canvas {overflow:hidden;background:none!important;height:670px;width:1110px;}</style>
			</div>
		</div>	
	</div>
</div>
<!-- Contact End -->
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />
