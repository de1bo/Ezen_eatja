package com.junefw.infra.modules.store;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.junefw.infra.modules.member.Member;




@Controller
public class StoreController {
	
	@Autowired
	StoreServiceImpl service;

	@RequestMapping(value = "/store/store_registration")
	public String store_registration(@ModelAttribute("vo") StoreVo vo) throws Exception {

		// 수동 increment start
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		
		// 수동 increment end

		return "/store/store_registration";
	}
	@RequestMapping(value = "/store/store_Info")
	public String store_Info(@ModelAttribute("vo") StoreVo vo, Model model) throws Exception {
		System.out.println("vo.getStifSeq"+vo.getStifSeq());
		
		// 수동 increment start
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		
		Store item= service.selectOne(vo);
		model.addAttribute("item", item);
		
		// 수동 increment end
		
		return "/store/store_Info";
	}
	
	
	@RequestMapping(value = "/store/storeInst")
	public String storeInst(@ModelAttribute("vo") StoreDao vo, Store dto, RedirectAttributes redirectAttributes) throws Exception {
		

		// 입력을 작동시킨다.
		int result = service.insert(dto);
		service.insertStoreTel(dto);
		service.insertStoreLocation(dto);
		
		System.out.println("result: " + result);

		return "redirect:/index/indexMain";
	}
	
}
