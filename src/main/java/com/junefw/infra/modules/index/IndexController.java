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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.junefw.infra.modules.index.Index;
import com.junefw.infra.modules.member.Member;
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
		
		
		List<Index> list2 = service.selectStore(vo);
		
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
	
	@ResponseBody //include로 테이블 따로 생성해서 넣고 지도는 ajax필요없고 게시판은 ajax로 동적생성해야한다 이때 데이터를 db값을 가져올건지 html을 전체 따올건지가 문제인데 html전체 따오는게 쉽다.
	@RequestMapping(value = "/index/MapFormList")
	public Map<String, Object> MapFormList(Index dto, HttpSession httpSession, IndexVo vo, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println("dto.stifSeq()::::::::::::::: " + dto.getStifSeq());
		
		dto.setStifSeq(dto.getStifSeq());
		
		List<Index> selectList = service.selectList(vo);
		model.addAttribute("selectList", selectList);
		
		httpSession.setAttribute("StifSeq", vo.getStifSeq());
		
		returnMap.put("item", "success");
		
		return returnMap;	
	}
}
