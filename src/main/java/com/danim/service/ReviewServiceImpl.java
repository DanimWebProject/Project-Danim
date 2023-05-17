package com.danim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danim.model.ReviewDAO;
import com.danim.model.ReviewListVO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO dao;
	
	@Override
	public List<ReviewListVO> selectList(){
		return dao.selectList();
	}
	
	@Override
	public int insert(ReviewListVO vo) {
		return dao.insert(vo);
	}
	
	
}
