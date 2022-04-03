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
	
	private static String namespace = "com.junefw.infra.modules.Store.StoreMpp";
	
	public int insert(Store dto) {return sqlSession.insert( namespace + ".insert", dto);}
	public int insertStoreTel(Store dto) {return sqlSession.insert( namespace + ".insertStoreTel", dto);}
	
}