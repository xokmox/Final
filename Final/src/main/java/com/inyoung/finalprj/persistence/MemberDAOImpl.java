package com.inyoung.finalprj.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.inyoung.finalprj.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	
	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE="com.inyoung.mappers.MemberMapper";

	@Override
	public void updateCash(MemberVO vo) throws Exception {
		sqlSession.selectOne(NAMESPACE + ".updateCash" + vo);
	}

	@Override
	public void upgrade(MemberVO vo) throws Exception {
		sqlSession.selectOne(NAMESPACE + ".updateGrade" + vo);
	}

	@Override
	public MemberVO getMileage(Integer m_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".getMileage" + m_code);
	}

}
