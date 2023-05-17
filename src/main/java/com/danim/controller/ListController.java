package com.danim.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.danim.model.ReviewListVO;
import com.danim.service.PagingService;
import com.danim.service.ReviewListService;

@Controller
@RequestMapping(value="/board/*")
public class ListController {
	
	@Autowired
	private ReviewListService reviewListService;
	
	private static final Logger log = LoggerFactory.getLogger(ListController.class);
	
	/* �Խ��� ��� ������ ���� */
    @GetMapping("/review_list")
    // => @RequestMapping(value="list", method=RequestMethod.GET)
    public void reviewListGET(Model model, @RequestParam(defaultValue="1") int currentPage) {
    	
    	int criNum = 0;
    	if(currentPage == 1) {
    		criNum = 0;
    	}else {
    		criNum = (currentPage - 1) * 9;
    	}
    	
    	List<ReviewListVO> list = this.reviewListService.select_list(criNum);
    	log.info("list.size() : " + list.size());
        log.info("�Խ��� ��� ������ ����");
        
        int total = this.reviewListService.review_page();
        
        model.addAttribute("review_list", reviewListService.select_list(criNum));
        model.addAttribute("best_review", reviewListService.best_review());
        model.addAttribute("select_do", reviewListService.select_do());
        model.addAttribute("select_si", reviewListService.select_si());
        model.addAttribute("list", new PagingService(total, currentPage, 9, 5, list));
        model.addAttribute("total", total);
    }
    
}

