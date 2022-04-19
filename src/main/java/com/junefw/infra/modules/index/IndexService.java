package com.junefw.infra.modules.index;

import java.util.List;


public interface IndexService {
	
	// 수동 increment start
	int locationCount(IndexVo vo) throws Exception;		// 좌표 paging
	List<Index> selectList(IndexVo vo) throws Exception; // 좌표
	List<Index> selectStore(IndexVo vo) throws Exception; // 매장 정보
	List<Index> selectImgList(IndexVo vo) throws Exception;	//store 이미지
	
}