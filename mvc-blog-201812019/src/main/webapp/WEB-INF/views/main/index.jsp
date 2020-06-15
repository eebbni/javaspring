<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>

<head>

  <%@ include file="../main/i-head.jsp" %>
  <title>Index : Clean Blog - Start Bootstrap Theme</title>

</head>

<body>

  <!-- Navigation -->
  <jsp:include page="../main/i-nav.jsp" />
  
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('../img/home-bg.png')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>Welcome! Blog201812019</h1>
            <span class="subheading">A Blog Theme by Start Bootstrap</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <div class="post-preview">
          <a href="post.html">
            <h2 class="post-title">
            	회원제 블로그 - 201812019 손채연
            </h2>
            <h3 class="post-subtitle">
              	구현 기능
            </h3>
            <p> 블로그 관리, 회원 관리, 회원만 블로그 등록, 본인작성한 블로그만 수정 및 삭제,
            관리자는 모두 삭제,수정가능 </p>
            <h3 class="post-subtitle">
              	추가 예정 기능        
            </h3>    
            <p> 블로그 정렬, 블로그 검색, 관리자 타인 작성한 블로그 삭제  </p>             
          </a>
          <p class="post-meta">작성자 <a href="#">유응구</a> on 6월 12일 2020년</p>
        </div>
        <hr>
        <!-- Pager -->
        <div class="clearfix">
          <a class="btn btn-primary float-right" href="../blogs/all">목록보기</a>
        </div>
      </div>
    </div>
  </div>

  <hr>

  <!-- Footer -->
  <%@ include file="../main/i-footer.jsp" %>
  
  <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="../js/clean-blog.min.js"></script>

</body>

</html>
