package com.junefw.infra.modules.store;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.store.StoreMpp";
	
	// seq 수동 increment
	public int selectOneCount(StoreVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	public Store selectOne(StoreVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int insert(Store dto) {return sqlSession.insert( namespace + ".insert", dto);}
	public int insertStoreTel(Store dto) {return sqlSession.insert( namespace + ".insertStoreTel", dto);}
	public int insertStoreLocation(Store dto) {return sqlSession.insert( namespace + ".insertStoreLocation", dto);}
	public int insertStoreMenu(Store dto) {return sqlSession.insert( namespace + ".insertStoreMenu", dto);}
	
	public List<Store> selectStoreMenuList(StoreVo vo) {List<Store> list = sqlSession.selectList(namespace + ".selectStoreMenuList", vo); return list; }	//menu List 
	public List<Store> selectStoreImgList(StoreVo vo) {List<Store> list2 = sqlSession.selectList(namespace + ".selectStoreImgList", vo); return list2; } 		//Img List

	
	public int insertUploaded(Store dto) {return sqlSession.insert( namespace + ".insertUploaded", dto);}
	
	public int Storeupdate(Store dto) {return sqlSession.update( namespace + ".Storeupdate", dto);}
	public int Storemenuupdate(Store dto) {return sqlSession.update( namespace + ".Storemenuupdate", dto);}
	
	
	public int updatestDelet(StoreVo vo) {return sqlSession.update(namespace + ".updatestDelet", vo);}
	
}