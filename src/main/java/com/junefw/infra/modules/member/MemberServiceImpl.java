package com.junefw.infra.modules.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.common.util.UtilMail;

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
//			UtilMail.sendMail();
		} finally{
			
		}
		
		return dao.insert(dto);
	}
	
	@Override
	public int insertAddress(Member dto) throws Exception {
		try {
			dto.setRegDateTime(UtilDateTime.nowDate());
			dto.setModDateTime(UtilDateTime.nowDate());
			
			
			setRegMod(dto);
		} finally{
			
		}
		return dao.insertAddress(dto);
	}
	
	@Override
	public int insertPhone(Member dto) throws Exception {
		try {
			dto.setRegDateTime(UtilDateTime.nowDate());
			dto.setModDateTime(UtilDateTime.nowDate());
			
			
			setRegMod(dto);
		} finally{
			
		}
		return dao.insertPhone(dto);
	}
	@Override
	public int insertEmail(Member dto) throws Exception {
		try {
			dto.setRegDateTime(UtilDateTime.nowDate());
			dto.setModDateTime(UtilDateTime.nowDate());
			
			
			setRegMod(dto);
		} finally{
			
		}
		return dao.insertEmail(dto);
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
	public int Userupdate(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.Userupdate(dto);
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
	
	@PostConstruct
	public void selectListForCache() {
		
		List<Member> memberListFromDb = (ArrayList<Member>) dao.selectListForCache();
		
		Member.cachedCodeArrayList.clear();
		Member.cachedCodeArrayList.addAll(memberListFromDb);
		System.out.println("cachedCodeArrayList: " + Member.cachedCodeArrayList.size() + " chached ! ");
		
	}
	
	public static List<Member> selectListCachedCode(String Seq) throws Exception {
		List<Member> item = new ArrayList<Member>();
		for(Member codeRow : Member.cachedCodeArrayList) {
			if(codeRow.getSeq().equals(Seq)) {
				item.add(codeRow);
			} else {
				// by pass
			}
		}
		return item;
	}
	@Override
	public Member selectOneId(Member dto) throws Exception {
	return dao.selectOneId(dto);
	}
	
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
	return dao.selectOneLogin(dto);
	}
	
	
	
}