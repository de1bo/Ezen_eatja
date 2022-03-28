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
<link href="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/infra/resources/css/style.css" rel="stylesheet">
</head>

<body>
<header>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="/infra/resources/images/place-setting.svg" height="45" width="45"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
      <form class="navbar-nav me-auto mb-2 mb-md-0">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="button">Search</button>
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
<img src="/infra/resources/images/regist.png" alt="../../../images/ro1.jpg" style="width: 100%; padding-top: 50px;">

<br><br>
<form method="post" action="/infra/member/memberInst">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }"/>">
	<input type="hidden" name="shOption" value="<c:out value="${vo.shOption }"/>">
	<input type="hidden" name="shValue" value="<c:out value="${vo.shValue }"/>">
	<input type="hidden" name="">
<div class="accordion" id="accordionPanelsStayOpenExample" style="width: 100%">

  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        회원 유형
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
      <div class="accordion-body">
      <div class="row g-3">
      <div class="col-md-4">
      </div>
      <div class="col-md-4" style="text-align: center;">
	                <input type="radio" class="btn-check" id="RegistType1" name="ifmmRegistTypeCd"  autocomplete="off" name="ifmmRegistType">
	                <label class="btn btn-outline-primary" for="RegistType1">일반 사용자</label> 
	                <input type="radio" class="btn-check" id="RegistType2" name="ifmmRegistTypeCd"  autocomplete="off" name="ifmmRegistType">
	                <label class="btn btn-outline-primary" for="RegistType2">사업자</label>
	                </div>
	                <div class="col-md-4">
      </div>
	   </div>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
        개인정보
      </button>
    </h2>
    </div>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
      <div class="accordion-body">
        <div class="row g-3" style="padding: 20px;">
            <div class="col-md-6">
	                <label for="name" class="form-label">이름</label>
	                <input type="text" class="form-control" id="ifmmName" name="ifmmName">
              </div>
              <div class="col-md-6">
	                <label for="inputEmail1" class="form-label">아이디</label>
	                <input type="text" class="form-control" id="ifmmId" name="ifmmId">
              </div>
              <div class="col-md-6">
	                <label for="inputPassword1" class="form-label">비밀번호</label>
	                <input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword">
              </div>
              <div class="col-md-6">
	                <label for="inputPassword2" class="form-label">비밀번호 확인</label>
	                <input type="password" class="form-control"  >
              </div>
              <div class="col-md-6">
              
              
                  	<label for="gender" class="form-label">성별</label><br>
	                <input type="radio" class="btn-check" id="Gender1" name="ifmmGenderCd" value="1">
	                <label class="btn btn-outline-primary" for="Gender1">남</label> 
	                <input type="radio" class="btn-check" id="Gender2" name="ifmmGenderCd" value="2" autocomplete="off">
	                <label class="btn btn-outline-primary" for="Gender2">녀</label>
                </div>
                
               <div class="col-md-6">
	               	<label for="birthday" class="form-label">생일</label>
	               	<input type="date" class="form-control" id="ifmmBirthday" name="ifmmBirthday">
               </div>
               <label for="tel" class="form-label">휴대폰</label>
				 <div class="input-group">
				 <div class="col-md-2">
					<select class="form-select" id="ifmpTelecomCd" name="ifmpTelecomCd">
						    <option selected>통신사</option>
						    <option value="1">SKT</option>
						    <option value="2">KT</option>
						    <option value="3">LGU+</option>
						    <option value="4">알뜰폰</option>
					 </select>
				</div>
				
				<div class="col-md-4">
	               	       <input type="tel" id="ifmpNumber" name="ifmpNumber" class="form-control" id="tlno" title="전화번호를 입력하세요." placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="13">
	           	</div>
	           	<div class="col-md-4">
	           	<button class="btn btn-outline-primary">인증</button>
	           	</div>
	            </div>
	            <div class="col-md-6">
	          		<label for="nation" class="form-label">추천인</label>
	          		<input type="text" class="form-control" id="ifmmRecommendSeq" name="ifmmRecommendSeq">
	          	</div>
	          	<div class="col-md-6">
	           		 <label for="tel" class="form-label">전화번호</label>
	         	     <input type="tel" id="ifmpHomeTel" name="ifmpHomeTel" class="form-control" id="tlno" title="전화번호를 입력하세요." placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="13">
	          	</div>
	          <!-- 	<div class="row mt-sm-4">
	          		<div class="col-sm-6 mt-3 mt-sm-0">
	          			<input type="hidden" id="ifmaDefaultNyArray0" name="ifmaDefaultNyArray" value="1">
	          			<input type="hidden" id="ifmaTypeCdArray0" name="ifmaTypeCdArray" value="78">
	          			<input type="hidden" id="ifmaTitleArray0" name="ifmaTitleArray" value="기본">
	          			<input type="hidden" id="ifmaAddressExtraArray0" name="ifmaAddressExtraArray" value="기본">
	          			<label for="memZip" class="form-label">주소 (한국전용)</label>
	          			<div class="input-group input-group-sm">
	          				<input type="text" id="ifmaZipcodeArray0" name="ifmaZipcodeArray" value="" placeholder="우편번호" class="form-control" readonly>
	          				<button type="button" id="btnAddress" class="btn btn-outline-secondary"><i class="fas fa-search"></i></button>
	          				<button type="button" id="btnAddressClear" class="btn btn-outline-secondary"><i class="fa-solid fa-x"></i></button>
	          			</div>
	          			<input type="text" id="ifmaAddress1Array0" name="ifmaAddress1Array" value="" placeholder="주소" class="form-control form-fontrol-sm mt-2" readonly">
	          			<input type="text" id="ifmaAddress2Array0" name="ifmaAddress2Array" value="" maxlength="50" placeholder="상세 주소" class="form-control form-control-sm mt-2">
	          		</div>
	          	</div> -->
	          	<div class="row mt-sm-4">
	          	<div class="col-sm-6 mt-3 mt-sm-0">
	          	<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
					<input type="button" class="form-control" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" class="form-control" id="sample6_address" placeholder="주소"><br>
					<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">
					<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
					</div>
				</div>
               			<label for="email" class="form-label">이메일</label>
             	 <div class="input-group mb-6">
				  	<input type="text" class="form-control" aria-label="Text input with dropdown button">
  						<select class="form-select" id="ifmeEmailDomainCd" name="ifmeEmailDomainCd">
						    <option selected>Choose...</option>
						    <option value="1">@naver.com</option>
						    <option value="2">@google.com</option>
						    <option value="3">@daum.com</option>
					  	</select>
					</div>		
				</div>
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
<input type="submit" class="btn btn-primary" style=" float:right; border-bottom: 30px;">
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

	$("btnAddress").on("click", function(){
		sample4_execDaumPostcode();
	});
	
	$("#btnAddressClear").on("click", function(){
		$("#ifmaZipcodeArray0").val('');
		$("#ifmaAddress1Array0").val('');
	});
	
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
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
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
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
<script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



	