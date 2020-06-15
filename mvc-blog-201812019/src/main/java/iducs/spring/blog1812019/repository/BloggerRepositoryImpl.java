package iducs.spring.blog1812019.repository;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import iducs.spring.blog1812019.domain.Blogger;

@Repository
public class BloggerRepositoryImpl implements BloggerRepository {

	private SqlSession sqlSession;
	public BloggerRepositoryImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	private static String namespace = "iducs.spring.blog1812019.mapper.BloggerMapper";	

	@Override
	public int create(Blogger blogger) {
		// TODO Auto-generated method stub
		int count = 0; 
		count = sqlSession.insert(namespace + ".create", blogger);		
		return count;

	}

	@Override
	public Blogger read(Blogger blogger) {
		return sqlSession.selectOne(namespace + ".read", blogger.getId());
		
	}

	@Override
	public Blogger findByBid(String bid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".findByBid", bid);
	}

	@Override
	public List<Blogger> readList() {		
        return sqlSession.selectList(namespace + ".readList");
	}

	@Override
	public int update(Blogger blogger) {
		int count = 0;
		count = sqlSession.insert(namespace + ".update", blogger);			
		return count;
	}

	@Override
	public int delete(Blogger blogger) {
		int count = 0;
		count = sqlSession.insert(namespace + ".delete", blogger.getId());	
		return count;
	}

}
