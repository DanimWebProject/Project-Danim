<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link href="${pageContext.request.contextPath}/resources/css/review_write.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div class="container">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-8">

<h2>Review</h2>
	<form method="post" action="painsert.do"> <!-- 컨트롤러로 감 -->
		<div class="review_write_bg p-5">
			<div class="input-group">
				<label for="review_title" class="p-3">제목</label>
				<input type="text" name="review_title" class="form-control" placeholder="제목을 입력해주세요.">
			</div>

            <div class="input-group">
				<label for="writer" class="p-3">작성자 :</label>
				<input type="text" name="writer" class="form-control">
			
			</div>

            <div class="input-group">
                	
                	<label for="file">이미지 첨부:</label>
				    <input type="file" name="review_filename" class="form-control" value="파일선택">
				    
				    <label for="file">이미지 첨부:</label>
				    <input type="file" name="review_filename" class="form-control" value="파일선택">
            </div>
            
            <div class="input-group">    
                    <label for="do_id" class="form-control d-flex">지역선택 :
                        <select name="do_id">
                            <option value="시/도">시/도 선택 </option>
                            <option value="경기도">경기도 </option>
                            <option value="1">서울 </option>
                            <option value="강원도">강원도 </option>
                        </select>  
                        
                         <select name="si_id">
                            <option value="시/도">시/군/구 선택 </option>
                            <option value="11">노원구 </option>
                            <option value="시/도">서울 </option>
                            <option value="시/도">강원도 </option>
                        </select>  
                 	 </label>
                  </div>      
                       
                   
			
            <textarea class="form-control mt-3" rows="28" name="review_content"></textarea>
            
            <div class="d-flex justify-content-between mt-3">
            <button type="button" class="btn btn-primary">임시저장</button>
                <div class="button-group">
                    <button type="submit" class="btn btn-primary">작성완료</button>
                    <button type="button" class="btn btn-danger">다시작성</button>
                </div>
            </div>
        </div>
        <button type="button" class="btn list_button mt-2" onclick="location.href='#'">목록</button> <!-- 목록으로 이동 -->
	</form>																		<!-- party_list -->
</div>
<div class="col-md-2"></div>

</div>
</div>
</body>
</html>