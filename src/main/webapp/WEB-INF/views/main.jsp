<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

</head>
<body>
	<%@ include file="/resources/include/header.jsp"%>
	<a href="totalSearch">통합검색</a>
	<h1>여행이 돌아왔어요</h1>
	<%@ include file="/resources/include/MainPartyThumbnail.jsp"%>

	<h1>지역별 게시판 이동</h1>
	 <%@ include file="/resources/include/MainRegionalBulletinBoard.jsp"%>


	<h1>먹거리 게시판 이동</h1>
	<%@ include file="/resources/include/MainFoodBulletinBoard.jsp"%>

	<h1>베스트 리뷰</h1>
	<%@ include file="/resources/include/MainReviewBoard.jsp"%>
	
	<%@ include file="/resources/include/footer.jsp"%>
	


</body>
</html>