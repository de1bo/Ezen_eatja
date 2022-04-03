package com.junefw.infra.modules.store;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
public class StoreController {
	
	@Autowired
	StoreServiceImpl service;

	@RequestMapping(value = "/store/store_registration")
	public String store_registration(@ModelAttribute("vo") StoreVo vo) throws Exception {

		

		return "/store/store_registration";
	}
	
	
	@RequestMapping(value = "/store/storeInst")
	public String storeInst(@ModelAttribute("vo") StoreDao vo, Store dto, RedirectAttributes redirectAttributes) throws Exception {
		

		// 입력을 작동시킨다.
		
		int result = service.insert(dto);
		service.insertStoreTel(dto);
		service.insertStoreLocation(dto);
		 
		
		System.out.println("result: " + result);

		return "redirect:/member/memberList";
	}
}
