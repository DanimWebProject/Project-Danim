package com.danim.service;

import java.util.List;

import com.danim.model.ReviewListVO;

public class PagingService {
	// ����¡ ó���� ���� Ŭ����
	// �Խñ� �����Ϳ� ����¡ ���� ������ ��� ����
	// ����¡ ���� �������
	
	// ��ü ���� ���� ��
	private int total;
	// ���� ������ ��ȣ
	private int currentPage;
	// ��ü ������ ����
	private int totalPages;
	// ���� ������ ��ȣ
	private int startPage;
	// ���� ������ ��ȣ
	private int endPage;
	// ���� ������
	private int prev;
	// ���� ������
	private int next;
	// ����¡�� ����
	private int pagingCount;
	// �Խñ� ������
	private List<ReviewListVO> content;
	// ���� ���������� ����ϴ� ���� ���� ��---------------------�� �ؿ��ִ°͵� �����ϼ� �̰Ÿ��� �ǵ�� ����
	private int currentNum;
	// �� �������� ������ ���� ��
	private int postNum;
	
	// ������
	// postNum : �� ȭ�鿡 ������ ���� ��
	public PagingService(int total, int currentPage, int postNum, int pagingCount, List<ReviewListVO> content) {
		this.total = total;
		this.currentPage = currentPage;
		this.content = content;
		this.pagingCount = pagingCount;
		this.postNum = postNum;	//�̰͵� �ǵ帲
		
		if(total == 0) { // select ����� ���ٸ�...
			totalPages = 0;
			startPage = 0;
			endPage = 0;
		} else { // select ����� �ִٸ�...
			// ��ü ������ ���� ���ϱ�(��ü ���� �� / �� ȭ�鿡 ������ ���� ��)
			// ������ ������ �������� ����� �����̹Ƿ� 13 / 7 = 1
			totalPages = total / postNum;
			// ��������� �� ����? �������� 0���� Ŭ ��
			if(total % postNum > 0) {
				// ��ü���������� 1���� ó��
				totalPages++;
			}
			
			// startPage : '���� [1] [2] [3] [4] [5] ����' �϶� 1�� �ǹ�
			// ���� : ���������� / ����¡�� ���� * ����¡�� ���� + 1;
			startPage = currentPage / pagingCount * pagingCount + 1;
			// ��������� �� ����? 5 / 5 * 5 + 1 => 6 ���ó��
			// 					���������� % 5 == 0 �� �� 
			if(currentPage % pagingCount == 0) {
				// startPage = startPage - 5(����¡�� ����)
				startPage -= pagingCount;
			}
			
			// endPage   : '���� [1] [2] [3] [4] [5] ����' �϶� 5�� �ǹ�
			endPage = startPage + pagingCount - 1 ;
			// ��������� �� ����? endPage > totalPages �϶�
			//					endPage�� totalPages�� �ٲ���� �� 
			if(endPage > totalPages) {
				endPage = totalPages;
			}
		}
	}
	
	// ��ü ���� ���� ����
	public int getTotal() {
		return this.total;
	}
	
	// select ����� ���°�? üŷ : true�� ����� ���ٴ� �ǹ�
	public boolean hasNoArticles() {
		return this.total == 0;
	}
	
	// select ����� �ִ°�? üŷ : true�� ����� �ִٴ� �ǹ�
	public boolean hasArticles() {
		return this.total > 0;
	}
	
	// ���� ������ ��ȣ ����
	public int getCurrentPage() {
		return this.currentPage;
	}
	
	// ��ü �������� ���� ����
	public int getTotalPages() {
		return totalPages;
	}
	
	// ������ VO List ����
	public List<ReviewListVO> getContent(){
		return this.content;
	}
	
	// ��� �ϴ��� ���� ��ȣ�� ����
	public int getStartPage() {
		return this.startPage;
	}
	
	// ��� �ϴ��� ���� ��ȣ�� ����
	public int getEndPage() {
		return this.endPage;
	}
	
	// ���� ������ ��ȣ�� ����
	public int prevPage() {
		this.prev = currentPage - 1;
		
		return this.prev;
	}
	
	// ���� ������ ��ȣ�� ����
	public int nextPage() {
		this.next = currentPage - 2;
		
		return this.next;
	}
}
