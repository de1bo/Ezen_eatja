package com.junefw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;

@RestController
@RequestMapping(value = "/rest/member")
public class MemberRestController {
		
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "rest/member", method = RequestMethod.GET)
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = service.selectList(vo);
		return list;
	}
	
	@RequestMapping(value = "rest/member/{seq}", method = RequestMethod.GET)
	public Member selectOne(@PathVariable String seq, MemberVo vo) throws Exception {
		vo.setSeq(seq);
		Member item = service.selectOne(vo);
		return item;
	}
	
	@RequestMapping(value = "rest/member/{seq}", method = RequestMethod.POST)
	public String insert(@RequestBody Member dto) throws Exception {
		service.insert(dto);
		return dto.getSeq();
	}
	@RequestMapping(value = "rest/member/{seq}", method = RequestMethod.PATCH)
	public void update(@PathVariable String seq, @RequestBody Member dto) throws Exception {
		dto.setSeq(seq);
		service.update(dto);
	}
	@RequestMapping(value = "rest/member/{seq}") 	//브라우저창에 입력하는 주소
	   public void memberDel(@PathVariable String seq, @RequestBody Member dto, MemberVo vo) throws Exception{
		   
		   service.updateDelet(vo);
		  
	   }  
}