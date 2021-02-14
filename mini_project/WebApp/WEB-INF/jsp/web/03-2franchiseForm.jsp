<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>YD Dosirak</title>

<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Nunito:600,700" rel="stylesheet">

<!-- CSS 라이브러리 -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"	rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

<!-- CSS 스타일 -->
<link href="css/style.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<jsp:include page="../common/menu.jsp" />

<!-- 페이지 내용 Start -->
<!-- Page Header Start -->
<div class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2>Franchise</h2>
			</div>
			<div class="col-12">
				<a href="franchise.do">Why YD?</a>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End -->
<div align="center" class="container">
	<div class="col-md-6">
		<div id="success"></div>
		<form id="frm" name="frm" action="franchiseInsert.do" method="post">
			<h2>프랜차이즈 가맹 문의</h2>
			<div class="control-group">
				<input  type="text" class="form-control" id="fName" name="fName" placeholder="이름" required="required"/>
				<p class="help-block text-danger"></p>
				<input type="text" class="form-control" id="fEmail" name="fEmail" placeholder="Email" required="required"/>
				<p class="help-block text-danger"></p>
				<input type="text" class="form-control" id="fAge" name="fAge" placeholder="나이" required="required"/>
				<p class="help-block text-danger"></p>
				<input type="text" class="form-control" id="fTel" name="fTel" placeholder="연락처" required="required"/>
				<p class="help-block text-danger"></p>
				<input type="text" class="form-control" id="fAddress" name="fAddress" placeholder="창업 희망 지역" required="required"/>
				<p class="help-block text-danger"></p>
				<textarea class="form-control" id="fContent" name="fContent" placeholder="메시지" required="required"></textarea>
				<p class="help-block text-danger"></p>
			</div>
			
			<div>
				<button class="btn custom-btn" type="submit" id="sendMessageButton">창업 문의</button>
			</div>
		</form>
	</div>
</div>
</body>
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />