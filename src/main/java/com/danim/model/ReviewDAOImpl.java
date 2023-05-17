package com.danim.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ReviewListVO> selectList(){
		List<ReviewListVO> list = new ArrayList<ReviewListVO>();
	
		try {
			list = sqlSession.selectList(NAMESPACE+"selectList");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	@Override
	public int insert(ReviewListVO vo) {
		int res = 0;
		try {
			res = sqlSession.insert(NAMESPACE + "insert",vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
}
