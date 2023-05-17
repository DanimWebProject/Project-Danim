package com.danim.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.danim.model.TotalSearchDao;

@Service
public class TotalSearchServiceImpl implements TotalSearchService{
	@Autowired
	TotalSearchDao totalSearchDao;
	
	@Override
	public List<Map<String, Object>> reviewSearchResult(Map<String, Object> map){
		return this.totalSearchDao.reviewSearch(map);
	}
	
	@Override
	public List<Map<String, Object>> partySearchResult(Map<String, Object> map){
		return this.totalSearchDao.partySearch(map);
	}
	
	@Override
	public List<Map<String, Object>> foodSearchResult(Map<String, Object> map){
		return this.totalSearchDao.foodSearch(map);
	}	
}
