package com.danim.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.danim.model.MemberVO;
import com.danim.service.MemberService;

@Controller
@RequestMapping(value= "/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberservice;
	
	//濡쒓렇�씤 �럹�씠吏� �씠�룞
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {
		
		logger.info("濡쒓렇�씤 �럹�씠吏� 吏꾩엯");
		
		
	}
	
	//�쉶�썝媛��엯 �럹�씠吏� �씠�룞
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {
		
		logger.info("�쉶�썝媛��엯 �럹�씠吏� 吏꾩엯");
		
	}
	
	//�쉶�썝媛��엯
		@RequestMapping(value="/join", method=RequestMethod.POST)
		public String joinPOST(MemberVO member) throws Exception{
			
			logger.info("join 吏꾩엯");
			
			// �쉶�썝媛��엯 �꽌鍮꾩뒪 �떎�뻾
			memberservice.memberJoin(member);
			
			logger.info("join Service �꽦怨�");
			
			return "redirect:/login";
			
		}
	
	//鍮꾨�踰덊샇 蹂�寃� �럹�씠吏� �씠�룞
	@RequestMapping(value = "change_pw", method = RequestMethod.GET)
	public void change_pwGET() {
		
		logger.info("鍮꾨�踰덊샇 蹂�寃� �럹�씠吏� 吏꾩엯");
		
	}
	
	//鍮꾨�踰덊샇 李얘린 �럹�씠吏� �씠�룞
	@RequestMapping(value = "find_pw", method = RequestMethod.GET)
	public void find_pwGET() {
		
		logger.info("鍮꾨�踰덊샇 李얘린 �럹�씠吏� 吏꾩엯");
		
	}
	
}
