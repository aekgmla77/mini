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
				<h2>Franchise</h2>
			</div>
			<div class="col-12">
				<a href="franchiseForm.do">Form</a>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End -->

<!-- Franchise Start -->
<div class="booking">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-7">
				<div class="booking-content">
					<div class="section-header">
						<h2>Why YD 도시락?</h2><br>
						<p>
							‘기본과 정성으로 가맹점 사장님의 행복을 돕는 것’을 사명으로<br>
							 브랜드 창업을 통해 가맹점 사장님들과 그 가족들이 행복할 수 있도록,<br>
							 더 나아가 고객에게 행복이 전달 될 수 있도록 노력하고 있습니다.
						</p>
					</div>
					<div class="about-text">
						<p>
							창업, 그것은 성공과 돈만을 좇다 보면 성공도 돈도 얻을 수 없습니다.<br><br>
							본사만의 이익보다 모두의 이익을 언제나 우선시 합니다.<br><br>
							따끈한 한 끼로 사회에 공헌하겠다는 철학을 지켜왔습니다.<br><br>
							신념과 정직한 경영으로 신뢰받는 외식문화를 만들어가고 있습니다.<br><br>
							착한 사람과 함께라면 저희는 언제나 동행할 준비가 되어 있습니다.
						</p>
					</div>
				</div>
			</div>
			<div class="col-lg-5">
				<div class="booking-form">
					<form>
						<img src="img/franchise.jpg" alt="Image">
						<div><br>
							<button class="btn custom-btn" type="button" onclick="location.href='franchiseForm.do'">창업 문의</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Franchise End -->
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />
