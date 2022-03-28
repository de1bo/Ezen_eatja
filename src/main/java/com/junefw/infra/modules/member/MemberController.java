package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(@ModelAttribute("vo") MemberVo vo,Model model) throws Exception {

		System.out.println("UtilDateTime.nowLocalDateTime(): " + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate(): " + UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString: " + UtilDateTime.nowString());
		
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
		
		
		
		
		
		
		
		
		
		
		
		
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		
		if(count != 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		// count 가 0이 아니면 list 가져오는 부분 수정 후 model 개체에 담기
		model.addAttribute("vo", vo);
		
		

		return "member/memberList";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo) throws Exception {

		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println("dto.getIfmmName(): " + dto.getIfmmName());

		// 입력을 작동시킨다.
		int result = service.insert(dto);
		
		System.out.println("result: " + result);
		
		redirectAttributes.addAttribute("ifcgSeq", dto.getSeq());	// get
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());	// get
		redirectAttributes.addAttribute("shOption", vo.getShOption());	// get
		redirectAttributes.addAttribute("shValue", vo.getShValue());	// get

		return "redirect:/member/memberList";
	}

	/*---------------------------------*/
	@RequestMapping(value = "/member/memberView")
	public String MemberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		System.out.println("vo.getSeq"+vo.getSeq());
		
		Member item= service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "member/memberView";
	}
	@RequestMapping(value = "/member/memberForm2")
	public String MemberForm2(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		
		// 한건의 데이터를 가져옴
		Member item= service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "member/memberForm2";
	}
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
		
		
		// 수정 프로세스 실행
		service.update(dto);
		
		redirectAttributes.addAttribute("Seq", dto.getSeq());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value= "/member/memberDele")
	public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value= "/member/memberNele")
	public String memberNele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
		service.updateDelet(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		return "redirect:/member/memberList";
	}
}