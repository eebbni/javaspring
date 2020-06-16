<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <%@ include file="../main/i-head.jsp" %>
  <title>Blog List : Clean Blog - Start Bootstrap Theme</title>

</head>

<body>

  <!-- Navigation -->
  <%@ include file="../main/i-nav.jsp" %>
  
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('../img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>Blog List</h1>
            <h3 class="subheading">
            <span class="subheading">블로그 목록</span>
            </h3>            
          </div>
        </div>
      </div>
    </div>
  </header>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  <!-- Main Content -->
  <!-- <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
      	<c:forEach items="${requestScope.blogList }" var="blog">      	
        <div class="post-preview">
          <a href="../blogs/${blog.id}">
            <h2 class="post-title">
              ${blog.title }
            </h2>
            <h3 class="post-subtitle">
              ${blog.content }
            </h3>
          </a>
          <p class="post-meta">Posted by <a href="#">${blog.blogger } </a> on ${blog.regDateTime }</p>
        </div>
        <hr>
        </c:forEach>
        <!-- Pager -->
        <!-- <div class="clearfix">
          <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
        </div>
      </div>
    </div>
  </div>-->
<div class="card mb-4">
                            <div class="card-header">
                            
                            <!-- <i class="fas fa-table mr-1"></i> -->멤버 리스트</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="dataTable_length"><label>Show <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-12 col-md-6"><div id="dataTable_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 122px;">ID</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 193px;">id</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 85px;">password</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 36px;">name</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 83px;">email</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 83px;">삭제</th></tr>
                                        </thead>
                                        <tfoot>
                                            <tr><th rowspan="1" colspan="1">ID</th><th rowspan="1" colspan="1">id</th><th rowspan="1" colspan="1">password</th><th rowspan="1" colspan="1">name</th><th rowspan="1" colspan="1">email</th><th rowspan="1" colspan="1">삭제</th></tr>
                                        </tfoot>
                                        <tbody>
                                        <c:forEach items="${requestScope.bloggerList}" var="bloggers">
                                        <tr role="row" class="odd">
                                                <td>${bloggers.id}</td>
                                                <td>${bloggers.bid}</td>
                                                <td>${bloggers.bpw}</td>
                                                <td>${bloggers.bname}</td>
                                                <td>${bloggers.bemail}</td>
                                                <c:choose>
                                                <c:when test="${bloggers.bid == 'admin1812019'}">
                                                <td> </td> 
                                                </c:when>
                                                <c:otherwise>
                                                <td><form class="form-signin" method="post" action="../bloggers/admin/${bloggers.id}" onsubmit="return confirm('회원 탈퇴하시겠습니까?')">
												<input type="hidden" name="_method" value="delete"/>
												<button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Delete</button>
												</form></td> 
                                                </c:otherwise>
                                                </c:choose>      
                                            </tr>
                                         </c:forEach>
								
                                            </tbody>
                                    </table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
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
