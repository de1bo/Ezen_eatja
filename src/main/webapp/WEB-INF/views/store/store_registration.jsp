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
                        <input type="submit" class="btnRegister" value="매장 등록"><br/>
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
                                <div class="col-md-12">
	                                <div class="form-group" align="center">
	                                	<label for="name" class="form-label">이미지 등록</label><br>
                        				<input type="file" class="form-control" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
	                                </div>
                                </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        	<label for="name" class="form-label">매장 이름</label>
                                            <input type="text" class="form-control" placeholder="매장 이름" value="" />
                                        </div>
                                        <div class="form-group">
                                      		<label for="name" class="form-label">매장 전화번호</label>
                                            <input type="password" class="form-control" placeholder="매장 전화번호" value="" />
                                        </div>
                                        <div class="form-group">
                                            <label for="name" class="form-label">매장 영업시간</label>
                                            <input type="password" class="form-control"  placeholder="ex) 9AM~6PM" value="" />
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
									                <label for="name" class="form-label">음식종류</label><br>
									                <input type="radio" class="btn-check" id="storeType1" name="stifFoodTypeCd" value="5" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType1">한식</label> 
									                <input type="radio" class="btn-check" id="storeType2" name="stifFoodTypeCd" value="6" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType2">일식</label>
													<input type="radio" class="btn-check" id="storeType3" name="stifFoodTypeCd" value="6" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType3">중식</label>
									                <input type="radio" class="btn-check" id="storeType4" name="stifFoodTypeCd" value="6" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType4">양식</label>
									                <input type="radio" class="btn-check" id="storeType5" name="stifFoodTypeCd" value="6" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType5">세계음식</label>
									                <input type="radio" class="btn-check" id="storeType6" name="stifFoodTypeCd" value="6" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType6">뷔페</label>
									                <input type="radio" class="btn-check" id="storeType7" name="stifFoodTypeCd" value="6" autocomplete="off">
									                <label class="btn btn-outline-primary" for="storeType7">카페</label>
									                <input type="radio" class="btn-check" id="storeType8" name="stifFoodTypeCd" value="6" autocomplete="off">
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
													<input type="text" class="form-control" id="imadAddress1" name="imadAddress1" placeholder="주소"><br>
													<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">
													<input type="text" class="form-control" id="imadAddress2" name="imadAddress2" placeholder="상세주소">
													</div>
												</div>
                                        </div>
                                    </div>
                                     <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab" >
                                <h3 class="register-heading jal">메뉴 등록</h3>
                                </div>
                               
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

  //삽입될 Form Tag
  var frmTag = "<br><div class='input-group'><h3 class='ft'>메뉴: </h3><input type=text class='form-control' name=addText><h3 class='ft'>가격: </h3><input type=text class='form-control' name=addText></div><br>";
  frmTag += "<input type=button value='삭제' class='form-control btn btn-danger' onClick='removeRow()' style='cursor:hand'>";
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
                        </div>
                    </div>
                </div>
            </div>
            </div>
           </div> 
           </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>