package com.junefw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

		/* Date start*/
		System.out.println("UtilDateTime.nowLocalDateTime(): " + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate(): " + UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString: " + UtilDateTime.nowString());
		
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addStringTime(vo.getShDateEnd()));
		/* Date end*/
		
		
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
	
	@RequestMapping(value = "/member/AdminForm")
	public String AdminForm(@ModelAttribute("vo") MemberVo vo) throws Exception {

		return "member/AdminForm";
	}
	
	@RequestMapping("/member/excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		/*
		 * vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		 * vo.setShDateStart(vo.getShDateStart() == null ?
		 * UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(),
		 * Constants.DATE_INTERVAL) :
		 * UtilDateTime.add00TimeString(vo.getShDateStart()));
		 * vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() :
		 * UtilDateTime.addNowTimeString(vo.getShDateEnd()));
		 */

		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
//			List<?> list = service.selectList(vo);

		
		
	//        Workbook wb = new HSSFWorkbook();
	        Workbook wb = new XSSFWorkbook();
	        Sheet sheet = wb.createSheet("첫번째 시트");
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
	
	        // Header
	        row = sheet.createRow(rowNum++);
	        cell = row.createCell(0);
	        cell.setCellValue("번호");
	        cell = row.createCell(1);
	        cell.setCellValue("이름");
	        cell = row.createCell(2);
	        cell.setCellValue("제목");
	
	        // Body
	        
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            cell = row.createCell(0);
	            cell.setCellValue(String.valueOf(list.get(i).getSeq()));
	            cell = row.createCell(1);
	            cell.setCellValue(list.get(i).getIfmmName());
	            cell = row.createCell(2);
	            cell.setCellValue(i+"_title");
	        }
	
	        // 컨텐츠 타입과 파일명 지정
	        httpServletResponse.setContentType("ms-vnd/excel");
	//        response.setHeader("Content-Disposition", "attachment;filename=example.xls");
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");
	
	        // Excel File Output
	        wb.write(httpServletResponse.getOutputStream());
	        wb.close();
		}
    }
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println("dto.getIfmmName(): " + dto.getIfmmName());

		// 입력을 작동시킨다.
		
		int result = service.insert(dto);
		 service.insertAddress(dto);
		 service.insertPhone(dto); 
		 service.insertEmail(dto); 
		 
		
		System.out.println("result: " + result);
		
		redirectAttributes.addAttribute("seq", dto.getSeq());	// get
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());	// get
		redirectAttributes.addAttribute("shOption", vo.getShOption());	// get
		redirectAttributes.addAttribute("shValue", vo.getShValue());	// get

		return "redirect:/member/loginForm";
	}

	/*---------------------------------*/
	@RequestMapping(value = "/member/memberView")
	public String MemberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		System.out.println("vo.getSeq"+vo.getSeq());
		

		System.out.println("############################");
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getThisPage(): " + vo.getThisPage());
		System.out.println("vo.getSeq(): " + vo.getSeq());
		System.out.println("############################");
		
		
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
	////////////////////////////////////////////////////////////
	@RequestMapping(value = "/member/userForm2")
	public String userForm2(Model model, MemberVo vo) throws Exception{
		
		// 한건의 데이터를 가져옴
		Member item= service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "/member/userForm2";
	}
	@RequestMapping(value = "/member/userUpdt")
	public String userUpdt(@ModelAttribute("vo") Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		
		// 수정 프로세스 실행
		service.Userupdate(dto);
		redirectAttributes.addAttribute("Seq", dto.getSeq());
		
		return "redirect:/member/userView";
	}
	@RequestMapping(value = "/member/userView")
	public String userView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	
		Member item= service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "/member/userView";
	}
	////////////////////////////////////////////////////////////
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		
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
	
	@RequestMapping(value = "/member/memberMultiUele") /* check box 삭제 */
	public String memberMultiUele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
	
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setSeq(checkboxSeq);
			service.updateDelet(vo);
		}
	
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/member/memberMultiDele") /* check box 삭제 */
	public String memberMultiDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception{
	
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setSeq(checkboxSeq);
			service.updateDelet(vo);
		}
	
		return "redirect:/member/memberList";
	}
	
		@RequestMapping(value = "/member/loginForm")
//		public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		public String Login() throws Exception {

			

			return "/member/loginForm";
		}
		
		@ResponseBody
		@RequestMapping(value = "/member/loginProc")
		public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			Member itemMember = service.selectOneLogin(dto);

			
			
			if(itemMember != null) {

				httpSession.setAttribute("sessSeq", itemMember.getSeq());
				httpSession.setAttribute("sessRegistTypeCd", itemMember.getIfmmRegistTypeCd());
				httpSession.setAttribute("sessId", itemMember.getIfmmId());
				httpSession.setAttribute("sessName", itemMember.getIfmmName());
					
					returnMap.put("item", "success");
				} else {
					returnMap.put("item", "fail");
				
			}
			return returnMap;
		}
		
		@ResponseBody
		@RequestMapping(value = "/member/logoutProc")
		public Map<String, Object> logoutProc(Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			httpSession.invalidate();
			return returnMap;
		}
		
		@ResponseBody //구글 로그인
		@RequestMapping(value = "/member/GloginProc")
		public Map<String, Object> GloginProc(@RequestParam("ifmmName")String name, Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			System.out.println(name);
			httpSession.setAttribute("sessName", name);
			httpSession.setAttribute("sessRegistTypeCd", "4");
			httpSession.setAttribute("sessId","구글 회원입니다");
			httpSession.setAttribute("sessSeq","구글 회원입니다");
			
			returnMap.put("item", "success");
			
			return returnMap;	
		}
		
		
		@ResponseBody //카카오 로그인
		@RequestMapping(value = "/member/KakaoLgProc")
		public Map<String, Object> KakaoLgProc(@RequestParam("ifmmName")String name, Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			System.out.println(name);
			httpSession.setAttribute("sessName", name);
			httpSession.setAttribute("sessRegistTypeCd", "4");
			httpSession.setAttribute("sessId","카카오 회원입니다");
			httpSession.setAttribute("sessSeq","카카오 회원입니다");
			
			returnMap.put("item", "success");
			
			return returnMap;	
		}
		
		@ResponseBody //페북 로그인
		@RequestMapping(value = "/member/FBLgProc")
		public Map<String, Object> FBLgProc(@RequestParam("ifmmName")String name, Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			System.out.println(name);
			httpSession.setAttribute("sessName", name);
			httpSession.setAttribute("sessRegistTypeCd", "4");
			httpSession.setAttribute("sessId","페이스북 회원입니다");
			httpSession.setAttribute("sessSeq","페이스북 회원입니다");
			
			returnMap.put("item", "success");
			
			return returnMap;	
		}
		
		
		
}