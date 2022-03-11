<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	#jal {
	font-family: "jal";
}
</style>
<title>회원가입</title>
<!-- <link href="../../../_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="../../../css/style.css" rel="stylesheet">
</head>

<body>
<header>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="../../../images/place-setting.svg" height="45" width="45"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
      <form class="navbar-nav me-auto mb-2 mb-md-0">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#"><h5>고객 관리</h5></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><h5>메인메뉴</h5></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><h5>먹거리 추천</h5></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><h5>랜덤 추천</h5></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><h5>리뷰</h5></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><h5>고객센터</h5></a>
          </li>
        </ul>
        
      </div>
    </div>
  </nav>
</header>
<img src="../../../images/regist.png" alt="../../../images/ro1.jpg" style="width: 100%; padding-top: 50px;">
  <br><br><br>

	
	 <!-- ★★input 다 하고 id, for, type수정할것★★ 폰트도 신경쓸것 -->
	 <form method="post" action="/infra/member/memberInst">
<div class="accordion" id="accordionPanelsStayOpenExample" style="width: 100%">
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        회원 유형
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
      <div class="accordion-body">
      <form class="row g-3">
      <div class="col-md-4">
      </div>
      <div class="col-md-4" style="text-align: center;">
	                <input type="radio" class="btn-check" name="options7" id="option15" autocomplete="off">
	                <label class="btn btn-outline-primary" for="option15">일반 사용자</label> 
	                <input type="radio" class="btn-check" name="options7" id="option16" autocomplete="off">
	                <label class="btn btn-outline-primary" for="option16">사업자</label>
	                </div>
	                <div class="col-md-4">
      </div>
	                </form>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
        개인정보
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
      <div class="accordion-body">
        <form class="row g-3" style="padding: 20px;">
            <div class="col-md-6">
	                <label for="name" class="form-label">이름</label>
	                	<input type="hidden" name="seq" value="<c:out value="${item.seq}"/>">
	                <input type="text" class="form-control" id="name" name="ifmmName" placeholder="이름" value="<c:out value="${item.ifmmName}"/>">
              </div>
              <div class="col-md-6">
	                <label for="inputEmail1" class="form-label">아이디</label>
	                <input type="email" class="form-control" id="inputEmail4">
              </div>
              <div class="col-md-6">
	                <label for="inputPassword1" class="form-label">비밀번호</label>
	                <input type="password" class="form-control" id="inputPassword1">
              </div>
              <div class="col-md-6">
	                <label for="inputPassword2" class="form-label">비밀번호 확인</label>
	                <input type="password" class="form-control" id="inputPassword2">
              </div>
              <div class="col-md-6">
	                <label for="E_name" class="form-label">이름(영문)</label>
	                <input type="text" class="form-control" id="name_E">
              </div>
               <div class="col-md-6">
	                <label for="FE_name" class="form-label">성(영문)</label>
	                <input type="text" class="form-control" id="FE_name">
              </div>
              <div class="col-md-6">
                  	<label for="gender" class="form-label">성별</label><br>
	                <input type="radio" class="btn-check" name="options1" id="option1">
	                <label class="btn btn-outline-primary" for="option1">남</label> 
	                <input type="radio" class="btn-check" name="options1" id="option2" autocomplete="off">
	                <label class="btn btn-outline-primary" for="option2">녀</label>
                </div>
                
               <div class="col-md-6">
	               	<label for="birthday" class="form-label">생일</label>
	               	<input type="date" class="form-control">
               </div>
               <label for="tel" class="form-label">휴대폰</label>
				 <div class="input-group">
				 <div class="col-md-2">
					<select class="form-select" id="inputGroupSelect01" >
						    <option selected>통신사</option>
						    <option value="1">SKT</option>
						    <option value="2">KT</option>
						    <option value="3">LGU+</option>
						    <option value="4">알뜰폰</option>
					 </select>
				</div>
				
				<div class="col-md-4">
	               	       <input type="tel" name="tlno" class="form-control" id="tlno" title="전화번호를 입력하세요." placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="13">
	           	</div>
	           	<div class="col-md-4">
	           	<button class="btn btn-outline-primary">인증</button>
	           	</div>
	            </div>
	            <div class="col-md-6">
	          		<label for="nation" class="form-label">추천인</label>
	          		<input type="text" class="form-control" id="FE_name">
	          	</div>
	          	<div class="col-md-6">
	           		 <label for="tel" class="form-label">전화번호</label>
	         	     <input type="tel" name="tlno" class="form-control" id="tlno" title="전화번호를 입력하세요." placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="13">
	          	</div>
	          	
	          	<label for="nation" class="form-label">주소</label>
	          	<div class="input-group">
	          		<input type="text" class="form-control" placeholder="" aria-label="Recipient's username" aria-describedby="button-addon2">
					<button class="btn btn-outline-secondary" type="button" id="button-addon2" data-bs-toggle="modal" data-bs-target="#exampleModal">검색하기</button>
						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">주소검색</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
													<!-- 내부 -->
									<div class="input-group mb-3">
										<input type="text" class="form-control" placeholder="예) 판교역로 235, 한남동 714" aria-label="Recipient's username" aria-describedby="button-addon2">
										<button class="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
									</div>
													<br>
													<br>
													<br>
													<h5>
														<strong>Tip</strong>
													</h5>
													<p>도로명이나 지역명을 이용해서 검색해 보세요. 건물번호, 번지를 함께 입력하시면 더욱 정확한
														결과가 검색됩니다.</p>
													<!-- 외부 -->
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">Close</button>
													<button type="button" class="btn btn-primary">Save
														changes</button>
												</div>
											</div>
										</div>
									</div>
					</div>
					<div class="col-md-6">
						<input type="text" class="form-control" placeholder="상세주소">
	          		</div>
               			<label for="email" class="form-label">이메일</label>
             	 <div class="input-group mb-6">
				  	<input type="text" class="form-control" aria-label="Text input with dropdown button">
  						<select class="form-select" id="inputGroupSelect01">
						    <option selected>Choose...</option>
						    <option value="1">@naver.com</option>
						    <option value="2">@google.com</option>
						    <option value="3">@daum.com</option>
					  	</select>
				</div>		
		 </form>

      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        약관 동의
      </button>
    </h2>
    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
      <div class="accordion-body">
        <table class="table table-bordered">

						<tr>
							<th>모바일 마케팅 수신 동의</th>
							<td colspan="3" align="center"><input type="radio" class="btn-check" name="options4"
								id="option7" autocomplete="off"> <label
								class="btn btn-outline-primary" for="option7">동의</label> <input
								type="radio" class="btn-check" name="options4" id="option8"
								autocomplete="off"> <label
								class="btn btn-outline-primary" for="option8">거부</label></td>
						</tr>
						<tr>
							<th>이메일 마케팅 수신 동의</th>
							<td colspan="3" align="center"><input type="radio" class="btn-check" name="options5"
								id="option9" autocomplete="off"> <label
								class="btn btn-outline-primary" for="option9">동의</label> <input
								type="radio" class="btn-check" name="options5" id="option10"
								autocomplete="off"> <label
								class="btn btn-outline-primary" for="option10">거부</label></td>
						</tr>
						<tr>
							<th>개인정보 유효 기간</th>
							<td colspan="3" align="center">
							<input type="radio" class="btn-check" name="options6" id="option11" autocomplete="off">
							<label class="btn btn-outline-primary" for="option11">1년</label> 
							<input type="radio" class="btn-check" name="options6" id="option12" autocomplete="off">
							<label class="btn btn-outline-primary" for="option12">3년</label> 
							<input type="radio" class="btn-check" name="options6" id="option13" autocomplete="off">
							<label class="btn btn-outline-primary" for="option13">5년</label> 
							<input type="radio" class="btn-check" name="options6" id="option14" autocomplete="off">
							<label class="btn btn-outline-primary" for="option14">10년</label> 
							</td>
						</tr>
					</table>

      </div>
    </div>
  </div>
</div>
<button type="submit" class="btn btn-primary" value="제출" style=" float:right; border-bottom: 30px;">등록하기</button>
</form>
<footer class="text-muted py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="../getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
	<script>
		var myModal = document.getElementById('myModal')
		var myInput = document.getElementById('myInput')

		myModal.addEventListener('shown.bs.modal', function() {
			myInput.focus()
		})
	</script>
<script src="../../../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


	