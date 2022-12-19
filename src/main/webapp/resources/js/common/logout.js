
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