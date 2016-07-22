package com.inyoung.finalprj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.inyoung.finalprj.domain.MemberVO;
import com.inyoung.finalprj.domain.PaymentVO;
import com.inyoung.finalprj.persistence.PaymentDAO;


@Service
public class PaymentServiceImpl implements PaymentService {

	@Inject
	private PaymentDAO dao;
	
	
	@Override
	public void pay(PaymentVO vo) throws Exception {
		dao.pay(vo);
	}

	@Override
	public PaymentVO readPayInfo(Integer p_code) throws Exception {
		return dao.readPayInfo(p_code);
	}

}
