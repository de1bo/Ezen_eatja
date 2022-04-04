package com.junefw.infra.modules.index;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;

@Service
public class IndexServiceImpl implements IndexService{

	@Autowired
	IndexDao dao;
	
	@Override
	public int locationCount(IndexVo vo) throws Exception {
		return dao.locationCount(vo);
	}
		
	
	  @Override
	  public List<Index> selectList(IndexVo vo) throws Exception {

		return dao.selectList(vo);
	}
	 

}