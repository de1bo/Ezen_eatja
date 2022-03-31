package com.junefw.infra.modules.index;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.junefw.infra.modules.member.Member;



@Controller
public class indexController {

	@RequestMapping(value = "/index/indexView")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String indexView() throws Exception {

		

		return "/index/indexView";
	}
	
}
