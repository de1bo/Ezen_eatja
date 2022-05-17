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
	<title>매장등록</title>
	<link href="/infra/resources/css/store/style.css" rel="stylesheet">
	<link href="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
	            <script src = "/infra/resources/js/common.js"></script><!-- image -->
			<script src = "/infra/resources/js/commonXdmin.js"></script><!-- image -->
			<script src = "/infra/resources/js/constantsXdmin.js"></script><!-- image -->
<style>
@font-face {
		src: url("/infra/resources/fonts/pafreca.ttf");
		font-family: "ft";
}
.ft {
	font-family: "ft";
}
@font-face {
		src: url("/infra/resources/fonts/jalnan.ttf");
		font-family: "jal";
}
.jal {
	font-family: "jal";
}
</style>
</head>
<body>
<header>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark flex-column">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="/infra/resources/images/place-setting.svg" height="45" width="45"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <div class="navbar-toggler-icon"></div>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
      <form class="navbar-nav me-auto mb-2 mb-md-0">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active"  href="#"><h5>메인메뉴</h5></a>
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
<div class="bgImg">
<form method="post" action="/infra/store/storeInst" enctype="multipart/form-data">
<h1 class="display-1 jal">매장 등록</h1>
		<h2>Eatja와 함께하는 매장의 수</h2>
		<ul class="countdown">
                    <li>
                        <span class="hours">06</span>
                    </li>
                </ul>
                
                <div class="mv">
                	<img src="/infra/resources/images/chevron-down.svg" style="width: 20%; height:auto;"  alt="img">
                </div>

	<div class="register">
                <div class="row g-0">
                    <div class="col-md-3 register-left">
                        <img src="/infra/resources/images/place-setting.svg" style="width: 80%; height:auto;"  alt="img"> 
                        <p class="lead">매장을 등록하고 EAT JA와 함께하세요!</p>
                        <h6>입력을 마치셨다면 하단의 매장 등록을 눌러주세요.</h6>
                        <input type="submit" class="btnRegister btn-success" value="매장 등록"><br/>
                    </div>
                    <div class="col-md-9 register-right">
                    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">매장 정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">메뉴</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading jal">매장 정보 입력</h3>
                                <div class="row register-form">
                                <div class="col-md-6">
	                                <div class="form-group">
	                                		<div class="col-sm-6 mt-3 mt-sm-0">
												<label for="file0" class="form-label input-file-button">이미지 첨부</label>
												<input class="form-control form-control-sm" id="file0" name="file0" type="file" multiple="multiple" onChange="upload(0, 2);">
												<div class="addScroll">
													<ul id="ulFile0" class="list-group">
													</ul>
												</div>
								</div>
								
	                                </div>
                                </div>
                                <div class="col-md-6">
	                                <div class="form-group">
	                                		<div class="col-sm-6 mt-3 mt-sm-0">
												<label for="file1" class="form-label input-file-button">파일첨부</label>
												<input class="form-control form-control-sm" id="file1" name="file1" type="file" multiple="multiple" onChange="upload(1, 1);">
												<div class="addScroll">
													<ul id="ulFile1" class="list-group">
													</ul>
												</div>
								</div>
	                                </div>
                                </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        	<label for="name" class="form-label">매장 이름</label>
                                            <input type="text" class="form-control" id="stifName" name="stifName" placeholder="매장 이름" value="" />
                                        </div>
                                        <div class="form-group">
                                      		<label for="name" class="form-label">매장 전화번호</label>
                                            <input type="text" class="form-control" id="stphNumber" name="stphNumber" placeholder="매장 전화번호" value="" />
                                        </div>
                                        <div class="form-group">
                                            <label for="name" class="form-label">매장 영업시간</label>
                                            <input type="text" class="form-control" id="stifOC" name="stifOC"  placeholder="ex) 9AM~6PM" value="" />
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
									                <label for="name" class="form-label">음식종류</label><br>
									                <input type="radio" class="btn-check" id="storeType1" name="stifFoodTypeCd" value="25" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType1">한식</label> 
									                <input type="radio" class="btn-check" id="storeType2" name="stifFoodTypeCd" value="26" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType2">일식</label>
													<input type="radio" class="btn-check" id="storeType3" name="stifFoodTypeCd" value="27" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType3">중식</label>
									                <input type="radio" class="btn-check" id="storeType4" name="stifFoodTypeCd" value="28" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType4">양식</label>
									                <input type="radio" class="btn-check" id="storeType5" name="stifFoodTypeCd" value="29" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType5">세계음식</label>
									                <input type="radio" class="btn-check" id="storeType6" name="stifFoodTypeCd" value="30" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType6">뷔페</label>
									                <input type="radio" class="btn-check" id="storeType7" name="stifFoodTypeCd" value="31" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType7">카페</label>
									                <input type="radio" class="btn-check" id="storeType8" name="stifFoodTypeCd" value="32" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType8">주점</label>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                    	<div class="form-group">
                                        	<label for="name" class="form-label">매장 주소</label>
                                            <div class="row g-0">
									          	<div class="">
									          	<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
													<input type="button" class="form-control" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
													<input type="text" class="form-control" id="stifAddress1" name="stifAddress1" placeholder="주소"><br>
													<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">
													<input type="text" class="form-control" id="stifAddress2" name="stifAddress2" placeholder="상세주소">
													</div>
												</div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
	                                <div class="form-group" align="center">
	                                	<label for="name" class="form-label">매장 소개</label><br>
                        				<textarea name="stifDesc" id="stifDesc" class="form-control" cols="50" rows="5"></textarea>
	                                </div>
                                </div>
                                <div class="col-md-12">
                                    	<div class="form-group">

							</div>
							 <div id="locationField">
								<input class="field form-control" id="stlcLat" name="stlcLat" readonly/>
								<input class="field form-control" id="stlcLng" name="stlcLng" readonly/>
							</div>
                                     <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab" >
                                <h3 class="register-heading jal">메뉴 등록</h3>
                                </div>
								
								<!-- 좌표 end -->
                               <div class="row border-top p-3" style="margin-left: 350px; margin-right:50px;"></div>
                                <div class="row register-form" align="center">
                                	<div class="row g-0">
                                    <div class="col">
                                    <font color="#FF0000">*</font>추가버튼을 클릭해 보세요.
         <input name="addButton" type="button" class="form-control btn btn-success" style="cursor:hand" onClick="insRow()" value="추가">
