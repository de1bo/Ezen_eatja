<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     <!-- for문 사용 태그 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    <!-- 날짜 태그 -->
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
#pd{
	padding: 5%;
}
.ft{
	text-color: white;
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
<header>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><img src="/infra/resources/images/place-setting.svg" height="45" width="45"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
      <form class="navbar-nav me-auto mb-2 mb-md-0">
          <!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button> -->
        </form>
        
        <ul class="navbar-nav">
          <li class="nav-item">
          <img src="../">
          </li>
          <li class="nav-item">  	
  			 <div class="right nav-link" style="padding-right: 30px;">
		   		<c:out value="${sessName}"/><br>
		   		<c:out value="${sessId}"/>
		   		</div>
   			</li>
          <li class="nav-item">
            <select class="form-select" >
				    <option selected>언어</option>
				    <option value="1">영어</option>
				    <option value="2">한국어</option>
				</select>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="#"><h5>먹거리 추천</h5></a>
          </li> -->
          <!-- <li class="nav-item">
            <a class="nav-link" href="#"><h5>랜덤 추천</h5></a>
          </li> -->
          <!-- <li class="nav-item">
            <a class="nav-link" href="#"><h5>리뷰</h5></a>
          </li> -->
          <!-- <li class="nav-item">
            <a class="nav-link" href="#"><h5>고객센터</h5></a>
          </li> -->
        </ul>      
      </div>
    </div>
  </nav>
</header>
</main>
<div id="pd">
<form id="formList" name="formList" method="post" action="/infra/member/memberList">
  <div style="padding: 5%">
	<h1 id="jal" style="padding: 15px;" >사용자 관리</h1>
	  <table class="border border-3">
	  <input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>"><!-- Post방식 -->
	  <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>"> <!-- multidele -->
	  <input type="hidden" name="checkboxSeqArray">	<!-- multidele -->
	  <input type="hidden" id="seq" name="seq" >
	  <div class="container"> 	
	  <tr class="row row-cols-1 row-cols-sm-2 row-cols-md-4">    
	  	<td>
		  	<div class="col">
		    	<div class="col p-2">
					<select class="form-select" aria-label="Default select example" id="shIfmmDelNy" name="shIfmmDelNy">
		  				<option value="">::삭제여부::
						<option value="1" <c:if test="${vo.shIfmmDelNy eq 1 }">selected</c:if>>Y
						<option value="0" <c:if test="${vo.shIfmmDelNy eq 0 }">selected</c:if>>N
					</select>
				</div>
			</div>
		</td>
		<td>
		    <div class="col">
		    	<div class="col p-2">
					<select class="form-select" id="shOptionDate" name="shOptionDate" aria-label="Default select example">
		  				<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>날짜</option>
						<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
						<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
						<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>생일</option>
					</select>
				</div>
		    </div>
	    </td>
	    <td>
		    <div class="col">
		    	<div class="col p-2">
					<fmt:parseDate var="shDateStart" value="${vo.shDateStart }" pattern="yyyy-MM-dd HH:mm:ss"/>
            		<input type="text" id="shDateStart" name="shDateStart" value="<fmt:formatDate value="${shDateStart }" pattern="yyyy-MM-dd" />" placeholder="시작일" class="form-control" autocomplete="off">
				</div>
		    </div>
		</td>
	    <td>
		    <div class="col">
		    	<div class="col p-2">
		    		<fmt:parseDate var="shDateEnd" value="${vo.shDateEnd }" pattern="yyyy-MM-dd HH:mm:ss"/>
					<input type="text" id="shDateEnd" name="shDateEnd" value="<fmt:formatDate value="${shDateEnd }" pattern="yyyy-MM-dd" />" placeholder="시작일" class="form-control" autocomplete="off">
				</div>
		    </div>
	    </td>
	  </tr>
	  <tr class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
	  	<td><div class="col">
		    	<div class="col p-2">
		    	<select class="form-select" aria-label="Default select example" id="shOption" name="shOption">
		  				<option value="">::검색구분::
						<option value="1"  <c:if test="${vo.shOption eq 1 }">selected</c:if>>이름
						<option value="2"  <c:if test="${vo.shOption eq 2 }">selected</c:if>>아이디
					</select>
				</div>
			</div></td>
			<td>
				 <div class="col">
		    		<div class="col p-2">
						<input type="text" name="shValue" id="shValue" class="form-control" placeholder="아이디" value="<c:out value="${vo.shValue}"/>">
					</div>
		   		</div>
			</td>
			<td>
				<div class="col">
		    		<div class="col p-2">
						<button type="submit" id="btnSubmit" name="search" class="btn btn-warning"><img src="/infra/resources/images/search.svg" width="25px" height="25px"></button>
						<button type="submit" name="search" class="btn btn-danger"><img src="/infra/resources/images/refresh.png" width="25px" height="25px"></button>
					</div>			
				</div>
			</td>
	  </tr>
	  </div>
	  
	</table>
	<br><br>
        	<select class="form-select" aria-label="Default select example" style="width:150px; float:right; border-bottom: 10px;">
		  				<option selected>10</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
			<!-- 게시판부분 -->	
		<c:out value="${vo.rowNumToShow}"/>/<c:out value="${vo.totalRows}"/>개의 검색결과	
		<table class="table table-hover" style="text-align: center;">
		  <tr class="table table-success table-striped">
		  	<td><input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input"></td>
		  	<td>No.</td>
		  	<td>이름</td>
		  	<td>아이디</td>
		  	<td>성별</td>
		  	<td>전화번호</td>
		  	<td>모바일 마케팅 동의</td>
		  	<td>이메일 마케팅 동의</td>
		  </tr>
		   <c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/>  <!-- gender -->
		  <c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
		  <c:otherwise>
		  <c:forEach items="${list}" var="item" varStatus="status">
		  <tr>
		  	<td><input type="checkbox" name="checkboxSeq"></td>
		  	<td><c:out value="${item.seq}"/></td>
		  	<%-- <td><a href="/infra/member/memberView?seq=<c:out value="${item.seq}"/>&thisPage=<c:out value="${vo.thisPage }"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>"><c:out value="${item.ifmmName}"/></td> --%>
		  	<td><a href="javascript:goForm(<c:out value="${item.seq}"/>)"><c:out value="${item.ifmmName}"/></a></td>
		  	<td><c:out value="${item.ifmmId}"/></td>
		  	<td>
		  		<c:forEach items="${listCodeGender}" var="itemGender" varStatus="statusGender">
		  			<c:if test="${item.ifmmGenderCd eq itemGender.ifcdSeq}"><c:out value="${itemGender.ifcdName}"/></c:if>
		  		</c:forEach>
		  	</td>
		  	<td>
	  		   <c:set var="numberPhone" value="${item.ifmpNumber }"/>
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
		  	<td>
			  	<c:choose>
				    <c:when test="${item.ifmmPushConsentNy == 40}">
				        동의
				    </c:when>
				    <c:when test="${item.ifmmPushConsentNy == 41}">
				        거부
				    </c:when>
				    <c:otherwise>
				        NO DATA
				    </c:otherwise>
				</c:choose>
			</td>
		  	<td>
		  		<c:choose>
				    <c:when test="${item.ifmmEmailConsentNy == 40}">
				        동의
				    </c:when>
				    <c:when test="${item.ifmmEmailConsentNy == 41}">
				        거부
				    </c:when>
				    <c:otherwise>
				        NO DATA
				    </c:otherwise>
				</c:choose>
		  	</td>
		  </tr>
		  </c:forEach>
	</c:otherwise>
	</c:choose>
		</table>
	
		<c:out value="${vo.startPage}"/>

	<nav aria-label="Page navigation example" style="width: 300px; margin-left: auto; margin-right: auto;">
	<div class="ul-c">
	  <ul id="ul" class="pagination">
	    <c:if test="${vo.startPage gt vo.pageNumToShow}">
	                <li class="page-item"><a class="page-link" href="/infra/member/memberList?thisPage=${vo.startPage - 1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
	</c:if>
	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
		<c:choose>
			<c:when test="${i.index eq vo.thisPage}">
	                <li class="page-item active"><a class="page-link" href="/infra/member/memberList?thisPage=${i.index}">${i.index}</a></li>
			</c:when>
			<c:otherwise>             
	                <li class="page-item"><a class="page-link" href="/infra/member/memberList?thisPage=${i.index}">${i.index}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>     
	<c:if test="${vo.endPage ne vo.totalPages}">                
	                <li class="page-item"><a class="page-link" href="/infra/member/memberList?thisPage=${vo.endPage + 1}"aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>         
	</c:if>
	  </ul>
	  </div>
	</nav>
	
	
	<button type="submit" class="btn btn-danger" id="btnDelete" style=" float:left; border-bottom: 10px;"><img src="/infra/resources/images/trash-icon.png" width="25px" height="25px"></button>
	<button type="button" class="btn btn-success" style=" float:right; border-bottom: 10px;"><a href="/infra/member/AdminForm?thisPage=${vo.thisPage}&shOption=<c:out value="${vo.shOption }"/>&shValue=<c:out value="${vo.shValue }"/>"><img src="/infra/resources/images/plus-sign.png" width="25px" height="25px"></a></button>
	<button type="button" class="btn btn-success" id="btnExcel" style=" float:right; border-bottom: 10px;">엑셀</button>
	</div>
	</form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
	$("#btnExcel").click(function() {
		$("#formList").attr("action", "/infra/member/excelDownload").submit();
	});
	</script>
<!-- <script type="text/javascript">
	$("#btnSubmit").on("click", function(){	
		/* if(!checkNull($("#shIfmmDelNy"), $("#shIfmmDelNy").val(), "Y/N를 선택해주세요")) return false;
		if(!checkNull($("#shOption"), $("#shOption").val(), "한글/영어를 선택해주세요")) return false; */
		
		if(!checkNull($("#shIfmmName"), $("#shIfmmName").val(), "회원이름을 입력해 주세요")) return false;
		if(!checkNull($("#shValue"), $("#shValue").val(), "아이디를 입력해 주세요")) return false;
		
		});

	</script> -->
	<script type="text/javascript">
	$("#btnSubmit").on("click", function(){	
	});
	goList = function(seq) {
		alert(seq);
		// form 객체 를 가져 온다.
		$("#thisPage").val(seq);
		$("#formList").submit();
		// 그 가져온 객체를 전달 한다.
	}
		
		goForm = function(seq1){
			alert(seq1);
			
			$("#seq").val(seq1);
			$("#formList").attr("action","/infra/member/memberView");
			$("#formList").submit();
			
		}
		
		
	</script>
	<script>
	var goUrlMultiDele = "/member/memberMultiDele";
	
	var seq= $("input:hidden[name=ifmmSeq]");
	
	$("#btnDelete").on("Click", function(){
		$("input[name=checkboxSeq]:checked").each(function() { 		// 이름으로 받은 해당 객체들을 체크가 되어있는지 확인
			checkboxSeqArray.push($(this).val());		// 위에 선언된 객체에다가 c:out에서 선택된 값을 넣음 0123
		});
		
		$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);		//
							
		$("#formList").attr("action", "/member/memberMultiDele").submit();  // form에 있는 정보를 memermultidele로 보냄
	});
	
	
	$("#checkboxAll").click(function() {
		if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
		else $("input[name=checkboxSeq]").prop("checked", false);
	});
	</script>

</body>
</html>
