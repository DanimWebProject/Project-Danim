<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
</head>
<body>
<%@ include file="/resources/include/header.jsp"%>

<div class="container-fluid p-0 d-flex justify-content-center">
	<div id="demo" class="carousel carousel-dark slide" data-bs-ride="carousel">
	
		<%-- preview next --%>
		<div class="carousel-indicators">
   			<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active">
   			</button>
   			<button type="button" data-bs-target="#demo" data-bs-slide-to="1">
   			</button>
   			<button type="button" data-bs-target="#demo" data-bs-slide-to="2">
   			</button>
   			<button type="button" data-bs-target="#demo" data-bs-slide-to="3">
   			</button>
   			<button type="button" data-bs-target="#demo" data-bs-slide-to="4">
   			</button>
   			<button type="button" data-bs-target="#demo" data-bs-slide-to="5">
   			</button>
   		</div>	
   		   
   		<%-- slide image --%>
   		<div class="carousel-inner mw-100">
   			<div class="carousel-item active">
   				<img src="/resources/img/1.jpg" alt="" class="d-block mw-100">
   			</div>
   				
   			<div class="carousel-item">
   				<img src="/resources/img/2.jpg" alt="" class="d-block mw-100">
   			</div>
   				
   			<div class="carousel-item">
   				<img src="/resources/img/3.jpg" alt="" class="d-block mw-100">
   			</div>
   			
   			<div class="carousel-item">
   				<img src="/resources/img/4.jpg" alt="" class="d-block mw-100">
   			</div>
   			
   			<div class="carousel-item">
   				<img src="/resources/img/5.jpg" alt="" class="d-block mw-100">
   			</div>
   			
   			<div class="carousel-item">
   				<img src="/resources/img/6.jpg" alt="" class="d-block mw-100">
   			</div>
   		</div>
   			
   		<%-- left and right controls --%>
   		<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
   			<span class="carousel-control-prev-icon"></span>
   		</button>
   			
   		<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
   			<span class="carousel-control-next-icon"></span>
   		</button>
   			
	</div>
</div>

<%@ include file="/resources/include/footer.jsp"%>
</body>
</html>