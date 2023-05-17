package com.danim.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.danim.model.ReviewListVO;
import com.danim.service.ReviewService;

@Controller
@RequestMapping(value="/board/*")
public class ReviewWriteController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReviewWriteController.class);
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/list.do")
	public String list(Model model) {
		logger.info("리스트 페이지 진입");
	
		model.addAttribute("list",reviewService.selectList());
		return "board/review_list";
		
	}
	
	
	@RequestMapping(value = "/insert.do")
	public String insert() {
		logger.info("insert 페이지 진입");
		
		return "board/review_write";
	}
	
	@RequestMapping("/reinsert.do")
	public String insertBoard(ReviewListVO vo) {
		
		logger.info("insert");
		
		int res = reviewService.insert(vo);
		
		if(res>0) {
			return "redirect:review_list";
		}else{
			return "redirect:review_write";
		}
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
