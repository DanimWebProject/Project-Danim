<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/review_list.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>리뷰 게시판</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <legend class="header mb-5">리뷰 게시판</legend>
            </div>
        </div>
    </div>
    
    <!-- 베스트 리뷰 top4 -->
    <div class="container">
        <div class="row bg-gray p-3">
            <legend class="title p-2">베스트 리뷰</legend>
         
         <c:forEach items="${best_review}" var="best_review">
            <div class="col-md-3">
                <div class="card">
                    <img src="https://cdn.pixabay.com/photo/2023/04/28/07/07/cat-7956026_960_720.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                            <h5 class="card-title">${best_review.review_title}</h5>
                        <div class="d-flex justify-content-between">
                            <p>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M12.849 24l-3.96-7.853-4.889 4.142v-20.289l16 12.875-6.192 1.038 3.901 7.696-4.86 2.391zm-3.299-10.979l4.194 8.3 1.264-.617-4.213-8.313 4.632-.749-9.427-7.559v11.984l3.55-3.046z"/>
                                </svg>
                                <span>${best_review.view_count}</span>
                            </p>
                            <p>
                                <svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd">
                                    <path d="M12 1c-6.338 0-12 4.226-12 10.007 0 2.05.739 4.063 2.047 5.625l-1.993 6.368 6.946-3c1.705.439 3.334.641 4.864.641 7.174 0 12.136-4.439 12.136-9.634 0-5.812-5.701-10.007-12-10.007m0 1c6.065 0 11 4.041 11 9.007 0 4.922-4.787 8.634-11.136 8.634-1.881 0-3.401-.299-4.946-.695l-5.258 2.271 1.505-4.808c-1.308-1.564-2.165-3.128-2.165-5.402 0-4.966 4.935-9.007 11-9.007"/>
                                </svg>
                                <span>${best_review.comment_count}</span>
                            </p>
                            <p>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm3.698 15.354c-.405-.031-.367-.406.016-.477.634-.117.913-.457.913-.771 0-.265-.198-.511-.549-.591-.418-.095-.332-.379.016-.406.566-.045.844-.382.844-.705 0-.282-.212-.554-.63-.61-.429-.057-.289-.367.016-.461.261-.08.677-.25.677-.755 0-.336-.25-.781-1.136-.745-.614.025-1.833-.099-2.489-.442.452-1.829.343-4.391-.845-4.391-.797 0-.948.903-1.188 1.734-.859 2.985-2.577 3.532-4.343 3.802v4.964c3.344 0 4.25 1.5 6.752 1.5 1.6 0 2.426-.867 2.426-1.333 0-.167-.136-.286-.48-.313z"/>
                                </svg>
                                <span>${best_review.good_count}</span>
                            </p>
                        </div>
                        <div class="d-flex justify-content-end">
                            <a href="one.do?review_num=${vo.review_num}" class="btn btn-primary">더 보기</a>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
    

    <!-- 전체 게시물 -->
    <div class="d-none">
    <c:set var="card" value="0"></c:set>
    <c:set var="row" value="0"></c:set>
   <c:if test="${card % 3 == 0}" >
       ${row += 1}
    </c:if>
    </div>
    
    <div class="container">
    <!-- 지역 및 키워드 검색 폼 -->
    <form class="my-4">
        <div class="row">
            <div class="col-md-4 d-flex justify-content-around md">
                <label for="area" class="py-1 px-4 border rounded">
                    지역선택
                </label>
                
                  <select id="do_id" name="do_id" class="custom-select form-select-sm" aria-label=".form-select-sm example">
                     <option value="">시 / 도</option>
               <c:forEach items="${select_do}" var="select_do">
                  <option value="${select_do.do_id}">${select_do.do_name}</option>
               </c:forEach>
            </select>
            
            <select id="si_id" name="si_id" class="custom-select form-select-sm" aria-label=".form-select-sm example">
               <option value="">시 / 군 / 구</option>
               <c:forEach items="" var="select_do">
                  <option value=""></option>
               </c:forEach>
            </select>
            </div>
            <div class="col-md-8">
                <div class="input-group">
                    <select name="" id="" class="custom-select form-select-sm border border-primary rounded-left border-3" colspan="2">
                        <option value="제목/내용" selected>제목/내용</option>
                        <option value="작성자">작성자</option>
                    </select>
                    <input type="text" class="input-group-select form-control border-top border-bottom border-primary border-3" name="keyword" id="keyword" value="${keyword}">
                    <input type="submit" class="input-group-button btn btn-primary border border-primary rounded-right border-3" value="검색">
                </div>
            </div>
        </div>
    </form>
    <c:forEach var="i" begin="0" end="${row}">
        <div class="row d-flex justify-content-start">
         <c:forEach items="${review_list}" var="review_list">
            <div class="col-md-4 my-3">
                <div class="card">
                    <img src="https://cdn.pixabay.com/photo/2023/04/28/07/07/cat-7956026_960_720.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                            <h5 class="card-title">${review_list.review_title }</h5>
                            <small class="d-flex justify-content-end my-3"><fmt:formatDate value="${review_list.insert_date}" dateStyle="full"/></small>
                        <div class="d-flex justify-content-between">
                            <p>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M12.849 24l-3.96-7.853-4.889 4.142v-20.289l16 12.875-6.192 1.038 3.901 7.696-4.86 2.391zm-3.299-10.979l4.194 8.3 1.264-.617-4.213-8.313 4.632-.749-9.427-7.559v11.984l3.55-3.046z"/>
                                </svg>
                                <span>${review_list.view_count }</span>
                            </p>
                            <p>
                                <svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd">
                                    <path d="M12 1c-6.338 0-12 4.226-12 10.007 0 2.05.739 4.063 2.047 5.625l-1.993 6.368 6.946-3c1.705.439 3.334.641 4.864.641 7.174 0 12.136-4.439 12.136-9.634 0-5.812-5.701-10.007-12-10.007m0 1c6.065 0 11 4.041 11 9.007 0 4.922-4.787 8.634-11.136 8.634-1.881 0-3.401-.299-4.946-.695l-5.258 2.271 1.505-4.808c-1.308-1.564-2.165-3.128-2.165-5.402 0-4.966 4.935-9.007 11-9.007"/>
                                </svg>
                                <span>${review_list.comment_count }</span>
                            </p>
                            <p>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm3.698 15.354c-.405-.031-.367-.406.016-.477.634-.117.913-.457.913-.771 0-.265-.198-.511-.549-.591-.418-.095-.332-.379.016-.406.566-.045.844-.382.844-.705 0-.282-.212-.554-.63-.61-.429-.057-.289-.367.016-.461.261-.08.677-.25.677-.755 0-.336-.25-.781-1.136-.745-.614.025-1.833-.099-2.489-.442.452-1.829.343-4.391-.845-4.391-.797 0-.948.903-1.188 1.734-.859 2.985-2.577 3.532-4.343 3.802v4.964c3.344 0 4.25 1.5 6.752 1.5 1.6 0 2.426-.867 2.426-1.333 0-.167-.136-.286-.48-.313z"/>
                                </svg>
                                <span>${review_list.good_count }</span>
                            </p>
                        </div>
                        <div class="d-flex justify-content-end">
                            <a href="#" class="btn btn-primary">더 보기</a>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
       </div>
       <div class="d-none">
       ${card += 1}
       </div>
       </c:forEach>
           <!-- 글작성 불러오기 -->
           <div class="row my-5">
               <div class="col-md-1"></div>
               <div class="col-md-10">
                   <form action="insert.do" class="d-flex justify-content-end">
                       <input type="submit" class="btn btn-secondary" value="글작성">
                   </form>
               </div>
               <div class="col-md-1"></div>
           </div>
           
             <!-- 페이징 -->
       <div class="d-flex justify-content-center">
            <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
               <ul class="pagination">
                  <!-- Start -->
                    <!--  <li class="paginate_button page-item start <c:if test='${list.startPage < 6 }'>disabled</c:if>" id="dataTable_start"><a href="/review/review_list?currentPage=${list.startPage - 5 }" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">&laquo;</a></li>
                  <!-- Previous -->
                     <li class="paginate_button page-item prev <c:if test='${param.currentPage == list.startPage }'>disabled</c:if>" id="dataTable_previous"><a href="/review/review_list?currentPage=${param.currentPage - 1 }" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">&lsaquo;</a></li>
                  <!-- Page번호 -->
                     <c:forEach var="pNo" begin="${list.startPage }" end="${list.endPage }" step="1">
                     <li class="paginate_button page-item  <c:if test='${param.currentPage eq pNo }'>active</c:if>"><a href="/review/review_list?currentPage=${pNo }" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">${pNo }</a></li>
                     </c:forEach>
                  <!-- Next -->
                     <li class="paginate_button page-item next <c:if test='${param.currentPage == list.endPage }'>disabled</c:if>" id="dataTable_next"><a href="/review/review_list?currentPage=${param.currentPage + 1 }" aria-controls="dataTable" data-dt-idx="8" tabindex="0" class="page-link">&rsaquo;</a></li>
                  <!-- End -->
                     <li class="paginate_button page-item end <c:if test='${list.endPage>=list.totalPages }'>disabled</c:if>" id="dataTable_end"><a href="/review/review_list?currentPage=${list.startPage+5 }" aria-controls="dataTable" data-dt-idx="9" tabindex="0" class="page-link">&raquo;</a></li>
               </ul>
            </div>
         </div> 
    </div>
    

</body>
</html>