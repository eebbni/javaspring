package iducs.spring.mvcblog.repository;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;

//import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import iducs.spring.blog1812019.controller.BlogController;
import iducs.spring.blog1812019.domain.Blog;
import iducs.spring.blog1812019.repository.BlogRepository;

@SpringJUnitWebConfig(locations ="file:src/main/webapp/WEB-INF/spring/**/*.xml")
//@SpringJUnitWebConfig(locations ="classpath:spring/appServlet/servlet-context.xml")
//@SpringJUnitWebConfig(locations ="classpath:web.xml")
// @TestMethodOrder(MethodOrderer.Alphanumeric.class)
@TestMethodOrder(OrderAnnotation.class)
class BlogRepositoryTest {
	
	@Autowired
	private BlogRepository blogRepository;
	@Autowired
	private BlogController blogController;
	
	MockMvc mockMvc;
	
	/*
	@BeforeEach 
	void beforeTest() {		
		//mockMvc = MockMvcBuilders.standaloneSetup(blogController).build();				
		// mockMvc = MockMvcBuilders.standaloneSetup(blogController).alwaysExpect(MockMvcResultMatchers.status().isOk()).build();
	}
	*/	
/*	
	@Test
	@Order(1)
	void testCreate() {
		Blog blog = new Blog();
		blog.setTitle("제목-7");
		blog.setContent("내용-7");
		blog.setFilepath("이미지-7");
		blog.setBlogger("블로거-7");
		blog.setRegDateTime(Timestamp.valueOf(LocalDateTime.now()));
		blogRepository.create(blog);
	}
*/
	@Test
	@Order(2)
	void testUpdate() {
		Blog blog = new Blog();
		blog.setId(26);
		blog.setTitle("uuu-6");
		blog.setContent("u내용-6");
		blog.setFilepath("u이미지-6");
		blog.setBlogger("u블로거-6");
		blog.setRegDateTime(Timestamp.valueOf(LocalDateTime.now()));
		blogRepository.update(blog);
	}
/*
	@Test
	@Order(5)
	void testDelete() {
		Blog blog = new Blog();
		blog.setId(27);
		blogRepository.delete(blog);
	}
*/	

	@Test
	@Order(9)
	void testReadList() {
		mockMvc = MockMvcBuilders.standaloneSetup(blogController).build();	
		try {
			mockMvc.perform(MockMvcRequestBuilders.get("/blogs/all").accept(MediaType.APPLICATION_JSON))
		    	.andDo(print())
		    	//.andExpect(view().name("/blogs/get-blogs"))
		    	.andExpect(model().attributeExists("blogList"))
		    	.andExpect(status().isOk());
		} catch (Exception e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
}