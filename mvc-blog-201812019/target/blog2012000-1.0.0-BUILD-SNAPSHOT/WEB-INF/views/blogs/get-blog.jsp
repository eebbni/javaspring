<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <%@ include file="../main/i-head.jsp" %>
  <title>Post : Clean Blog - Start Bootstrap Theme</title>

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
            <h2>Man must explore, and this is exploration at its greatest</h2>
            <h3 class="subheading"></h3>
            <span class="meta">Posted by
              <a href="#">Start Bootstrap</a>
              on August 24, 2019</span>
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
          <p> Written ${blog.regDateTime } 
          Photographs by <a href="#">${blog.blogger }</a>.</p>
          <div class="clearfix">
	         <a class="btn btn-primary float-right" href="./edit?id=${blog.id}">수정 &rarr;</a>
	         <form method="post" action="./${blog.id}">
	         	<input type="hidden" name="_method" value="DELETE"/>
	         	<button type="submit" class="class="btn btn-primary float-right"">삭제 &rarr;</button>
	         </form>
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
