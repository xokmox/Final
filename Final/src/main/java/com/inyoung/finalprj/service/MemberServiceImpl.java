package com.inyoung.finalprj.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.inyoung.finalprj.domain.MemberVO;
import com.inyoung.finalprj.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public void updateCash(MemberVO vo) throws Exception {
		dao.updateCash(vo);
	}

	@Override
	public void upgrade(MemberVO vo) throws Exception {
		dao.upgrade(vo);
	}

	@Override
	public MemberVO getMileage(Integer m_code) throws Exception {
		return dao.getMileage(m_code);
	}

}
