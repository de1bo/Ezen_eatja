<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/><!-- gender -->

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
<link href="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"> <!-- 달력 -->
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>	<!-- 달력 -->
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script> <!-- 달력 -->
<link href="/infra/resources/css/style.css" rel="stylesheet">


</head>

<body>
<img src="/infra/resources/images/regist.png" alt="../../../images/ro1.jpg" style="width: 100%;">

<br><br>
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
      <div class="row g-3">
      <div class="col-md-4">
      </div>
      <div class="col-md-4" style="text-align: center;">
	                <input type="radio" class="btn-check" id="RegistType1" name="ifmmRegistTypeCd"  autocomplete="off" value="3">
	                <label class="btn btn-outline-primary" for="RegistType1">일반 사용자</label> 
	                <input type="radio" class="btn-check" id="RegistType2" name="ifmmRegistTypeCd"  autocomplete="off" value="2">
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
        회원정보
      </button>
    </h2>
    </div>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
      <div class="accordion-body">
        <div class="row g-3" style="padding: 20px;">
            <div class="col-md-6">
	                <label for="name" class="form-label">이름</label>
	                <input type="text" class="form-control" id="ifmmName" name="ifmmName">
	          <div class="invalid-feedback">
                Credit card number is required
              </div>     
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
	                <input type="password" class="form-control">
              </div>
              <div class="col-md-6">
              
              
                  	<label for="gender" class="form-label">성별</label><br>
	                <input type="radio" class="btn-check" id="Gender1" name="ifmmGenderCd" value="5">
	                <label class="btn btn-outline-primary" for="Gender1">남</label> 
	                <input type="radio" class="btn-check" id="Gender2" name="ifmmGenderCd" value="6" autocomplete="off">
	                <label class="btn btn-outline-primary" for="Gender2">녀</label>
                </div>
                
               <div class="col-md-6">
	               	<label for="birthday" class="form-label">생일</label>
	               	<input type="text" class="form-control" id="ifmmBirthday" name="ifmmBirthday">
               </div>
               
               <label for="tel" class="form-label">휴대폰</label>
				 <div class="input-group">
				 <div class="col-md-2">	 
				 <select id="ifmpTelecomCd" name="ifmpTelecomCd" class="form-select form-select-sm">
				 	<option value="">::선택::</option>
				 	<option value="18">SKT</option>
				 	<option value="19">KT</option>
				 	<option value="20">LGU+</option>
				 </select>
				 
				</div>
				
				<div class="col-md-4">
	               	       <input type="text" id="ifmpNumber" name="ifmpNumber" class="form-control" value="" title="전화번호를 입력하세요." placeholder="00*-000*-0000" maxlength="13">
	           	</div>
	           	<div class="col-md-4">
	           	<button class="btn btn-outline-primary">인증</button>
	           	</div>
	            </div>
