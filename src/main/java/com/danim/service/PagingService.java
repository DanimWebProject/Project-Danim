package com.danim.service;

import java.util.List;

import com.danim.model.ReviewListVO;

public class PagingService {
	// 페이징 처리를 위한 클래스
	// 게시글 데이터와 페이징 관련 정보를 담고 있음
	// 페이징 관련 멤버변수
	
	// 전체 글의 행의 수
	private int total;
	// 현재 페이지 번호
	private int currentPage;
	// 전체 페이지 개수
	private int totalPages;
	// 시작 페이지 번호
	private int startPage;
	// 종료 페이지 번호
	private int endPage;
	// 이전 페이지
	private int prev;
	// 다음 페이지
	private int next;
	// 페이징의 개수
	private int pagingCount;
	// 게시글 데이터
	private List<ReviewListVO> content;
	// 현재 페이지에서 출력하는 행의 기준 수---------------------이 밑에있는것들 구현하셈 이거말곤 건든거 없음
	private int currentNum;
	// 한 페이지에 보여질 행의 수
	private int postNum;
	
	// 생성자
	// postNum : 한 화면에 보여질 행의 수
	public PagingService(int total, int currentPage, int postNum, int pagingCount, List<ReviewListVO> content) {
		this.total = total;
		this.currentPage = currentPage;
		this.content = content;
		this.pagingCount = pagingCount;
		this.postNum = postNum;	//이것도 건드림
		
		if(total == 0) { // select 결과가 없다면...
			totalPages = 0;
			startPage = 0;
			endPage = 0;
		} else { // select 결과가 있다면...
			// 전체 페이지 개수 구하기(전체 글의 수 / 한 화면에 보여질 행의 수)
			// 정수와 정수의 나눗셈의 결과는 정수이므로 13 / 7 = 1
			totalPages = total / postNum;
			// 보정해줘야 할 경우는? 나머지가 0보다 클 때
			if(total % postNum > 0) {
				// 전체페이지수를 1증가 처리
				totalPages++;
			}
			
			// startPage : '이전 [1] [2] [3] [4] [5] 다음' 일때 1을 의미
			// 공식 : 현재페이지 / 페이징의 개수 * 페이징의 개수 + 1;
			startPage = currentPage / pagingCount * pagingCount + 1;
			// 보정해줘야 할 경우는? 5 / 5 * 5 + 1 => 6 경우처럼
			// 					현재페이지 % 5 == 0 일 때 
			if(currentPage % pagingCount == 0) {
				// startPage = startPage - 5(페이징의 개수)
				startPage -= pagingCount;
			}
			
			// endPage   : '이전 [1] [2] [3] [4] [5] 다음' 일때 5을 의미
			endPage = startPage + pagingCount - 1 ;
			// 보정해줘야 할 경우는? endPage > totalPages 일때
			//					endPage를 totalPages로 바꿔줘야 함 
			if(endPage > totalPages) {
				endPage = totalPages;
			}
		}
	}
	
	// 전체 행의 수를 리턴
	public int getTotal() {
		return this.total;
	}
	
	// select 결과가 없는가? 체킹 : true면 결과가 없다는 의미
	public boolean hasNoArticles() {
		return this.total == 0;
	}
	
	// select 결과가 있는가? 체킹 : true면 결과가 있다는 의미
	public boolean hasArticles() {
		return this.total > 0;
	}
	
	// 현재 페이지 번호 리턴
	public int getCurrentPage() {
		return this.currentPage;
	}
	
	// 전체 페이지의 개수 리턴
	public int getTotalPages() {
		return totalPages;
	}
	
	// 데이터 VO List 리턴
	public List<ReviewListVO> getContent(){
		return this.content;
	}
	
	// 목록 하단의 시작 번호를 리턴
	public int getStartPage() {
		return this.startPage;
	}
	
	// 목록 하단의 종료 번호를 리턴
	public int getEndPage() {
		return this.endPage;
	}
	
	// 이전 페이지 번호를 리턴
	public int prevPage() {
		this.prev = currentPage - 1;
		
		return this.prev;
	}
	
	// 다음 페이지 번호를 리턴
	public int nextPage() {
		this.next = currentPage - 2;
		
		return this.next;
	}
}
