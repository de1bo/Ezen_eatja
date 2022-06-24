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
    <title>김도현1</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link href="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="/infra/resources/js/jquery-1.11.2.min.js"></script>
    <link href="/infra/resources/css/style.css" rel="stylesheet">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        #map {
            padding: 11rem !important;
            height: 100%;
            width: 100%;
        }

        /* Optional: Makes the sample page fill the window. */
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>
</head>

<body>
   <%@ include file="../common/headerInclude.jsp" %>
    <!-- container 부분 -->
    <div class="album py-5 bg-light">
        <form id="formList" name="formList" method="post" action="/infra/index/indexMain">
            <input type="hidden" id="stifSeq" name="stifSeq">
            <input type="hidden" id="StoreInfo_stifSeq" name="StoreInfo_stifSeq">
            <input type="hidden" id="stifName" name="stifName">
            <input type="hidden" id="stifDesc" name="stifDesc">
            <input type="hidden" id="year" name="year">
            <input type="hidden" id="month" name="month">
            <input type="hidden" id="day" name="day">
            <input type="hidden" id="uuidName" name="uuidName">
            <div class="container">
                <h1 id="jal" style="padding-top: 50px; text-align:center;">먹거리 지도</h1>
                <div class="p-4 p-md-5 mb-4" id="map">

                    <div id="map-canvas"></div>
                    <div class="col-md-6 px-0" style="height: 100%;">
                    </div>
                </div>
                <h2 id="jal" style="padding-top: 50px; text-align:center;">주변 먹거리</h2>
                <hr>
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" id="storeList">
                </div>
            </div>
        </form>
    </div>
    <footer class="text-muted py-5">
        <div class="container">
            <p class="float-end mb-1">
                <a href="#">Back to top</a>
            </p>
            <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
            <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="../getting-started/introduction/">getting started guide</a>.</p>
        </div>
    </footer>

    <!-- google 부분 start -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAffnYjApY7cl96nlyHHwrDzzdn3VWBxKk&callback=initMap&v=weekly" async>
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
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
    zoom: 15,
    
	});
	// 현재위치 circle
	var marker = new google.maps.Marker({
		map: map,
		position: new google.maps.LatLng(pos),
		title: 'Some location'
	});
	
	var circle = new google.maps.Circle({
		  map: map,
		  radius: 500,    // 10 miles in metres
		  fillColor: '#AA0000'
		});
		circle.bindTo('center', marker, 'position');
		
		
	var arr = []
	var i = 0;
		// store 위치 마커
	<c:forEach items='${list}' var='item' varStatus='status'>
	var name = '${item.stlcName}';
	var Seq = ${item.stifSeq};
	var lat = ${item.stlcLat};
	var lng = ${item.stlcLng};
	var end = ${vo.totalRows};
	
	 var d = getDistanceFromLatLonInKm(pos.lat,pos.lng,lat,lng);
	 if(d < 500){
		 
/* 		 arr[i] = ${status.index}
		 i++ */
		 console.log("::::::stifSeq:::::::::::"+ Seq);
		 $('#storeList').append('<div class="col"><div class="card shadow-sm"><a href="#" onclick="goForm(<c:out value="${item.stifSeq}"/>)"><img src="/infra/resources/uploaded/store/<c:out value="${item.year}"/>/<c:out value="${item.month}"/>/<c:out value="${item.day}"/>/<c:out value="${item.uuidName}"/>" width="100%" height="225"/></a><div class="card-body"><p class="card-text"><c:out value="${item.stifDesc}"/></p><div class="d-flex justify-content-between align-items-center"><div class="btn-group"></div><small class="text-muted">9 mins</small></div></div></div></div>');
		 
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
	
</script>
<!-- google 부분 end -->
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
    zoom: 15,
	});
	// 화면 위치 좌표 start
	google.maps.event.addListener(map, 'bounds_changed', function() {
		
		var bounds = map.getBounds();
	    // 영역정보의 남서쪽 정보를 얻어옵니다 
	    var swLatlng = bounds.getSouthWest(); 
	    // 영역정보의 북동쪽 정보를 얻어옵니다 
	    var neLatlng = bounds.getNorthEast();
	    // 1b에 맵의 남서쪽, 북동쪽 정보를 담음
	    lb = new google.maps.LatLngBounds(swLatlng, neLatlng),
		
		// store 위치 마커
	<c:forEach items='${list}' var='item' varStatus='status'>
	var name = '${item.stlcName}';
	var Lat = ${item.stlcLat};
	var Lng = ${item.stlcLng};
	var end = ${vo.totalRows};
	
	 for (var i = 0; i < end; i++) {
		 var l1 = new google.maps.LatLng(Lat,Lng),	// db안에 있는 위도 경도를 가져옴
		 if(lb.contain(l1) == true){		// 1b안에 l1이 포함되는게 true면 마커 실행
        var marker = new google.maps.Marker({
            map: map,
            label: name,
            position: new google.maps.LatLng(Lat,Lng),
        });
		 }
	 }
	
</c:forEach> 
	}
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

<!-- <script type="text/javascript">
getListTheater = function(seq) {

	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/infra/index/MapFormList"
		,dataType:"JSON" 
		,data : {"stifSeq" : seq}	//보내는 데이터
		,success: function(data){ 
			alert(${status.index});
			/* $('#StoreInfo_stifSeq').empty();	// 기재된 내용 삭제 */
	/* 					$('#storeList').empty();
			$('#stifSeq').empty();	// 기재된 내용 삭제
			$('#stifName').empty();	// 기재된 내용 삭제
			$('#stifDesc').empty();	// 기재된 내용 삭제 */
			$('#hiddenSeq').val("");
			console.log("::::::s545:::::::::::"+ hiddenSeq); 
				
			for(var i = 0; i < data['theaterList'].length; i++){		// theater의 길이만큼 극장 목록 ui로 추가
				$('#hiddenSeq').append('<li><button type="button" id="thCd" onclick="goForm('+data['storeList'][i]['stifSeq']')" class="btn" style="padding-left: 0;"></button></li>');
			}	// memSeq=1, mvsTheaterCd=91
			
			
		} ,error : function(jqXHR, textStatus, errorThrown){
		alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
		
	}); 
}
</script> -->
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