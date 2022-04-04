package com.junefw.infra.modules.index;

import java.util.List;


public interface IndexService {
	
	// 수동 increment start
	int locationCount(IndexVo vo) throws Exception;
	 List<Index> selectList(IndexVo vo) throws Exception; 
	
}