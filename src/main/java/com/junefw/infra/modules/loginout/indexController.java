package com.junefw.infra.modules.loginout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class indexController {

	@RequestMapping(value = "/index/indexView")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String indexView() throws Exception {

		

		return "/index/indexView";
	}
	
}
