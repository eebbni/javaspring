<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <%@ include file="../main/i-head.jsp" %>
  <title>Read Blog : Clean Blog - Start Bootstrap Theme</title>

</head>

<body>

  <!-- Navigation -->
  <%@ include file="../main/i-nav.jsp" %>
  
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('../img/post-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-heading">
            <h2>Passion is readiness, steadiness</h2>
            <h3 class="subheading">
            <span class="meta">Posted by <a href="#">PASSION</a> on August 24, 2019</span>
            </h3>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Post Content -->
  <article>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <h2 class="section-heading">${blog.title }</h2>
		  <p>${blog.content } : Space, the final frontier. These are the voyages of the Starship Enterprise.</p>	
          <a href="#">
            <img class="img-fluid" src="../resources/uploads/${blog.filepath}" alt="">
          </a>
          <span class="caption text-muted">To go places and do things that have never been done</span>
          <p> Posted by <a href="#">${blog.blogger } </a> on ${blog.regDateTime } </p>

          
          <div class="clearfix">
          	
          <c:if test="${sessionScope.blogger.bid == blog.blogger || sessionScope.blogger.bid == 'admin'}">
	         <a class="btn btn-primary float-left" style="margin:5px;"href="./edit?id=${blog.id}">수정</a>
	         <form method="post" action="./${blog.id}">
	         	<input type="hidden" name="_method" value="DELETE"/>
	         	<button type="submit" class="btn btn-primary float-left" style="margin:5px;">삭제</button>
	         </form>
	      </c:if>
	      	<a class="btn btn-primary float-right" style="margin:5px;" href="../blogs/all">목록보기</a>
	      </div>
        </div>
      </div>
      
    </div>
  </article>
        
  <hr>

  <!-- Footer -->
  <%@ include file="../main/i-footer.jsp" %>
  
</body>

</html>
