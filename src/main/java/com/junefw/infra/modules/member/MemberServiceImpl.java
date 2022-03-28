package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo); 
	}

	@Override
	public int insert(Member dto) throws Exception {
		
		try {
			dto.setRegDateTime(UtilDateTime.nowDate());
			dto.setModDateTime(UtilDateTime.nowDate());
			
			
			setRegMod(dto);
		} finally{
			
		}
		
		return dao.insert(dto);
	}
	private void setRegMod(Member dto) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
	return dao.selectOne(vo);
	}
	
	@Override
	public int update(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}
	@Override
	public int delete(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}
	@Override
	public int updateDelet(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateDelet(vo);
	}
	
}