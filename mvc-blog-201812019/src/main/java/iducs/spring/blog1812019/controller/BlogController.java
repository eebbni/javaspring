package iducs.spring.blog1812019.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Timestamp;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import iducs.spring.blog1812019.domain.Blog;
import iducs.spring.blog1812019.service.BlogService;

@Controller
public class BlogController {
	private BlogService blogService;
	public BlogController(BlogService blogService)  { // 생성자를 활용한 주입
		this.blogService = blogService;
	}
	
	//@Resource(name="uploadPath")
    private String uploadPath;
    
    @GetMapping("/blogs/all")
    public String getBlogs(Model model) {    
    	List<Blog> blogList = blogService.getBlogs();
    	model.addAttribute("blogList", blogList);
        return "/blogs/get-blogs";
    }    
    @GetMapping("/blogs/{id}")
    public String getBlog(@PathVariable("id") Long id, Model model) {    	
        model.addAttribute("blog", blogService.getBlog(id));
        return "/blogs/get-blog";
    }
    
    @PostMapping("/blogs")
    @Transactional    
    public String postBlog(    		
    		MultipartHttpServletRequest request,
    		/*
    		@RequestParam final String title,     		
    		@RequestParam final String content,
    		@RequestParam final String blogger,
    		@RequestParam Timestamp regDateTime,
    		@RequestParam("filepath") MultipartFile file, 
    		*/
    		Model model) throws IllegalStateException, IOException {     	
    	Blog blog = new Blog();
    	blog.setTitle(request.getParameter("title"));    	
    	blog.setContent(request.getParameter("content"));    
    	blog.setBlogger(request.getParameter("blogger"));    	
    	blog.setRegDateTime(java.sql.Timestamp.valueOf(request.getParameter("regDateTime")));    
    	
    	uploadPath = this.getClass().getResource("/").getPath() + "..\\..\\resources\\uploads";
    	MultipartFile file = request.getFile("filepath");
    	if (!file.getOriginalFilename().isEmpty()) {    		
			file.transferTo(new File(uploadPath, file.getOriginalFilename()));
			blog.setFilepath(file.getOriginalFilename());
    		//model.addAttribute("msg", "File uploaded successfully.");
    	} else {
    		//model.addAttribute("msg", "Please select a valid mediaFile..");
    	}
    	blogService.postBlog(blog);
        return "redirect:/blogs/all";
    }
    
    @GetMapping("/blogs/new")
    public String newBlog(Model model) {
        return "/blogs/new-form";
    }
    
    //@PutMapping("/blogs/{id}")
    @PostMapping("/blogs/{id}")
    @Transactional
    public String updateBlog(
    		@PathVariable long id,
    		@RequestParam final String title,     		
    		@RequestParam final String content,
    		@RequestParam final String blogger,
    		@RequestParam Timestamp regDateTime,
    		@RequestParam("filepath") MultipartFile file, 
    		Model model) throws IllegalStateException, IOException {
    	Blog blog = new Blog();
    	blog.setId(id);
    	blog.setTitle(title);    	
    	blog.setContent(content);    
    	blog.setBlogger(blogger);
    	blog.setRegDateTime(regDateTime);    	
    	
    	uploadPath = this.getClass().getResource("/").getPath() + "..\\..\\resources\\uploads";
    	if (!file.getOriginalFilename().isEmpty()) {    		
            file.transferTo(new File(uploadPath, file.getOriginalFilename()));
			blog.setFilepath(file.getOriginalFilename());
    		//model.addAttribute("msg", "update successful.");
    	} else {
    		blog.setFilepath(file.getOriginalFilename());
    		//model.addAttribute("msg", "update fail");
    	}    	
    	int count = blogService.updateBlog(blog);
    	if(count > 0) {
    		return "redirect:/blogs/" + id;
    	}
    	else 
    		return "redirect:/blogs/error";
    }
    @GetMapping("/blogs/edit")
    public String editBlog(@RequestParam(name="id") long id, Model model) {
    	Blog blog = blogService.getBlog(id);
        model.addAttribute("blog", blog);
        return "/blogs/edit-form";
    }
    
    @DeleteMapping("/blogs/{id}")
    // @RequestMapping(value="/blogs/{id}/delete", method = {RequestMethod.POST})
    // @PostMapping("/blogs/{id}/delete")
    public String deleteBlog(@PathVariable long id, Model model) {
    	int count = blogService.deleteBlog(id);
    	if(count > 0)
    		return "redirect:/blogs/all";
    	else     		
    		return "redirect:/blogs/error";
    }
    
    // url에서 '-' 기호는 java에서는 대문자로 표현
 	@RequestMapping(value = "/test-location", method = RequestMethod.GET)
 	public String testLocation(Locale locale, Model model) {
 		return "/main/test-location";
 	}
 	/*
 	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public String download(HttpServletResponse response,HttpServletRequest request) throws IOException {
		String filename = request.getParameter("filename");    
		String filePath = request.getServletContext().getRealPath("/resources/image/"+filename);//파일 전체경로(파일명도 포함)
		    String filetype = request.getServletContext().getMimeType("/resources/image/"+filename); //파일 타입
		     int filesize = (int)new File(filePath).length();
	           String userAgent = request.getHeader("User-Agent");
	           if(userAgent.indexOf("MSIE") != -1){
	        	   filename = URLEncoder.encode("1.png","UTF-8");
	           }else{
	        	   filename = new String(filename.getBytes("UTF-8"),"ISO-8859-1");
	           }
	           response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\";");
	           response.setContentType(filetype);
	           response.setContentLength(filesize);
	           response.setHeader("Content-Transfer-Encoding", "binary");
	           FileInputStream fis = new FileInputStream(filePath);
	           ServletOutputStream os = response.getOutputStream();
	           FileCopyUtils.copy(fis, os);
	           os.flush();
	           os.close();
	           fis.close();
	           
		return "index";
	}
	*/
}
