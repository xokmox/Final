package com.inyoung.finalprj.service;

import com.inyoung.finalprj.domain.PaymentVO;

public interface PaymentService {
	public void pay(PaymentVO vo) throws Exception;
	public PaymentVO readPayInfo(Integer p_code) throws Exception;
}
