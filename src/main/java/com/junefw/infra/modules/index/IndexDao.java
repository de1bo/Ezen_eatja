package com.junefw.infra.modules.index;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class IndexDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.index.IndexMpp";
	
	public int locationCount(IndexVo vo) {return sqlSession.selectOne(namespace + ".locationCount", vo);}
	public List<Index> selectImgList(IndexVo vo) {List<Index> list = sqlSession.selectList(namespace + ".selectImgList", vo); return list; }
	  public List<Index> selectList(IndexVo vo) {List<Index> list =
	  sqlSession.selectList(namespace + ".selectList", vo); return list; }
	 

	
}