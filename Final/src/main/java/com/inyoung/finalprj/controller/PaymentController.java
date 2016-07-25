package com.inyoung.finalprj.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.WebUtils;

import com.inyoung.finalprj.domain.PaymentVO;
import com.inyoung.finalprj.service.MemberService;
import com.inyoung.finalprj.service.PaymentService;

@Controller
@RequestMapping("/fare_guide/*")
public class PaymentController {
	
	@Inject
	private PaymentService p_service;

	@Inject MemberService m_service;
	
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
		p_service.pay(vo);
		model.addAttribute("payInfo", vo);
		return "redirect:/fare_guide/ConfirmPayment";
	}	
	
	@RequestMapping(value="/gift", method=RequestMethod.GET)
	public void getGift(){ //선물페이지로 이동
	}
	
	@RequestMapping(value="/gift", method=RequestMethod.POST)
	public String gift(PaymentVO vo){
		return "/fare_guide/ConfirmGift";
	}

}
