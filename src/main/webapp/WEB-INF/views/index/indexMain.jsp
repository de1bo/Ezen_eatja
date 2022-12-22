<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Eatja</title>
		<style>
.label {margin-bottom: 96px;}
.label * {display: inline-block;vertical-align: top;}
.label .left {background: url("https://t1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_l.png") no-repeat;display: inline-block;height: 24px;overflow: hidden;vertical-align: top;width: 7px;}
.label .center {background: url(https://t1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_bg.png) repeat-x;display: inline-block;height: 24px;font-size: 12px;line-height: 24px;}
.label .right {background: url("https://t1.daumcdn.net/localimg/localimages/07/2011/map/storeview/tip_r.png") -1px 0  no-repeat;display: inline-block;height: 24px;overflow: hidden;width: 6px;}

#location_button {
position: absolute; 
z-index: 100;
}

		</style>
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

    </head>

    <body data-spy="scroll" data-target="#header">
	        <form id="formList" name="formList" method="post" action="/infra/index/indexMain">
	            <input type="hidden" id="stifSeq" name="stifSeq">
	            <input type="hidden" id="StoreInfo_stifSeq" name="StoreInfo_stifSeq">
	            <input type="hidden" id="stifName" name="stifName">
	            <input type="hidden" id="stifDesc" name="stifDesc">
	            <input type="hidden" id="year" name="year">
	            <input type="hidden" id="month" name="month">
	            <input type="hidden" id="day" name="day">
	            <input type="hidden" id="uuidName" name="uuidName">
	        </form>
        <!--Start Hedaer Section-->
        <%@ include file="../common/headerInclude.jsp" %>
        <!--End of Hedaer Section-->



        <!--Start of slider section-->
        <section id="slider">
			    <div id="map">    
			      <button id="location_button">
			          내 위치 찾기
			      </button>
			</div>
        </section>
        <!--end of slider section-->
        
        
			<section id="welcome">
	            <div class="container">
	                <div class="row">
	                    <div class="col-md-12">
	                        <div class="wel_header">
	                            <h2>주변 먹거리</h2>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </section>


        <!--Start of blog-->
        <section id="blog">
            <div class="container">
                <div class="row">
                	<div class="row" id="storeList">
                	</div>
            	</div>
            </div>
        </section>
        <!-- end of blog-->

        <!--Start of footer-->
        <section id="footer">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-6">
                        <div class="copyright">
                            <p>@ 2016 - Design By <span><a href="">&#9798;</a></span></p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="designer">
                            <p>A Design By <a href="#">XpeedStudio</a></p>
                        </div>
                    </div>
                </div>
                <!--End of row-->
            </div>
            <!--End of container-->
        </section>
        <!--End of footer-->



        <!--Scroll to top-->
        <!--End of Scroll to top-->


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
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 6 // 지도의 확대 레벨 
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var poslat = position.coords.latitude, // 위도
        	poslon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(poslat, poslon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
        
           
            
        // 마커와 인포윈도우를 표시합니다
        	map.setCenter(locPosition);  
            
        var circle = new kakao.maps.Circle({
            center : new kakao.maps.LatLng(poslat, poslon),  // 원의 중심좌표 입니다 
            radius: 2000, // 미터 단위의 원의 반지름입니다 
            strokeWeight: 5, // 선의 두께입니다 
            strokeColor: '#75B8FA', // 선의 색깔입니다
            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
            strokeStyle: 'dashed', // 선의 스타일 입니다
            fillColor: '#CFE7FF', // 채우기 색깔입니다
            fillOpacity: 0.7  // 채우기 불투명도 입니다   
        }); 
        circle.setMap(map);
        
    		// store 위치 마커
    	<c:forEach items='${list}' var='item' varStatus='status'>
    	var name = '${item.stlcName}';
    	var stName = '${item.stifName}';
    	var Seq = ${item.stifSeq};
    	var lat = ${item.stlcLat};
    	var lng = ${item.stlcLng};
    	var end = ${vo.totalRows};
    	
    	
    	 var d = getDistanceFromLatLonInKm(poslat,poslon,lat,lng);
    	 if(d < 2000){
    		 
    		 console.log("::::::stifSeq:::::::::::"+ Seq);
    		 
    		 var listHtml = "";
    		 listHtml += '<div class="col-md-4">';
    		 listHtml += '<div class="blog_news">';
    		 listHtml += '<div class="single_blog_item"><a href="#" onclick="goForm(<c:out value="${item.stifSeq}"/>)"><img src="/infra/resources/uploaded/store/<c:out value="${item.year}" />/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>" Style="width: 100%; height: 255px"/></a></div>';
    		 listHtml += '<div class="blog_content"><h3><bold><c:out value="${item.stifName}"/></bold></h3>';
    		 listHtml += '<div class="expert"></div>';
    		 listHtml += '<p class="blog_news_content"><c:out value="${item.stifDesc}"/></p></div></div></div></div>';
    		 
    		 
    		 $("#storeList").append(listHtml);
    		 
    		    var marker = new kakao.maps.Marker({  
    		        map: map,
    		        label: name,
    		        position: new kakao.maps.LatLng(lat, lng)
    		    }); 
    		    
            	var infowindow = new kakao.maps.InfoWindow({
            	    map: map, // 인포윈도우가 표시될 지도
            	    position : new kakao.maps.LatLng(lat, lng),
            	    content : '<div style="padding-bottom:5px;"><c:out value="${item.stifName}"/></div>',
            	    removable : true
            	}); 
            	
    		    marker.setMap(map);
    		    infowindow.open(map, marker); 
    	 }
    	</c:forEach> 
        
    	var content = '<div style="padding:5px;">현재위치</div>',
    	iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
 
    	var showBtn = document.getElementById("location_button"); // 아이디가 "btn"인 요소를 선택함.
    	showBtn.addEventListener("click", showText);  // 선택한 요소에 click 이벤트 리스너를 등록함.
    	function showText() {
        	var infowindow = new kakao.maps.InfoWindow({
        	    map: map, // 인포윈도우가 표시될 지도
        	    position : new kakao.maps.LatLng(poslat, poslon),
        	    content : content,
        	    removable : iwRemoveable
        	}); 
    	} 

      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
        message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}



function getDistanceFromLatLonInKm(lat1,lng1,lat2,lng2) {
	
	function deg2rad(deg) {
		return deg * (Math.PI/180)
	}
	
	var R = 6371; // Radius of the earth in km
	var dLat = deg2rad(lat2-lat1);// deg2rad below
	var dLon = deg2rad(lng2-lng1);
	var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.sin(dLon/2) * Math.sin(dLon/2);
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
	var d = R * c * 1000; // Distance in meters
	return d;
	}
    </script>



    <!-- orlCode strat -->
<!-- <script>
let map, infoWindow;

function initMap() {
	// 현재 위치 가져오기
	navigator.geolocation.getCurrentPosition(
	        (position) => {
	          const pos = {
	            lat: position.coords.latitude,
	            lng: position.coords.longitude,
	          };
	          
	const map = new google.maps.Map(document.getElementById("map"), {
	center: pos,
    zoom: 13,
    
	});
	// 현재위치 circle
	var marker = new google.maps.Marker({
		map: map,
		position: new google.maps.LatLng(pos),
		title: 'Some location'
	});
	
	var circle = new google.maps.Circle({
		  map: map,
		  radius: 2000,    // 10 miles in metres
		  fillColor: '#AA0000'
		});
		circle.bindTo('center', marker, 'position');
		
		
	var arr = []
	var i = 0;
		// store 위치 마커
	<c:forEach items='${list}' var='item' varStatus='status'>
	var name = '${item.stlcName}';
	var stName = '${item.stifName}';
	var Seq = ${item.stifSeq};
	var lat = ${item.stlcLat};
	var lng = ${item.stlcLng};
	var end = ${vo.totalRows};
	
	 var d = getDistanceFromLatLonInKm(pos.lat,pos.lng,lat,lng);
	 if(d < 2000){
		 
/* 		 arr[i] = ${status.index}
		 i++ */
		 console.log("::::::stifSeq:::::::::::"+ Seq);
		 $('#storeList').append('<div class="col-md-4"><div class="blog_news"><div class="single_blog_item"><div class="blog_img"><a href="#" onclick="goForm(<c:out value="${item.stifSeq}"/>)"><img src="/infra/resources/uploaded/store/<c:out value="${item.year}" />/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>" width="100%" height="225"/></a></div><div class="blog_content"><a href=""><h3><bold><c:out value="${item.stifName}"/></bold></h3></a><div class="expert"></div><p class="blog_news_content"><c:out value="${item.stifDesc}" /></p></div></div>');
		 
	      var marker = new google.maps.Marker({
	          map: map,
	          label: name,
	          position: new google.maps.LatLng(lat,lng),
	      });
	 }
	 
	</c:forEach> 	
	// 현재 위치를 찾는 버튼 start
	infoWindow = new google.maps.InfoWindow();
	  
	  
	  const locationButton = document.createElement("button");
	  locationButton.textContent = "현재위치";
	  locationButton.classList.add("custom-map-control-button");
	  map.controls[google.maps.ControlPosition.TOP_CENTER].push(locationButton);
	  
	  locationButton.addEventListener("click", () => {
		    // Try HTML5 geolocation.  
		    if (navigator.geolocation) {
		      navigator.geolocation.getCurrentPosition(
		        (position) => {
		          const pos = {
		            lat: position.coords.latitude,
		            lng: position.coords.longitude,
		          };
		          
		          infoWindow.setPosition(pos);
		          infoWindow.setContent("현재위치");
		          infoWindow.open(map);
		          map.setCenter(pos);
		          
		        },
		        () => {
		          handleLocationError(true, infoWindow, map.getCenter());
		        }
		      );
		    } else {
		      // 현재위치를 지원하지 않을때 실행
		      handleLocationError(false, infoWindow, map.getCenter());
		    }
		  });
  });
	// 현재 위치를 찾는 버튼 end
}

// 현재위치 검색 error 발생시 실행
function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(
    browserHasGeolocation
      ? "Error: The Geolocation service failed."
      : "Error: Your browser doesn't support geolocation."
  );
  infoWindow.open(map);
}

