package com.junefw.infra.modules.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";

	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	public List<Member> selectList(MemberVo vo) {List<Member> list = sqlSession.selectList(namespace + ".selectList", vo); return list; } 	
	public int insert(Member dto) {return sqlSession.insert( namespace + ".insert", dto);}
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public int update(Member dto) {return sqlSession.update( namespace + ".update", dto);}
	public int Userupdate(Member dto) {return sqlSession.update( namespace + ".Userupdate", dto);}
	public int delete(MemberVo vo) {return sqlSession.delete( namespace + ".delete", vo);}
	public int updateDelet(MemberVo vo) {return sqlSession.update(namespace + ".updateDelet", vo);}
	public List<Member> selectListForCache() { List<Member> list = sqlSession.selectList(namespace + ".selectListForCache", ""); return list; }
	
	// infrMemberEmail
	public int insertEmail(Member dto) {return sqlSession.insert( namespace + ".insertEmail", dto);}
	// infrMemberPhone
	public List<Member> selectListPhone(MemberVo vo) {List<Member> list = sqlSession.selectList(namespace + ".selectListPhone", vo); return list; }
	public int insertPhone(Member dto) {return sqlSession.insert( namespace + ".insertPhone", dto);}
	//infrMemberAddress
	public int insertAddress(Member dto) {return sqlSession.insert( namespace + ".insertAddress", dto);}
	
	// login
	public Member selectOneId(Member dto) { return sqlSession.selectOne(namespace + ".selectOneId", dto);}
	public Member selectOneLogin(Member dto) { return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
	
}