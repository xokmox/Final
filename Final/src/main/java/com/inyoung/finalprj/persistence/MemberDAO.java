package com.inyoung.finalprj.persistence;

import com.inyoung.finalprj.domain.MemberVO;

public interface MemberDAO {

	public void updateCash(MemberVO vo) throws Exception; //마일리지 적립
	public void upgrade(MemberVO vo) throws Exception;	//등급조정
	public MemberVO getMileage(Integer m_code) throws Exception; //마일리지 가져오기

}