<script>
var oTbl;

//Row 추가
function insRow() {
  oTbl = document.getElementById("addTable");
  var oRow = oTbl.insertRow();
  oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
  var oCell = oRow.insertCell();
 
  /* var seq = oTbl.${vo.totalRows} + 1; */
  //삽입될 Form Tag
  var frmTag = "<br><div class='input-group row row-cols-2 row-cols-lg-6' name=addText ><h3 class='ft'>메뉴: </h3><input type=text class='form-control col' id='stmnName' name='stmnName'><h3 class='ft'>가격: </h3><input type=text class='form-control col' id='stmnPrice' name='stmnPrice'><div class='col'><input type=button value='삭제' class='form-control btn btn-danger col' onClick='removeRow()' style='cursor:hand'></div></div>";
  frmTag += "";
  oCell.innerHTML = frmTag;
}
//Row 삭제
function removeRow() {
  oTbl.deleteRow(oTbl.clickedRowIndex);
}

function frmCheck()
{
  var frm = document.form;
  
  for( var i = 0; i <= frm.elements.length - 1; i++ ){
     if( frm.elements[i].name == "addText" )
     {
         if( !frm.elements[i].value ){
             alert("텍스트박스에 값을 입력하세요!");
                 frm.elements[i].focus();
	 return;
          }
      }
   }
 }
</script>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="2" align="center">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
         <td colspan="5" height="25" align="center">
         </td>
        </tr>
        <tr>
         <td height="25">
           <table id="addTable" cellspacing="0" cellpadding="0" border="0">
            <tr>
              <td align="center"></td>
            </tr>
          </table>
          </td>
        </tr>
       </table>
      </td>
   </tr>
 </table>
 <table border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="10">
      </td>
    </tr>
 </table>
