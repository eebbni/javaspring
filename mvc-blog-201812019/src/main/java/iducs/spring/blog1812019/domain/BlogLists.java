package iducs.spring.blog1812019.domain;

import java.util.List;

public class BlogLists {
	private List<Blog> blogLists; // 페이지 당 리스트될 blog 리스트
	
	private int ceoBoardTotalCount; // 글 총 갯수
	private int currentPageNum; // 현재 페이지
	private int pageTotalCount; // 페이지 수
	private int ceoBoardCountPerPage; // 페이지당 보여지는 글 10개
	private int firstRow; // 페이지당 첫 줄


}
