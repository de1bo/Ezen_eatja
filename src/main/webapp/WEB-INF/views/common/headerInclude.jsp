<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<section id="header">
            <div class="header-area">
                <!--End of top header-->
                <div class="header_menu text-center" data-spy="affix" data-offset-top="50" id="nav">
                    <div class="container">
                        <nav class="navbar navbar-default zero_mp">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand custom_navbar-brand" href="#"><img src="/infra/resources/images/logo1.png" height="50" width="70"></a>
                            </div>
                            <!--End of navbar-header-->

                            <!-- 메뉴바 -->
                            <div class="collapse navbar-collapse zero_mp" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right main_menu">
                                    <li><a href="/infra/index/indexMain">메인메뉴</a></li>
                                    <li><a href="/infra/store/store_registration" id="store_registration">매장등록</a></li>
                                    <li><a href="/infra/member/memberList" id="adminUserManagement">고객관리</a></li>
                                    <li><a href="javascript:goFormim(<c:out value="${sessSeq}"/>)" id="userInfo">회원정보</a></li>
                                    <li><a href="" id="btnLogout">LOGOUT</a></li>
                                </ul>
                            </div>
                            <!-- /.navbar-collapse -->
                        </nav>
                        <!--End of nav-->
                    </div>
                    <!--End of container-->
                </div>
                <!--End of header menu-->
            </div>
            <!--end of header area-->
        </section>
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

