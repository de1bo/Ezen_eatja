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
<script src="https://apis.google.com/js/platform.js" async defer></script>	<!-- Google 플랫폼 라이브러리 로드 -->
<meta name="google-signin-client_id" content="696012039785-o4c36onp0gk66po0a0or86hoeu4c4h5t.apps.googleusercontent.com">	<!-- 앱의 클라이언트 ID 지정 -->
<title>로그인</title>
<link href="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="/infra/resources/js/jquery-1.11.2.min.js"></script>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
     #jal {
	font-family: "jal";
}


      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      
      
      .slider .indicators .indicator-item {
  background-color: #666666;
  border: 3px solid #ffffff;
  -webkit-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
  -moz-box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
}
.slider .indicators .indicator-item.active {
  background-color: #ffffff;
}
.slider {
  width: 900px;
  margin: 0 auto;
}
.slider .indicators {
  bottom: 60px;
  z-index: 100;
  /* text-align: left; */
}
    </style>
    <link href="/infra/resources/css/signin.css" rel="stylesheet">
    <link href="/infra/resources/css/style.css" rel="stylesheet">
    <link href="/infra/resources/css/slider1.css" rel="stylesheet">
  </head>
  <body class="text-center" >
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/infra/resources/images/ro1.png" class="img-fluid" alt="../../../images/ro1.jpg">
    </div>
    <div class="carousel-item">
      <img src="/infra/resources/images/ro2.png" class="img-fluid" alt="../../../images/ro2.jpg">
    </div>
    <div class="carousel-item">
      <img src="/infra/resources/images/ro3.png" class="img-fluid" alt="../../../images/ro3.jpg">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    <!-- img rotate end-->
    <nav class="navbar navbar-light bg-light fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="/infra/resources/images/place-setting.svg" height="50" width="50"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel"></h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <main class="form-signin">
  <form>
    	<h1 id="jal"><strong>LOGIN</strong></h1><br>

    <div class="form-floating">
      <input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="name@example.com">
      <label for="floatingInput">Email address</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="form-check form-switch" style="float: left;">
  		<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked">
  		<label class="form-check-label" for="flexSwitchCheckChecked">자동 로그인</label>
	</div><br><br><br>
    	<button class="w-100 btn btn-info" type="button" id="btnLogin" style="color:white"><strong>로그인</strong></button>
    	<br><br>
    	<button class="w-100 btn btn-secondary" type="button" style="color:white" onclick="location.href='../member/memberForm.html'"><strong>회원가입</strong></button>
    	<br><hr>
    <div id="jal">간편 로그인</div>
    <br>
<ul>
 <li id="GgCustomLogin">
  <a href="javascript:void(0)">
   <span>Login with Google</span>
  </a>
 </li>
</ul>
    <p class="mt-5 mb-3 text-muted">&copy;2022–2022</p>
  </form>
</main>    
      </div>
    </div>
  </div>
</nav>
<script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$("#btnLogin").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/infra/member/loginProc"
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.item == "success") {
					location.href = "/infra/index/indexView";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
</script>
<!-- google signin api -->
<script>
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		/* url: 'https://people.googleapis.com/v1/people/me' */
        // key에 자신의 API 키를 넣습니다.
        	/* url : "/infra/member/GloginProc" */
		 data: {personFields:'birthdays', key:'AIzaSyCdX_peGDb6wCqXcZPc5wTczgQszhxSOGs', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
     
		 var profile = googleUser.getBasicProfile();
		/* console.log(profile); */
		var id= profile.getId();
		var username = profile.getName();
		
		console.log(username);
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/infra/member/GloginProc"
			,data : {"ifmmName" : profile.getName()}
			,success: function(response) {
				if(response.item == "success") {
					location.href = "/infra/index/indexView";
				} else {
					alert("구글 로그인 실패");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		})
		
	})
	.fail(function(e){
		console.log(e);
	})
	
}

function onSignInFailure(t){	
	
	console.log(t);
	
}
</script>
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</body>
</html>