<%--  				<input type="hidden" id="ifmpDefaultNyArray0" name="ifmpDefaultNyArray" value="1">
 				<input type="hidden" id="ifmpTypeCdArray0" name="ifmpTypeCdArray" value="54">
 				<input type="hidden" id="ifmpDeviceCdArray0" name="ifmpDeviceCdArray" value="58">	<!-- 필요없는 부분 --> 				
 				<label for="ifmpTelecomCdArray0" class="form-label">통신사</label>	
 				<select id="ifmpTelecomCdArray0" name="ifmpTelecomCdArray" class="form-select form-select-sm">
 					<option value="">::선택::</option>
 						<c:forEach items="${listCodeTelecom}" var="itemTelecom" varStatus="statusTelecom">
 					<option value="<c:out value="${itemTelecom.ifcdSeq}"/>" <c:if test="${20 eq itemTelecom.ifcdSeq }">selected</c:if>><c:out value="${itemTelecom.ifcdName }"/></option>
 						</c:forEach>	
             	</select>
             	
             	<label for="ifmpNumberArray0" class="form-label">핸드폰</label>
             	<input type="text" id="ifmpNumberArray0" name="ifmpNumberArray" value="<c:out value="${ifmpNumber}"/>" maxlength="11" placeholder="숫자만 (0104447777)" class="form-control form-control-sm">
             	 --%>
	          	<div class="col-md-12">
	           		 <label for="tel" class="form-label">전화번호</label>
	         	     <input type="tel" id="ifmpHomeTel" name="ifmpHomeTel" class="form-control" id="tlno" title="전화번호를 입력하세요." placeholder="00*-000*-0000" maxlength="13">
	          	</div>
	          	<div class="row mt-sm-4">
	          	<div class="col-sm-6 mt-3 mt-sm-0">
	          	<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
					<input type="button" class="form-control" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" class="form-control" id="imadAddress1" name="imadAddress1" placeholder="주소"><br>
					<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">
					<input type="text" class="form-control" id="imadAddress2" name="imadAddress2" placeholder="상세주소">
					</div>
				</div>
               			<label for="email" class="form-label">이메일</label>
             	 <div class="input-group mb-6">
				  	<input type="text" class="form-control" id="ifmeEmailAccount" name="ifmeEmailAccount" aria-label="Text input with dropdown button">
  						<select class="form-select" id="ifmeEmailDomainCd" name="ifmeEmailDomainCd">
						    <option selected>Choose...</option>
						    <option value="14">@naver.com</option>
						    <option value="15">@google.com</option>
						    <option value="16">@daum.com</option>
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
							<td colspan="3" align="center">
								<input type="radio" class="btn-check" name="ifmmPushConsentNy" id="option7" value="40" autocomplete="off">
								<label class="btn btn-outline-primary" for="option7">동의</label>
								<input type="radio" class="btn-check" name="ifmmPushConsentNy" id="option8" value="41" autocomplete="off">
								<label class="btn btn-outline-primary" for="option8">거부</label>
							</td>
						</tr>
						<tr>
							<th>이메일 마케팅 수신 동의</th>
							<td colspan="3" align="center">
								<input type="radio" class="btn-check" name="ifmmEmailConsentNy" id="option9" value="40" autocomplete="off">
								<label class="btn btn-outline-primary" for="option9">동의</label>
								<input type="radio" class="btn-check" name="ifmmEmailConsentNy" id="option10" value="41" autocomplete="off">
								<label class="btn btn-outline-primary" for="option10">거부</label>
							</td>
						</tr>
						<tr>
							<th>회원정보 유효 기간</th>
							<td colspan="3" align="center">
							<input type="radio" class="btn-check" name="ifmmPersonerinfoCd" id="option11" value="7" autocomplete="off">
							<label class="btn btn-outline-primary" for="option11">1년</label> 
							<input type="radio" class="btn-check" name="ifmmPersonerinfoCd" id="option12" value="8" autocomplete="off">
							<label class="btn btn-outline-primary" for="option12">3년</label> 
							<input type="radio" class="btn-check" name="ifmmPersonerinfoCd" id="option13" value="9" autocomplete="off">
							<label class="btn btn-outline-primary" for="option13">5년</label> 
							<input type="radio" class="btn-check" name="ifmmPersonerinfoCd" id="option14" value="10" autocomplete="off">
							<label class="btn btn-outline-primary" for="option14">회원 탈퇴시</label> 
							</td>
						</tr>
					</table>
      </div>
    </div>
    </div>
<div style="padding-top: 30px;">
<a href="/infra/member/loginForm" class="btn btn-secondary">취소</a>
<input type="submit" class="btn btn-primary" value="등록" style=" float:right; border-bottom: 30px;">
</div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 주소관련 -->
	<script>
		var myModal = document.getElementById('myModal')
		var myInput = document.getElementById('myInput')

		myModal.addEventListener('shown.bs.modal', function() {
			myInput.focus()
		})
	</script>
<!-- jquery ui -->
<script src="/infra/resources/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script> <!-- 이녀석 여기다가 안놓으면 에러남 -->
<script type="text/javascript">
	$(document).ready(function(){
		 $("#ifmmBirthday").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
</script>
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
                document.getElementById("imadAddress1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("imadAddress2").focus();
            }
        }).open();
    }
</script>


<script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>