<input type="button" class="btn-secondary btnRegister"  value="등록 취소"/>
                            		</div>
                            		</div>
                            	</div>
                            	
                            	<!-- <div class="col-sm-6 mt-3 mt-sm-0">
												<label for="file0" class="form-label input-file-button">이미지 첨부</label>
												<input class="form-control form-control-sm" id="file0" name="file0" type="file" multiple="multiple" style="display: none;" onChange="upload(0, 2);">
												<div class="addScroll">
													<ul id="ulFile0" class="list-group">
													</ul>
												</div>
								</div>
								<div class="col-sm-6 mt-3 mt-sm-0">
												<label for="file1" class="form-label input-file-button">파일첨부</label>
												<input class="form-control form-control-sm" id="file1" name="file1" type="file" multiple="multiple" style="display: none;" onChange="upload(1, 1);">
												<div class="addScroll">
													<ul id="ulFile1" class="list-group">
													</ul>
												</div>
								</div> -->
                        </div>
                    </div>
                </div>
            </div>
            </div>
           </div> 
           </form>
           </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
            <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 주소관련 -->
<script>
upload = function(seq,div){
	
	$("#ulFile" + seq).children().remove();
	
	var fileCount = $("input[type=file]")[seq].files.length;
	
	if(checkUploadedTotalFileNumber(fileCount, seq) == false) {return false;}
	
	var totalFileSize;
	for(var i = 0; i < fileCount; i++){
		if(div==1){
			if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		}else if(div==2){
			if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		}else {
			return false;
		}
		
		if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
		totalFileSize += $("input[type=file]")[seq].files[i].size;
	}
	if(checkUploadedTotalFileSize(totalFileSize, seq) == false) {return false;}
	
	for(var i=0; i<fileCount; i++){
		addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
	}
}

addUploadLi = function(seq,index,name){
	
	var ul_list = $("#ulFile0");
	
	li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-item-center">';
	li = li + name;
	li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+index +')"><i class="bi bi-x-circle"></i></span>';
	li = li + '</li>';
	
	$("#ulFile"+seq).append(li);
}

delLi = function(seq, index){
	$("#li_"+seq+"_"+index).remove();
}
	
</script>
	<script>
		var myModal = document.getElementById('myModal')
		var myInput = document.getElementById('myInput')
		myModal.addEventListener('shown.bs.modal', function() {
			myInput.focus()
		})
	</script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de96e57d26e4344aa147440cc4a132a7&libraries=services"></script>
	<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=AppKey&libraries=services"></script> -->
	

            <script>
            var address      = document.getElementById("address");
            var mapContainer = document.getElementById("map");
            var x,y          = "";

            // 지도 생성
            var map = new daum.maps.Map(mapContainer, mapOption);

            
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
                document.getElementById("stifAddress1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("stifAddress2").focus();
                
                // 자동 GeoCoder 성공 start
                
                // 주소-좌표 변환 객체를 생성
                var geocoder = new daum.maps.services.Geocoder();

                // 주소로 좌표를 검색
                geocoder.addressSearch(addr, function(result, status) {
                 
                 // 정상적으로 검색이 완료됐으면,
                 if (status == daum.maps.services.Status.OK) {
                  
                  var coords = new daum.maps.LatLng(result[0].y, result[0].x);

                  y = result[0].x;
                  x = result[0].y;



                  // 결과값으로 받은 위치를 마커로 표시 마커가 찍혀야 위도 경도가 표시됨
                  var marker = new daum.maps.Marker({
                   map: map,
                   position: coords
                  });
                  
                  // 위도 경도값 값 출력
                  document.getElementById("stlcLat").value=x;
                  document.getElementById("stlcLng").value=y;
                 }
                });
             // 자동 GeoCoder 성공 
            }
        }).open();
    }
</script>
            


<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRvzJwvLNg3tSBW1V3iIGxE47uYc2YxsI&libraries=places&callback=initAutocomplete" async defer></script> --> <!-- google key -->
</body>
</html>