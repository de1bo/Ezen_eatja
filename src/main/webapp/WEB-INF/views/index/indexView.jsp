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
}`
#pd{
	padding: 5%;
}
</style>
<title>고객 리스트</title>
<link href="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="/infra/resources/_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
<link href="/infra/resources/css/style.css" rel="stylesheet">
</head>

<body>
<%@ include file="../common/headerInclude.jsp" %>
<div style="padding-top: 5%;">
	sessSeq: <c:out value="${sessSeq }"/><br>
	sessName: <c:out value="${sessName }"/><br>
	sessId: <c:out value="${sessId }"/><br>
	<c:if test="${not empty sessSeq}">
	<button type="button" class="btn btn-danger btn-sm" name="" id="btnLogout"><i class="fa-solid fa-power-off"></i>로그아웃</button>
</c:if>
</div>
    <a href="/infra/member/loginForm" onclick="signOut();">Sign out</a>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/infra/member/logoutProc"
				,success: function(response) {
					if(response.item == "success") {
						alert("로그아웃 실패");
						location.href = "/infra/member/loginForm";
					} else {
						alert("로그아웃 성공");
						location.href = "/infra/member/loginForm";
					}
				}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
</script>
<script>
	window.Kakao.init('de96e57d26e4344aa147440cc4a132a7');
	function kakaoLogout() {
		if (!Kakao.Auth.getAccessToken()) {
		    console.log('Not logged in.');
		    return;
	    }
	    Kakao.Auth.logout(function(response) {
			alert(response +' logout');
		    window.location.href='/'
	    });
	};
</script>
</body>
</html>