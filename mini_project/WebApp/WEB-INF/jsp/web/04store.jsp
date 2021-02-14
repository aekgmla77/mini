<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
				<h2>Store</h2>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End -->

<!-- Store Start -->
<div class="blog">
	<div class="container">
		<div class="section-header text-center">
			<h2>Store</h2>
		</div>
		<div class="row">
		<c:forEach var="vo" items="${list }">
			<div class="col-md-6">
				<div class="blog-item">
					<div class="blog-img">
				 		<p><i class="flaticon-image"><img src="/mini_project/img/store/${vo.sImage }" width="400" height="300"></i></p> <!-- 매장 이미지 -->
					</div><br/><br/><br/><br/>
					<div class="blog-content">
						<h2 class="blog-title">${vo.sName }</h2>
						<div class="blog-meta">
							<p>
								<i class="flaticon-street-name"></i>YD 도시락 ${vo.sName }
							</p>
							<p>
								<i class="flaticon-phone-call"></i>${vo.sTel }
							</p>
							<p>
								<i class="flaticon-placeholder"></i>${vo.sAddress }
							</p>
						</div>
						<div class="blog-text">
							<p>${vo.sContent }</p> <!-- 매장정보(상세주소, 이벤트 등) DB & 페이지에 추가 -->
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
</div>
<!-- Store End -->
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />
