package com.inyoung.finalprj.persistence;

import com.inyoung.finalprj.domain.PaymentVO;

public interface PaymentDAO {
	public void pay(PaymentVO vo) throws Exception;
	public PaymentVO readPayInfo(Integer p_code) throws Exception;
}
