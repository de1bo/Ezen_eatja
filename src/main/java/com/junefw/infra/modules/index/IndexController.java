package com.junefw.infra.modules.index;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.junefw.infra.modules.index.Index;
import com.junefw.infra.modules.store.StoreServiceImpl;



@Controller
public class IndexController {
	@Autowired
	IndexServiceImpl service;
	@RequestMapping(value = "/index/indexView")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String indexView(@ModelAttribute("vo") IndexVo vo,Model model) throws Exception {

		

		return "/index/indexView";
	}
	
	@RequestMapping(value = "/index/indexMain")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String indexMain(@ModelAttribute("vo") IndexVo vo,Model model) throws Exception {

		int count = service.locationCount(vo);
		vo.setParamsPaging(count);
		
		
		  if(count != 0) {
			  List<Index> list = service.selectList(vo);
			  List<Index> listImg = service.selectImgList(vo);
			  
			  model.addAttribute("list", list);
			  model.addAttribute("listImg", listImg);
		  } else { 
			  // by pass 
			  }
		 
		  
		  
		  
		return "/index/indexMain";
	
	}
}
