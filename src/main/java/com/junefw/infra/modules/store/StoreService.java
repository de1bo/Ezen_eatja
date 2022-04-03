package com.junefw.infra.modules.store;

import java.util.List;


public interface StoreService {
	
	public int insert(Store dto) throws Exception;
	

	
	// 파생
	public int insertStoreTel(Store dto) throws Exception;
	public int insertStoreLocation(Store dto) throws Exception;
}