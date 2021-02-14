<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>회원가입</title>

<!-- CSS 라이브러리 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<!-- CSS 스타일 -->
<link href="css/style(login&createUser).css" rel="stylesheet">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	function formCheck() {
		if (frm.mPassword.value != frm.mPasswordc.value) {
			alert("패스워드가 일치하지 않습니다.");

			frm.mPassword.value = null;
			frm.mPasswordc.value = null;
			frm.mPassword.focus();

			return false;
		}

		return true;
	}

	function idCheck(str) {
		var url = "idCheck.do?mId=" + str;
		if (str == "") {
			alert("아이디를 입력하세요!");
			frm.mId.focus();
		} else {
			window.open(url, "아이디 중복 체크",
					"width=500, height=300, top=100, left=100");
		}
	}
	
    function execPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_detailAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_detailAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</head>
<body>
<div class="navbar navbar-expand-lg bg-light navbar-light">
	<div class="container-fluid">
		<a href="main.do" class="navbar-brand">YD <span>Dosirak</span></a>
		<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
		</button>
	</div>
</div>
	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">회원 가입</h4>
			<form id="frm" name="frm" class="form-text" action="memberInsert.do" method="post" onsubmit="return formCheck()">
				<!-- 이름 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-user"></i></span>
					</div>
					<input id="mName" name="mName" class="form-control" placeholder="이름" type="text" required="required">
				</div>
				<!-- ID 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="far fa-address-card"></i></span>
					</div>
					<input name="mId" id="mId" class="form-control" placeholder="ID" type="text" required="required">
					<button class="button btn1" type="button" onclick="idCheck(mId.value)">중복체크</button>
				</div>
				<!-- 비밀번호 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-lock"></i></span>
					</div>
					<input name="mPassword" id="mPassword" class="form-control" placeholder="비밀번호" type="password" required="required">
				</div>
				<!-- 비밀번호 확인 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-lock"></i></span>
					</div>
					<input name="mPasswordc" id="mPasswordc" class="form-control" placeholder="비밀번호 확인" type="password" required="required">
				</div>
				<!-- Email 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-envelope"></i></span>
					</div>
					<input name="mEmail" id="mEmail" class="form-control" placeholder="Email" type="email" required="required">
				</div>
				<!-- 연락처 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fa fa-phone"></i></span>
					</div>
					<input name="mTel" id="mTel" class="form-control" placeholder="연락처(***-****-****)" type="text" required="required">
				</div>
				<!-- 주소 입력 -->						
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="far fa-address-card"></i></span>
					</div>
					<input type="text" id="sample6_postcode" placeholder="우편번호" class="form-control">
					<button class="button btn1" onclick="execPostcode()">우편번호 찾기</button>
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="far fa-address-card"></i></span>
					</div>
					<input type="text" id="sample6_address" name="mAddress" placeholder="주소" class="form-control">
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="far fa-address-card"></i></span>
					</div>
					<input type="text" id="sample6_detailAddress" name="mAddress" placeholder="상세주소" class="form-control">
				</div>
				<!-- 생년월일 입력 -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
						<i class="fas fa-birthday-cake"></i></span>
					</div>
					<input name="mBirth" id="mBirth" class="form-control" placeholder="생년월일(YY/MM/DD)" type="text" required="required">
				</div>
				<!-- form-group End -->
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">회원 가입</button>
				</div>
				<p class="text-center">가입된 회원이십니까? <a href="loginForm.do">로그인</a>
			</form>
		</article>
	</div>
</body>
</html>