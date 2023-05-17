package com.danim.model;

import java.util.List;

public interface ReviewDAO {
	String NAMESPACE = "review.";
	
	public List<ReviewListVO> selectList();
	public int insert(ReviewListVO vo);
	
	
}
