<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/infra/index/indexMain"><img src="/infra/resources/images/place-setting.svg" height="45" width="45"></a>
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
                        <a class="nav-link" href="/infra/index/indexMain">
                            <h5>메인메뉴</h5>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/infra/store/store_registration">
                            <h5>매장등록</h5>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/infra/member/memberList">
                            <h5>고객 관리</h5>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="sd" href="javascript:goFormim(<c:out value="${sessSeq}"/>)">
                            <h5>회원정보</h5>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
        <form id="myinfo" name="myinfo" method="post">
            <input type="hidden" id="myseq" name="seq">
        </form>
	<script type="text/javascript">

		goFormim = function(sessSeq){
			
			$("#myseq").val(sessSeq);
			$("#myinfo").attr("action","/infra/member/userView");
			$("#myinfo").submit();
		}
	</script>