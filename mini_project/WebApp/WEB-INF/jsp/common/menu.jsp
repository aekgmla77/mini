<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
	<!-- 메뉴바 Start -->
	<div class="navbar navbar-expand-lg bg-light navbar-light">
		<div class="container-fluid">
			<a href="main.do" class="navbar-brand">YD <span>Dosirak</span></a>
			<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
				<div class="navbar-nav ml-auto">
					<a href="food.do" class="nav-item nav-link">메뉴</a>
					<a href="franchise.do" class="nav-item nav-link">창업</a>
					<a href="store.do" class="nav-item nav-link">매장</a>
					<a href="board.do" class="nav-item nav-link">게시판</a>
					<div class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown">브랜드</a>
						<div class="dropdown-menu">
							<a href="brand.do" class="dropdown-item">소개</a>
							<a href="feature.do" class="dropdown-item">특징</a>
							<a href="map.do" class="dropdown-item">오시는길</a>
						</div>
					</div>
					<c:if test="${admin eq null }">
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown">회원</a>
							<div class="dropdown-menu">
								<a href="createUser.do" class="dropdown-item">회원가입</a>
								<a href="loginForm.do" class="dropdown-item">로그인</a>
							</div>
						</div>
					</c:if>
					<c:if test="${admin eq 'Y' }">
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown">관리</a>
							<div class="dropdown-menu">
								<a href="memberList.do" class="dropdown-item">회원관리</a>
								<a href="foodList.do" class="dropdown-item">메뉴관리</a>
								<a href="storeList.do" class="dropdown-item">매장관리</a>
								<a href="franchiseList.do" class="dropdown-item">창업문의관리</a>
							</div>
						</div>
					</c:if>
					<c:if test="${admin ne null }">
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown">마이페이지</a>
							<div class="dropdown-menu">
								<a href="myEditForm.do?mIda=${id }" class="dropdown-item">수정</a>
								<a href="logOut.do" class="dropdown-item">로그아웃</a>
						</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<!-- 메뉴바 End -->