package com.danim.service;

import java.util.List;

import com.danim.model.ReviewListVO;

public interface ReviewService {
	
	public List<ReviewListVO> selectList();
	public int insert(ReviewListVO vo);
}
