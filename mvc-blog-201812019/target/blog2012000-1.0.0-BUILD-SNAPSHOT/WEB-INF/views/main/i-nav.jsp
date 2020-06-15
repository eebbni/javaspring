<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">Blog 2012000</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="../blogs/new">write blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../blogs/all">show blogs</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="post.jsp">Sample Post</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.jsp">Contact</a>
          </li>
          
          <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Blog</a>
	        <div class="dropdown-menu" aria-labelledby="dropdown04">
	          <a class="dropdown-item" href="blog-create-form.do">Create Blog</a>
	          <a class="dropdown-item" href="blog-list.do">Read Blog List</a>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
	      </li>
          
        </ul>
      </div>
    </div>
  </nav>
