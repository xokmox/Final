package com.inyoung.finalprj.service;

import java.util.List;

import com.inyoung.finalprj.domain.PaymentVO;

public interface PaymentService {
	public void pay(PaymentVO vo) throws Exception;
	public PaymentVO readPayInfo(Integer p_code) throws Exception;
}
