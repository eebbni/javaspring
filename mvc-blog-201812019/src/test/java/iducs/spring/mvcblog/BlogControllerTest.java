package iducs.spring.mvcblog;


import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import iducs.spring.blog1812019.controller.BlogController;



@SpringJUnitWebConfig(locations ="file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml")
//@SpringJUnitWebConfig(locations ="classpath:spring/appServlet/servlet-context.xml")
//@SpringJUnitWebConfig(locations ="classpath:web.xml")
class BlogControllerTest {
	@Autowired
	private BlogController blogController;
	
	MockMvc mockMvc;
	
	@BeforeEach 
	void beforeTest() {
		
		mockMvc = MockMvcBuilders.standaloneSetup(blogController).build();				
		// mockMvc = MockMvcBuilders.standaloneSetup(blogController).alwaysExpect(MockMvcResultMatchers.status().isOk()).build();
	}  
	@Test
	void testList() {
		
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