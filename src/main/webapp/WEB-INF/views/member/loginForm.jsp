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
    	<a href="/infra/member/memberForm" class="w-100 btn btn-secondary">회원가입</a>
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
  <a href="javascript:kakaoLogin();"><img src="./kakao_login.png" alt="카카오계정 로그인" style="height: 100px;"/></a>
<button class="btn btn-facebook" type="button" id="btn-facebook" onclick="fnFbCustomLogin();"><img src="/resources/xdmin/image/fbicon.png" id="icon"><b> 페이스북</b> 로그인</button>
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
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        window.Kakao.init('de96e57d26e4344aa147440cc4a132a7');
        console.log(Kakao.isInitialized()); 
        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email, gender, age_range, birthday', //동의 항목 값들 세팅
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터 출력
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account; 
                            const profile_nickname = res.properties.nickname; 
                            console.log(kakao_account)		// 받아온 정보들을 출력
                            console.log(profile_nickname)		// 받아온 정보들을 출력
                            $.ajax({
                    			async: true 
                    			,cache: false
                    			,type: "post"
                    			,url: "/infra/member/KakaoLgProc"
                    			,data : {"ifmmName" : res.properties.nickname}		// 넘겨줄 데이터를 설정
                    			,success: function(response) {
                    				if(response.item == "success") {
                    					location.href = "/infra/index/indexView";
                    				} else {
                    					alert("카카오 로그인 실패");
                    				}
                    			}
                    			,error : function(jqXHR, textStatus, errorThrown){
                    				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                    			}
                    		})
                        }
                    });
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
<script>
function checkLoginState() {               					//로그인 클릭시 호출
	    FB.getLoginStatus(function(response) {  
	      statusChangeCallback(response);
	    });
	  }

function statusChangeCallback(response) { 					// FB.getLoginStatus()의 결과호출
	
 console.log(response);             			 			//사용자의 현재 로그인 상태.
	if (response.status === 'connected') {   				// 웹페이지와 페이스북에 로그인이 되어있다면
		testAPI();  
	} else {         			                       		// 웹페이지와 페이스북에 로그인이 되어있지 않다면
		console.log('Please log into this webpage.'); 
	}
}

function fnFbCustomLogin(){
	FB.login(function(response) {
		if (response.status === 'connected') {
			FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
				console.log(r);
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/infra/member/FBLgProc"
					,data : {"ifmmName" : r.name}		// 넘겨줄 데이터를 설정
					,success: function(response) {
						if(response.item == "success") {
							location.href = "/infra/index/indexView";
						} else {
							alert("페이스북 로그인 실패");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				}) 
			})
		} 
	}, {scope: 'public_profile,email'});		//profile, email 권한을 나중에 추가하려는 경우 FB.login() 함수로 다시 실행할 수 있다.
}

window.fbAsyncInit = function() {
	FB.init({
		appId      : '1364487504067524', // 내 앱 ID.
		cookie     : true,
		xfbml      : true,
		version    : 'v13.0'
	});
	FB.getLoginStatus(function(response) {   
		statusChangeCallback(response);        // 로그인 상태를 말해줌
	});
}; 
</script>
<!-- Load the JS SDK asynchronously -->
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=683045926144522" nonce="SiOBIhLG"></script>

</body>
</html>