//위도경도 거리계산식		(현재 위도, 현재 경도, 상대 위도, 상대 경도)
function getDistanceFromLatLonInKm(lat1,lng1,lat2,lng2) {
	
	function deg2rad(deg) {
		return deg * (Math.PI/180)
	}
	
	var R = 6371; // Radius of the earth in km
	var dLat = deg2rad(lat2-lat1);// deg2rad below
	var dLon = deg2rad(lng2-lng1);
	var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.sin(dLon/2) * Math.sin(dLon/2);
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
	var d = R * c * 1000; // Distance in meters
	return d;
	}
	
</script> -->
<!-- orlCode end -->

<!-- google 부분 end -->

<script>
$(function init(){
	
	 let userCd= ${sessRegistTypeCd};

	 			if(userCd == 1) {
	 				$("#adminUserManagement").show();
	 				$("#store_registration").show();
	 			} else if(userCd == 2) {
	 				$("#adminUserManagement").hide();
	 			} else if(userCd == 3) {
	 				$("#store_registration").hide();
	 				$("#adminUserManagement").hide();
	 			} else if (userCd == 4) {
	 				$("#store_registration").hide();
	 				$("#adminUserManagement").hide();
	 				$("#userInfo").hide();
	 			}	
	 				console.log(userCd);	
	 
});
</script>
<script type="text/javascript">
	$("#btnSubmit").on("click", function(){	
	});
		
		goForm = function(seq){
			
			$("#stifSeq").val(seq);
			$("#formList").attr("action","/infra/store/store_Info");
			$("#formList").submit();
			
		}
		
		
	</script>
	
<script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>