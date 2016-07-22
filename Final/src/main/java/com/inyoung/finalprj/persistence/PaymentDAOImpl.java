package com.inyoung.finalprj.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.inyoung.finalprj.domain.PaymentVO;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE="com.inyoung.mappers.PaymentMapper";
	
	@Override
	public void pay(PaymentVO vo) throws Exception {
		sqlSession.selectOne(NAMESPACE + ".pay", vo);
	}

	@Override
	public PaymentVO readPayInfo(Integer p_code) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".readPayInfo", p_code);
	}

}
