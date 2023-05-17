package com.danim.dao;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TotalSearchDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<Map<String, Object>> reviewSearch(Map<String, Object> map){
		return this.sqlSessionTemplate.selectList("totalSearch.reviewListSearch", map);
	}
	
	public List<Map<String, Object>> partySearch(Map<String, Object> map){
		return this.sqlSessionTemplate.selectList("totalSearch.partyListSearch", map);
	}
	
	public List<Map<String, Object>> foodSearch(Map<String, Object> map){
		return this.sqlSessionTemplate.selectList("totalSearch.foodListSearch", map);
	}
}
