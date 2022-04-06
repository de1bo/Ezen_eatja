package com.junefw.infra.modules.store;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.modules.member.MemberVo;

@Service
public class StoreServiceImpl implements StoreService{

	@Autowired
	StoreDao dao;
	
	@Override
	public int selectOneCount(StoreVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Store dto) throws Exception {
		
		try {
			dto.setRegDateTime(UtilDateTime.nowDate());
			dto.setModDateTime(UtilDateTime.nowDate());
			
			
			setRegMod(dto);
		} finally{
			
		}
		return dao.insert(dto);
	}

	@Override
	public int insertStoreTel(Store dto) throws Exception {
	
		return dao.insertStoreTel(dto);
	}
	@Override
	public int insertStoreLocation(Store dto) throws Exception {
	
		return dao.insertStoreLocation(dto);
	}
	@Override
	public int insertStoreMenu(Store dto) throws Exception {
		
		return dao.insertStoreMenu(dto);
	}
	
	
	private void setRegMod(Store dto) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}