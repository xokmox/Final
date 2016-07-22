package com.inyoung.finalprj.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.inyoung.finalprj.domain.PaymentVO;
import com.inyoung.finalprj.service.PaymentService;

@Controller
@RequestMapping("/fare_guide/*")
public class PaymentController {
	
	@Inject
	private PaymentService service;
	
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@RequestMapping(value="/fareGuide")
	public void fareGuide(){//요금안내페이지로 이동		
	}
			
	@RequestMapping(value="/payment", method=RequestMethod.GET)
	public String getPayment(@RequestParam("m_code") int m_code, Model model) throws Exception{ //이용권구매 페이지로 이동
		return "/fare_guide/payment";
	}

	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String pay(PaymentVO vo, Model model) throws Exception{ //이용권 구매
		logger.info("vo :" + vo.toString());
		service.pay(vo);
		model.addAttribute("payInfo", service.readPayInfo(vo.getP_code()));
		return "/fare_guide/ConfirmPayment";
	}	
	
	@RequestMapping(value="/gift", method=RequestMethod.GET)
	public void getGift(){ //선물페이지로 이동
	}
	
	@RequestMapping(value="/gift", method=RequestMethod.POST)
	public String gift(PaymentVO vo){
		return "/fare_guide/ConfirmGift";
	}

}
