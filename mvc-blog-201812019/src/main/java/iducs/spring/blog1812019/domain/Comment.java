package iducs.spring.blog1812019.domain;

import java.time.LocalDateTime;

public class Comment {
	private long id; // 댓글 아이디 (식별자)
	private Blogger blogger; // 댓글의 블로거 객체 또는 식별자
	private Blog blog; // 댓글의 블로그 객체 또는 식별자
	private String content; // 댓글 내용
	private LocalDateTime createTime; // 댓글 생성시간
	
	public Comment() {}
	public Comment(Blogger blogger, Blog blog, String content) {
		this.blogger = blogger;
		this.blog = blog;
		this.content = content;
		this.createTime = LocalDateTime.now();
	}
	
}
