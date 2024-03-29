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
	
	//로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {
		
		logger.info("로그인 페이지 진입");
		
		
	}
	
	//회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {
		
		logger.info("회원가입 페이지 진입");
		
	}
	
	//회원가입
		@RequestMapping(value="/join", method=RequestMethod.POST)
		public String joinPOST(MemberVO member) throws Exception{
			
			logger.info("join 진입");
			
			// 회원가입 서비스 실행
			memberservice.MemberJoin(member);
			
			logger.info("join Service 성공");
			
			return "redirect:/login";
			
		}
	
	//비밀번호 변경 페이지 이동
	@RequestMapping(value = "change_pw", method = RequestMethod.GET)
	public void change_pwGET() {
		
		logger.info("비밀번호 변경 페이지 진입");
		
	}
	
	//비밀번호 찾기 페이지 이동
	@RequestMapping(value = "find_pw", method = RequestMethod.GET)
	public void find_pwGET() {
		
		logger.info("비밀번호 찾기 페이지 진입");
		
	}
	
}
