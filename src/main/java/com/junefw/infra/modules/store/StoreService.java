package com.junefw.infra.modules.store;

import java.util.List;


public interface StoreService {
	
	public int insert(Store dto) throws Exception;
	
	// 수동 increment start
	int selectOneCount(StoreVo vo) throws Exception;
	public Store selectOne(StoreVo vo) throws Exception;
	
	// 파생
	public int insertStoreTel(Store dto) throws Exception;
	public int insertStoreLocation(Store dto) throws Exception;
	public int insertStoreMenu(Store dto) throws Exception;
	public int insertUploaded(Store dto) throws Exception;
	
	List<Store> selectStoreMenuList(StoreVo vo) throws Exception;
	List<Store> selectStoreImgList(StoreVo vo) throws Exception;
}