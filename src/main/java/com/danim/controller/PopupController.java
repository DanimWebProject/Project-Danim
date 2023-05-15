package com.danim.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PopupController {
	
	private static final Logger logger = LoggerFactory.getLogger(PopupController.class);
	
	
	//���������� �˾� �̵�
	@RequestMapping(value="/MyPage", method = RequestMethod.GET)
	public  String MyPagepop() {
		
		logger.info("���� ������ ����");
		
		return "MyPage/MyPage";
	}
	//����������(���Խù�) �̵�
	@RequestMapping(value="/MyPagePost", method = RequestMethod.GET)
	public  String MyPagePost() {
		logger.info("���Խù� ����");
		
		return "MyPage/MyPagePost";
	}
	//����������(������) �̵�
	@RequestMapping(value="/MyPageCoupon", method = RequestMethod.GET)
	public  String MyPageCoupon() {
		logger.info("�������� ����");
		
		return "MyPage/MyPageCoupon";
	}
	//�α��� ������ �̵�
		@RequestMapping(value = "login", method = RequestMethod.GET)
		public void loginGET() {
			
			logger.info("�α��� ������ ����");
			
		}
}
