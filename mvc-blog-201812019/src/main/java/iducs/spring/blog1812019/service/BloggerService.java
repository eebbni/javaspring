package iducs.spring.blog1812019.service;

import java.util.List;

import iducs.spring.blog1812019.domain.Blogger;

public interface BloggerService {
	Blogger getBlogger(long id);		// primary key에 해당하는 id로  조회	
	Blogger getUserByBid(String bid); 	// unique key에 해당하는 bid, blogger id로 조회
	
	List<Blogger> getBloggers(); // 모든 사용자 조회
	
	int postBlogger(Blogger blogger); // 생성
	int updateBlogger(Blogger blogger); // 수정
	int deleteBlogger(long id); // 삭제
}
