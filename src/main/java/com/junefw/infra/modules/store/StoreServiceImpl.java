package com.junefw.infra.modules.store;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;

@Service
public class StoreServiceImpl implements StoreService{

	@Autowired
	StoreDao dao;
	

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
	
	
	private void setRegMod(Store dto) {
		// TODO Auto-generated method stub
		
	}
	
}