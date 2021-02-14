<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="KO">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title -->
<title>창업문의 관리</title>

<!-- 폰트 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- CSS 라이브러리 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- CSS 스타일 -->
<link href="css/style(admin).css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});

function clickFunc(e){//.children().children().eq(1).html()
	console.log($(e.target).parent().parent().parent().children().eq(1).html());
	$('#fNumber').val($(e.target).parent().parent().parent().children().eq(1).html());
}

function editFunc(e) {
	console.log($(e.target).parent().parent().parent().children().eq(1).html());
	$('#fNumber').val($(e.target).parent().parent().parent().children().eq(1).html());
	$('#fNumber2').val($(e.target).parent().parent().parent().children().eq(1).html());
	$('#fName2').val($(e.target).parent().parent().parent().children().eq(2).html());
	$('#fEmail2').val($(e.target).parent().parent().parent().children().eq(3).html());
	$('#fAge2').val($(e.target).parent().parent().parent().children().eq(4).html());
	$('#fTel2').val($(e.target).parent().parent().parent().children().eq(5).html());
	$('#fAddress2').val($(e.target).parent().parent().parent().children().eq(6).html());
	$('#fContent2').val($(e.target).parent().parent().parent().children().eq(7).html());
}

</script>
</head>
<jsp:include page="../common/menu.jsp" />

<!-- 페이지 내용 Start -->
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2><b>창업문의 관리</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal">
						<i class="material-icons">&#xE15C;</i><span>문의 삭제</span></a>						
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>번호</th>
						<th>이름</th>
						<th>Email</th>
						<th>나이</th>
						<th>연락처</th>
						<th>희망주소</th>
						<th>내용</th>
						<th>정보수정</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vo" items="${list }">
					<tr>
						<td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox1" name="options[]" value="1" onclick="clickFunc(event)">
								<label for="checkbox1"></label>
							</span>
						</td>
						<td>${vo.fNumber }</td>
						<td>${vo.fName }</td>
						<td>${vo.fEmail }</td>
						<td>${vo.fAge }</td>
						<td>${vo.fTel }</td>
						<td>${vo.fAddress }</td>
						<td>${vo.fContent }</td>
						<td>
							<a href="#editEmployeeModal" class="edit" data-toggle="modal" onclick="editFunc(event)">
							<i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
							<a href="#deleteEmployeeModal" class="delete" data-toggle="modal" onclick='clickFunc(event)'>
							<i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>        
</div>
<!-- 문의 내용 수정 Modal -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="franchiseUpdate.do" method="post">
				<div class="modal-header">
					<h4 class="modal-title">문의 내용 수정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>번호</label>
						<input type="text" class="form-control"	id="fNumber2" name="fNumber2" required readonly="readonly">
					</div>
					<div class="form-group">
						<label>이름</label>
						<input type="text" class="form-control" id="fName2" name="fName2" required>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="text" class="form-control" id="fEmail2" name="fEmail2" required>
					</div>
					<div class="form-group">
						<label>나이</label>
						<input type="text" class="form-control" id="fAge2" name="fAge2" required>
					</div>
					<div class="form-group">
						<label>연락처</label>
						<input type="text" class="form-control" id="fTel2" name="fTel2" required>
					</div>
					<div class="form-group">
						<label>희망 주소</label>
						<input type="text" class="form-control" id="fAddress2" name="fAddress2" required>
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" id="fContent2" name="fContent2" required></textarea>
					</div>
				</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
						<input type="submit" class="btn btn-info" value="저장">
					</div>
			</form>
		</div>
	</div>
</div>
<!-- 문의 삭제 Modal -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="franchiseDelete.do" method="post">
			<input type="hidden" id="fNumber" name="fNumber">
				<div class="modal-header">						
					<h4 class="modal-title">문의 내용 삭제</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>정말로 문의 내용을 삭제하시겠습니까?</p>
					<p class="text-warning"><small>이 작업은 되돌릴 수 없습니다.</small></p>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-danger" value="삭제">
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>