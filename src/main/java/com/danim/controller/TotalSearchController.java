package com.danim.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TotalSearchController {
	private static final Logger logger = LoggerFactory.getLogger(TotalSearchController.class);

	@RequestMapping(value="totalSearch", method=RequestMethod.GET)
	public void totalSearch() {
		logger.info("totalSearch 페이지 진입");
	}
	/*
	@Autowired
	TotalSearchService totalSearchService;
	
	@RequestMapping(value="totalSearch")
	public ModelAndView totalSearch(@RequestParam Map<String, Object> ){
		List<Map<String, Object>> reviewResult = this.totalSearchService.reviewSearchResult(map);
		List<Map<String, Object>> partyResult = this.totalSearchService.partySearchResult(map);
		List<Map<String, Object>> foodResult = this.totalSearchService.foodSearchResult(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewData", reviewResult);
		mav.addObject("partyData", partyResult);
		mav.addObject("foodData", foodResult);
		
		if(map.containsKey("keyword")){
			mav.addObject("keyword", map.get("keyword"));
		}
		
		mav.setViewName("totalSearch");
		return mav;
	}
	*/
}
