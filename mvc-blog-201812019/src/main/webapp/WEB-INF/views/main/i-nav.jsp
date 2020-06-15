<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="../main/home">Blog 201812019</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="../blogs/all">Get Blogs</a>
          </li>
          
          <c:choose>
          <c:when test="${sessionScope.blogger == null }">
          <li class="nav-item">
            <a class="nav-link" href="../bloggers/login">Sign In</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../bloggers/new">Register</a>
          </li>
          </c:when>
          <c:otherwise>
          <li class="nav-item">
            <a class="nav-link" href="../bloggers/${sessionScope.blogger.id}">Info</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../bloggers/logout">Sing Out</a>
          </li>
          <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Blog 관리</a>
	        <div class="dropdown-menu" aria-labelledby="dropdown04">
	          <a class="dropdown-item" href="../blogs/new">Create Blog</a>
	        </div>
	      </li>
          </c:otherwise>
          </c:choose>          
        </ul>
      </div>
    </div>
  </nav>
