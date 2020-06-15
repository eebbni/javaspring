package iducs.spring.blog1812019.service;

import java.util.List;

import iducs.spring.blog1812019.domain.Blog;

public interface BlogService {
	Blog getBlog(long id);		// primary key에 해당하는 id로  조회
	List<Blog> getBlogs(); // 모든 사용자 조회
	List<Blog> getBlogsByTitle(String title); // name으로 조회
	List<Blog> getBlogByBlogger(String blogger); // company으로 조회
	List<Blog> getBlogByPage(int index, int size); // 페이지로 조회
	int postBlog(Blog blog); // 생성
	int updateBlog(Blog blog); // 수정
	int deleteBlog(long id); // 삭제
}
