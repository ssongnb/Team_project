package com.dangschool.util;

public class Criteria2 {

	//����¡
	private int pageNum;	//������ ��ȣ
	private int count;		//������ ������ ��
		
	//�˻� �߰�
	private String searchType="";
	private String keyword="";

	public Criteria2() {
		this.pageNum = 1;	//���۵Ǵ� ������ ��ȣ
		this.count = 9;	//������ ������ ����
			
		this.searchType = null;
		this.keyword = null;
			
	}
	
	public Criteria2(int pageNum, int count) {
		super();
		this.pageNum = pageNum;
		this.count = count;
	}

	public int getPageStart() {
		return ((pageNum-1)*count)+1;
	}

	
	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getCount() {
		return count;
	}
	public int getCount_oracle() {
		return (pageNum*count);
	}

	public void setCount(int count) {
		this.count = count;
	}

	
	//�˻��� ���� getter, setter
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	
	
	
	
}
