package com.danim.service;

import java.util.List;
import java.util.Map;

public interface TotalSearchService {

	List<Map<String, Object>> reviewSearchResult(Map<String, Object> map);

	List<Map<String, Object>> partySearchResult(Map<String, Object> map);

	List<Map<String, Object>> foodSearchResult(Map<String, Object> map);
	
}
