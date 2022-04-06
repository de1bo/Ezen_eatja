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
	  	  padding: 11rem!important;
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
            <a class="nav-link" href="/infra/store/store_registration"><h5>매장 등록</h5></a>
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
<!-- <div id="map"></div> -->
<!-- container 부분 -->
<div class="album py-5 bg-light">
<form id="formList" name="formList" method="post" action="/infra/index/indexMain">
    <div class="container">
    <h1 id="jal" style="padding-top: 50px; text-align:center;" >먹거리 지도</h1>
<div class="p-4 p-md-5 mb-4" id="map">
<div id="map-canvas"></div>
 <div class="col-md-6 px-0" style="height: 100%;">
    </div>
  </div>
  <h2 id="jal" style="padding-top: 50px; text-align:center;">주변 먹거리</h2>
  <hr>
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">식당 소개</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
               
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
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
<img src="/infra/resources/images/regist.png" alt="/infra/resources/images/ro1.jpg" style="width: 100%; padding-top: 50px;">	 
	 
	 
<script
   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAffnYjApY7cl96nlyHHwrDzzdn3VWBxKk&callback=initMap&v=weekly" async>
 </script>
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
		
		
		
		// store 위치 마커
/* for(var st = ${item.stlcSeq}; st < ${vo.totalRows}; st++) { */
/* 	place:${item.stlcName},
	lat: ${item.stlcIat},
	lng: ${item.stlcIng}, */
	<c:forEach items="${list}" var="item" varStatus="status">
	 for (var i = 0; i < 1; i++) {
		 var d = getDistanceFromLatLonInKm(pos.lat,pos.lng,${item.stlcIat},${item.stlcIat});
		 
		 if(d < 500){
        var marker = new google.maps.Marker({
            map: map,
            label: ${item.stlcName},
            position: new google.maps.LatLng(${item.stlcIat},${item.stlcIat}),
        });
		 }
        
</c:forEach> 
/* }		 */
/* 	// 정상작동 코드 start
for (var i = 0; i < locations.length; i++) {
	 var d = getDistanceFromLatLonInKm(pos.lat,pos.lng,lat,lng);
	 if(d < 500){
   var marker = new google.maps.Marker({
       map: map,
       label: locations[i].place,
       position: new google.maps.LatLng(locations[i].lat, locations[i].lng),
   });
	 }
   
} 
//정상작동 코드 end */

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

// 위치 정보를 저장하는 상수 임시 더미데이터 넣어둠
 /* const locations = [
    { place:"서울역", lat: 37.5546788, lng: 126.9706069 },
    { place:"서울특별시청", lat: 37.5668260, lng: 126.9786567 },
    { place:"집쪽", lat: 37.432574, lng: 126.880620 },
];  */

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
<script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>