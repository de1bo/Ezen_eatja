package com.junefw.infra.common.store;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class storeController {

	@RequestMapping(value = "/store/store_registration")
	public String store_registration() throws Exception {

		

		return "/store/store_registration";
	}
	
}
