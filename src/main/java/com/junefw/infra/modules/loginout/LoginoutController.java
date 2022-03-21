package com.junefw.infra.modules.loginout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class LoginoutController {

	@RequestMapping(value = "/loginout/loginoutLogin")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String Login() throws Exception {

		

		return "/loginout/loginoutLogin";
	}
	
}
