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
				<h2>Board</h2>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End -->
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>no</th>
					<th>contents</th>
					<th>userName</th>
					<th>수정 / 삭제</th>
				</tr>
			</thead>
			<tbody>
			<!-- 	<c:forEach var="board" items="${boardList}"> -->
					<tr id="tr${board.bno}">
						<td>${board.bno}</td>
						<td><a href="/board/${board.bno}">${board.contents}</a></td>
						<td>${board.userName}</td>
						<td>
							<div class="btn-group">
								<button name="modify" value="${board.bno}"
									class="btn btn-xs btn-warning">수정</button>
								<button name="delete" value="${board.bno}"
									class="btn btn-xs btn-danger">삭제</button>
							</div>
						</td>
					</tr>
				<!-- </c:forEach> -->
			</tbody>
		</table>
		<%-- <jsp:include page="../include/modal.jsp" /> --%>
		<button id="createBtn" type="button" class="btn btn-info btn-sm"
			data-toggle="modal">새 글 쓰기</button>
	</div>
</body>
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />
