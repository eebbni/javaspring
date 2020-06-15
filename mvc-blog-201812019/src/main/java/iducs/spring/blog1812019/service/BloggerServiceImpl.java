package iducs.spring.blog1812019.service;

import java.util.List;

import iducs.spring.blog1812019.domain.Blogger;
import iducs.spring.blog1812019.repository.BloggerRepository;

public class BloggerServiceImpl implements BloggerService {
	private BloggerRepository bloggerRepository;
	public BloggerServiceImpl(BloggerRepository bloggerRepository) {
		this.bloggerRepository = bloggerRepository;
	}
	@Override
	public Blogger getBlogger(long id) {
		Blogger blogger = new Blogger();
		blogger.setId(id);
		return bloggerRepository.read(blogger);
	}
	
	@Override
	public Blogger getUserByBid(String bid) {
		return bloggerRepository.findByBid(bid);
	}
	
	@Override
	public List<Blogger> getBloggers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int postBlogger(Blogger blogger) {
		// TODO Auto-generated method stub
		int count = bloggerRepository.create(blogger);
		return count;
	}

	@Override
	public int updateBlogger(Blogger blogger) {
		int count = bloggerRepository.update(blogger);
		return count;
	}

	@Override
	public int deleteBlogger(long id) {
		Blogger blogger = new Blogger();
		blogger.setId(id);
		int count = bloggerRepository.delete(blogger);
		return count;
	}

}
