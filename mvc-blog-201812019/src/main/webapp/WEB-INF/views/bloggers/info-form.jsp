<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>

<head>

  <%@ include file="../main/i-head.jsp" %>
  <title>Blogger Info : Clean Blog - Start Bootstrap Theme</title>
  
</head>

<body>

  <!-- Navigation   -->
  <%@ include file="../main/i-nav.jsp" %>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('../img/contact-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>블로거 정보 </h1>
            <span class="subheading">블로거 정보를 확인하십시요.</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
		  <div class="page-heading" style="text-align: center;">
            <h1>블로거 정보 </h1>
          </div>
          <div class="control-group">
          	<label>블로거 아이디</label>
            <div class="form-group floating-label-form-group controls ">
              <label>Blogger ID</label>
              <input type="text" class="form-control" name="title" placeholder="Title" id="bid" value="${blogger.bid}" readonly>
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <label>블로거 이름</label>
            <div class="form-group floating-label-form-group controls">
              <label>Blogger Name</label>
              <input type="text" class="form-control" name="name" placeholder="Name" id="bname" value="${blogger.bname}" readonly>
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
          	<label>블로거 이메일</label>
            <div class="form-group floating-label-form-group controls" >
              <label>Blogger Email</label>
              <input type="text" class="form-control" name="title" placeholder="Email" id="bemail" value="${blogger.bemail }" readonly>
              <p class="help-block text-danger"></p>
            </div>
          </div>
		  <a class="btn btn-primary float-left" style="margin:5px;"href="./edit?id=${blogger.id}">정보 수정</a>
		  <a class="btn btn-primary float-right" style="margin:5px;"href="../blogs/all">블로그 목록</a>
      </div>
    </div>
  </div>

  <hr>

  <!-- Footer -->
  <%@ include file="../main/i-footer.jsp" %>
	
    <!-- Bootstrap core JavaScript -->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="../js/jqBootstrapValidation.js"></script>
  <script src="../js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="../js/clean-blog.min.js"></script>

	<script src="https://code.jquery.com/jquery.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/momentjs/2.14.1/moment.min.js"></script>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />  

</body>

</html>
