<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

	<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.modules.code.CodeServiceImpl"/><!-- FoodCode -->

<!DOCTYPE HTML>
<html>
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>김도현1</title>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<!-- <link href="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script> -->
<script src="/infra/resources/js/jquery-1.11.2.min.js"></script>

        <!--Google Fonts-->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

        <!--Fontawesom-->
        <link rel="stylesheet" href="/infra/resources/css/css/font-awesome.min.css">

        <!--Animated CSS-->
        <link rel="stylesheet" type="text/css" href="/infra/resources/css/css/animate.min.css">

        <!-- Bootstrap -->
        <link href="/infra/resources/css/css/bootstrap.min.css" rel="stylesheet">
        <!--Bootstrap Carousel-->
        <link type="text/css" rel="stylesheet" href="/infra/resources/css/css/carousel.css" />

        <link rel="stylesheet" href="/infra/resources/css/css/isotope/style.css">

        <!--Main Stylesheet-->
        <link href="/infra/resources/css/css/style.css" rel="stylesheet">
        <!--Responsive Framework-->
        <link href="/infra/resources/css/css/responsive.css" rel="stylesheet">
<!-- <link href="../../css/style.css" rel="stylesheet"> -->
<style>
	.pd {
		  padding: 7%;  
	}
	#header{
		width: 100%;
		height: 30%;
		text-align: center;
	}
	#content{
		width: 60%;
		height: 600px;
		float: left;
	}
	#aside{
		width: 40%;
		height: 600px;
	}
	
	.MenuItem{
		webkit-flex-direction: row;
		webkit-box-direction: normal;
		webkit-box-orient: horizontal;
		border-bottom: 1px solid #e9e9e9;
		margin-bottom: 4px;
		display: -webkit-flex;	
	}
	.Restaurant_Menu {
    flex: 1;
    display: inline-block;
    margin-right: 30px;
    white-space: normal;
	}
	.Restaurant_MenuPrice {
    margin-left: auto;
	}
	
	#map {
  height: 50%;
	}
	th {
		padding: 5px;
	}
	/* 여기부터 별점부분 */
	.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('./img/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}
.wrap{
    max-width: 480px;
    margin: 0 auto; /* 화면 가운데로 */
    background-color: #fff;
    height: 100%;
    padding: 20px;
    box-sizing: border-box;

}
.reviewform textarea{
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
}
.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('/infra/resources/img/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}

.warning_msg {
    display: none;
    position: relative;
    text-align: center;
    background: #ffffff;
    line-height: 26px;
    width: 100%;
    color: red;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #e0e0e0;
}
	/* 여기까지가 별점부분 */
image {
	object-fit: fill;
}
</style>
<%@ include file="../common/headerInclude.jsp" %>
<body>
 
<div id="header">
        <div class="swiper-container justify-content-center">
            <div class="swiper-wrapper justify-content-center">
            
	            <div class="swiper-slide justify-content-center">
	                	<table>
	                		<tr>
                                <c:forEach items="${list2}" var="item" varStatus="status">
			                		<td>
					                    <a href="/infra/resources/uploaded/store/<c:out value="${item.year}"/>/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>" class="grid image-link">
					                        <img src="/infra/resources/uploaded/store/<c:out value="${item.year}"/>/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>" style="height: 370px; width:585px;" alt="#">
					                    </a>
			                		</td>
		               			</c:forEach>
	               			</tr>
	               			  
	               		</table>
	               </div>
	             
             </div>
        </div>
</div>
<div class="pd">
<div class="container">
	<div class="row">
		<div class="col-sm-8">
			<h2><strong><c:out value="${item.stifName}"/></strong></h2>
			<hr>
			<table>
				<tr>
					<th>주소:</th>
					<td style="width: 90%;"><c:out value="${item.stifAddress1}"/>  <c:out value="${item.stifAddress2}"/></td>
				</tr>
				<tr>
					<th>전화번호:</th>
					<td>
						<c:set var="numberPhone" value="${item.stphNumber}"/>
			               	<c:choose>
			               		<c:when test="${fn:length(numberPhone) eq 10 }">
									<c:out value="${fn:substring(numberPhone,0,3)}"/>
									- <c:out value="${fn:substring(numberPhone,3,6)}"/>
									- <c:out value="${fn:substring(numberPhone,6,10)}"/>
			               		</c:when>
			               		<c:otherwise>
									<c:out value="${fn:substring(numberPhone,0,3)}"/>
									- <c:out value="${fn:substring(numberPhone,3,7)}"/>
									- <c:out value="${fn:substring(numberPhone,7,11)}"/>
			               		</c:otherwise>
			              	</c:choose>
					</td>
				</tr>
				<tr>
					<th>음식 종류:</th>
					<c:set var="CodeFood" value="${CodeServiceImpl.selectListCachedCode('9')}"/>  <!-- FoodCode -->
					<td>
					<c:forEach items="${CodeFood}" var="itemFoode" varStatus="statusFood">
				  		<c:if test="${item.stifFoodTypeCd eq itemFoode.ifcdSeq}"><c:out value="${itemFoode.ifcdName}"/></c:if>
				  	</c:forEach>
					</td>
				</tr>
				<tr>
					<th>영업시간:</th>
					<td><c:out value="${item.stifOC}"/></td>
				</tr>
				<tr>
					<th>매장 소개:</th>
					<td><c:out value="${item.stifDesc}"/></td>
				</tr>
				<tr>
					<th>메뉴:</th>
					<td>
					<c:forEach items="${list}" var="item" varStatus="status">
						<li class="MenuItem">
							<span class="Restaurant_Menu"><c:out value="${item.stmnName}"/></span>
							<span class="Restaurant_MenuPrice"><c:out value="${item.stmnPrice}"/>원</span>
						</li>
					</c:forEach>
					</td>
				</tr>
			</table>
			<br><br><br><br>
	<hr>
	<!-- <div class="d-flex bd-highlight mb-3">
		<div class="p-2 bd-highlight"><h3><strong>리뷰(count(*))</strong></h3></div>
	
		<div class="ms-auto p-2 bd-highlight">
			<button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><img src="../../images/pencil.svg" width="25px;"><br>리뷰 작성
		</div>
		Modal
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">리뷰작성</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        여기부터가 별점 부분
		<div class="wrap">
    <h1>후기</h1>
    <form name="reviewform" class="reviewform" method="post" action="/save">
        <input type="hidden" name="rate" id="rate" value="0"/>
        <p class="title_star">별점과 리뷰를 남겨주세요.</p>
 
        <div class="review_rating">
            <div class="warning_msg">별점을 선택해 주세요.</div>
            <div class="rating">
                해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용
                <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1점">
                <label for="rating1"></label>
                <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio" title="2점">
                <label for="rating2"></label>
                <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio" title="3점" >
                <label for="rating3"></label>
                <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio" title="4점">
                <label for="rating4"></label>
                <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio" title="5점">
                <label for="rating5"></label>
            </div>
        </div>
        <div class="review_contents">
            <div class="warning_msg">5자 이상으로 작성해 주세요.</div>
            <textarea rows="10" class="review_textarea"></textarea>
        </div>   
    
		여기까지가 별점부분
		<div class="modal-footer cmd">
			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			<button type="button"  name="save" id="save" class="btn btn-primary" >Understood</button>
		</div>
	</form>
		</div>
				</div>
			   </div>
			</div>
		</div>
	</div> -->
	</div>

		<div class="col-sm-4">
			<div id="map" style="width:100%;height:350px;"></div>
<!-- 			<br>
			<h3><strong>주변 인기 식당</strong></h3>
				<div class="card mb-3" style="max-width: 540px;">
				  <div class="row g-0">
				    <div class="col-md-4">
				      <img src="../../images/food/chicken.jpg" type="button" class="rounded-start"  alt="..." style="max-width: 100%; height: 100%;">
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title"><strong>굽네치킨</strong></h5>
				        <p class="card-text">음식종류: <small>양식</small></p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				      </div>
				    </div>
				  </div>
			</div>
			<div class="card mb-3" style="max-width: 540px;">
				  <div class="row g-0">
				    <div class="col-md-4">
				      <img src="../../images/food/pizza.jpg" type="button" class="img-fluid rounded-start" alt="...">
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title"><strong>피자헛</strong></h5>
				        <p class="card-text">음식종류: <small>양식</small></p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				      </div>
				    </div>
				  </div>
			</div>
			<div class="card mb-3" style="max-width: 540px;">
				  <div class="row g-0">
				    <div class="col-md-4">
				      <img src="../../images/food/pizza.jpg" type="button" class="img-fluid rounded-start" alt="...">
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title"><strong>피자헛</strong></h5>
				        <p class="card-text">음식종류: <small>양식</small></p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				      </div>
				    </div>
				  </div>
			</div>
			<div class="card mb-3" style="max-width: 540px;">
				  <div class="row g-0">
				    <div class="col-md-4">
				      <img src="../../images/food/pizza.jpg" type="button" class="img-fluid rounded-start" alt="...">
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title"><strong>피자헛</strong></h5>
				        <p class="card-text">음식종류: <small>양식</small></p>
				        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				      </div>
				    </div>
				  </div>
			</div> -->
		</div>
		
	</div>
</div>
</div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
        <script src="/infra/resources/js/js/jquery-1.12.3.min.js"></script>

        <!--Counter UP Waypoint-->
        <script src="/infra/resources/js/js/waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="/infra/resources/js/js/jquery.counterup.min.js"></script>



        <!--Isotope-->
        <script src="/infra/resources/js/js/isotope/min/scripts-min.js"></script>
        <script src="/infra/resources/js/js/isotope/cells-by-row.js"></script>
        <script src="/infra/resources/js/js/isotope/isotope.pkgd.min.js"></script>
        <script src="/infra/resources/js/js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="/infra/resources/js/js/isotope/scripts.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="/infra/resources/js/js/bootstrap.min.js"></script>
        <!-- Custom JavaScript-->
        <script src="/infra/resources/js/js/main.js"></script>
        <script src="/infra/resources/js/common/logout.js"></script>  <!-- 로그아웃 -->

    <!-- google 부분 start -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de96e57d26e4344aa147440cc4a132a7&libraries=services,clusterer,drawing"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

 <script>
 
 var name = '${item.stlcName}';
 var lat = ${item.stlcLat};
 var lng = ${item.stlcLng};
	
 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
 mapOption = { 
     center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
     level: 3 // 지도의 확대 레벨
 };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(lat, lng); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
 position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);
</script>
<script>
$(function init(){
	
	 let userCd= ${sessRegistTypeCd};

	 			if(userCd == 1) {
	 				$("#adminUserManagement").show();
	 				$("#store_registration").show();
	 			} else if(userCd == 2) {
	 				$("#adminUserManagement").hide();
	 			} else {
	 				$("#store_registration").hide();
	 				$("#adminUserManagement").hide();
	 				
	 				console.log(userCd);
	 			}	
	 
});
</script>
<!-- 여기서부터 별점부분 -->
<script>
//별점 마킹 모듈 프로토타입으로 생성
function Rating(){};
Rating.prototype.rate = 0;
Rating.prototype.setRate = function(newrate){
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
    let items = document.querySelectorAll('.rate_radio');
    items.forEach(function(item, idx){
        if(idx < newrate){
            item.checked = true;
        }else{
            item.checked = false;
        }
    });
}
let rating = new Rating();//별점 인스턴스 생성

document.addEventListener('DOMContentLoaded', function(){
    //별점선택 이벤트 리스너
    document.querySelector('.rating').addEventListener('click',function(e){
        let elem = e.target;
        if(elem.classList.contains('rate_radio')){
            rating.setRate(parseInt(elem.value));
        }
    })
});

//상품평 작성 글자수 초과 체크 이벤트 리스너
document.querySelector('.review_textarea').addEventListener('keydown',function(){
    //리뷰 400자 초과 안되게 자동 자름
    let review = document.querySelector('.review_textarea');
    let lengthCheckEx = /^.{400,}$/;
    if(lengthCheckEx.test(review.value)){
        //400자 초과 컷
        review.value = review.value.substr(0,400);
    }
});

//저장 전송전 필드 체크 이벤트 리스너
document.querySelector('#save').addEventListener('click', function(e){
    //별점 선택 안했으면 메시지 표시
    if(rating.rate == 0){
        rating.showMessage('rate');
        return false;
    }
    //리뷰 5자 미만이면 메시지 표시
    if(document.querySelector('.review_textarea').value.length < 5){
        rating.showMessage('review');
        return false;
    }
    //폼 서밋
});

        Rating.prototype.showMessage = function(type){//경고메시지 표시
            switch(type){
                case 'rate':
                    //안내메시지 표시
                    document.querySelector('.review_rating .warning_msg').style.display = 'block';
                    //지정된 시간 후 안내 메시지 감춤
                    setTimeout(function(){
                        document.querySelector('.review_rating .warning_msg').style.display = 'none';
                    },1000);            
                    break;
                case 'review':
                    //안내메시지 표시
                    document.querySelector('.review_contents .warning_msg').style.display = 'block';
                    //지정된 시간 후 안내 메시지 감춤
                    setTimeout(function(){
                        document.querySelector('.review_contents .warning_msg').style.display = 'none';
                    },1000);    
                    break;
            }
        }
</script>
<!-- 여기까지가 별점부분 -->

</body>
</html>