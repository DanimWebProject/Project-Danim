<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>totalSearch</title>
</head>
<body>
<%@ include file="/resources/include/header.jsp"%>

<div class="container bg-primary mt-3 mb-3">
	<form action="totalSearch" method="POST">
	   	<div class="row">
	      <div class="col-md-12 mt-3">  
			<label for="state" class="bg-white">지역선택</label>	
			<select id="state" name="state">
			    <option value="">선택하세요</option>
			    <option value="1">서울특별시</option>
			    <option value="2">부산광역시</option>
			    <option value="3">대구광역시</option>
			    <option value="4">인천광역시</option>
			    <option value="5">광주광역시</option>
			    <option value="6">대전광역시</option>
			    <option value="7">울산광역시</option>
			    <option value="8">세종특별자치시</option>    
			    <option value="9">경기도</option>
			    <option value="10">강원도</option>
			    <option value="11">충청북도</option>
			    <option value="12">충청남도</option>
			    <option value="13">전라북도</option>
			    <option value="14">전라남도</option>
			    <option value="15">경상북도</option>
			    <option value="16">경상남도</option>
			    <option value="17">제주특별자치도</option>
			</select>
			  
			<select id="city" name="city" disabled>
				<option value="">먼저 시/도를 선택하세요.</option>
			</select>
			<script>
			var cities = {
					1:['강남구','강동구','강북구','강서구','관악구','광진구','구로구','금천구',	'노원구',	'도봉구','동대문구','동작구','마포구','서대문구','서초구','성동구','성북구','송파구','양천구','영등포구','용산구','은평구','종로구','중구','중랑구'],
					2:['강서구','금정구','기장군','남구','동구','동래구','부산진구','북구','사상구','사하구','서구','수영구','연제구','영도구','중구','해운대구'],
					3:['남구','달서구','달성군','동구','북구','서구','수성구','중구'],
					4:['강화군','계양구','남동구','동구','미추홀구','부평구','서구','연수구','옹진군','중구'],
					5:['광산구','남구','동구','북구','중구'],
					6:['대덕구','동구','서구','유성구','중구'],
					7:['남구','동구','북구','울주군','중구'],
					9:['가평군','고양시','과천시','광명시','광주시','구리시','군포시','김포시','남양주시','동두천시','부천시','성남시','수원시','시흥시','안산시','안성시','안양시','양주시','양평군','여주시','연천군','오산시','용인시','의왕시','의정부시','이천시','파주시','평택시','포천시','하남시','화성시'],
					10:['강릉시','고성군','동해시','삼척시','속초시','양구군','양양군','영월군','원주시','인제군','정선군','철원군','춘천시','태백시','평창군','홍천군','화천군','횡선군'],
					11:['괴산군','단양군','보은군','영동군','옥천군','음성군','제천시','증평군','진천군','청주시','충주시'],
					12:['계룡시','공주시','금산군','논산시','당진시','보령시','부여군','서산시','서천군','아산시','예산군','천안시','청양군','태안군','홍성군'],
					13:['고창군','군산시','김제시','남원시','무주군','부안군','순창군','완주군','익산시','임실군','장수군','전주시','정읍시','진안군'],
					14:['강진군','고흥군','곡성군','광양시','구례군','나주시','담양군','목포시','무안군','보성군','순천시','신안군','여수시','영광군','영암군','완도군','장성군','장흥군','진도군','함평군','해남군','화순군'],
					15:['경산시','경주시','고령군','구미시','군위군','김천시','문경시','봉화군','상주시','성주군','안동시','영덕군','양양군','영주시','영천시','예천군','울릉군','울진군','의성군','청도군','청송군','칠곡군','포항시'],
					16:['거제시','거창군','고성군','김해시','남해군','밀양시','사천시','산청군','양산시','의령군','진주시','창녕군','창원시','통영시','하동군','함안군','함양군','합천군'],
					17:['서귀포시','제주시']
				};
			
				var state = document.getElementById('state');
				var city = document.getElementById('city');
			
				state.addEventListener('change', function() {
					var selectedDo = this.value;
				    if (selectedDo === '') {
				    	city.disabled = true;
				    } else {
				    	city.disabled = false;
				        city.innerHTML = '<option value="">선택하세요</option>';
				        for (var i = 0; i < cities[selectedDo].length; i++) {
				          var option = document.createElement('option');
				          option.value = cities[selectedDo][i];
				          option.text = cities[selectedDo][i];
				          city.appendChild(option);
				        }
				    }
				});
			</script>
	      </div>               
	   </div>
	   
	   <div class="row">
			<div class="col-12 d-flex mt-3">
				<div class="d-flex bg-primary"> 
					<select id="category">
					  	<option value="title">제목</option>
					  	<option value="writer">작성자</option>
					  	<option value="content">내용</option>
			  		</select>
			  		<div class="input-group">	
			      		<input class="form-control" type="text" name="keyword" value="${keyword}" placeholder="검색어를 입력해주세요.">
						<button class="btn btn-primary" type="submit">검색</button>
					</div>  
		      	</div> 
			</div>
		</div>
		
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="10">
	</form>
</div>

<div class="container">
	<div class="row">
		<div class="col-12">
		<h3 class="mt-5 mb-5">검색어 "${keyword}"에 관한 검색 결과</h3>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-12">
			<h5 class="mt-5 mb-5">리뷰게시판 검색결과</h5>
			<table class="table table-hover">
		      	<thead>
					<tr>
						<th class="text-center">게시글 제목</th>
						<th class="text-center">작성자</th>
						<th class="text-center">등록일</th>
						<th class="text-center">조회수</th>
					</tr>
		      	</thead>
		
		      	<tbody>
		      		<c:forEach var="row" items="${reviewData}">
		      			<tr>
		      				<td class="text-center">
		      					<a href="/detail?review_num=${row.review_num}">${row.review_title}</a>
		      				</td>
		      				<td class="text-center">${row.writer}</td>
		      				<td class="text-center">${row.insert_date}</td>
		      				<td class="text-center">${row.view_count}</td>
		      			</tr>
		      		</c:forEach>
		      	</tbody>
      		</table>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-12">
			<h5 class="mt-5 mb-5">축제게시판 검색결과</h5>
			<table class="table table-hover">
		      	<thead>
					<tr>
						<th class="text-center">게시글 제목</th>
						<th class="text-center">작성자</th>
						<th class="text-center">등록일</th>
						<th class="text-center">조회수</th>
					</tr>
		      	</thead>
		
		      	<tbody>
		      		<c:forEach var="row" items="${partyData}">
		      			<tr>
		      				<td class="text-center">
		      					<a href="/detail?party_num=${row.party_num}">${row.party_title}</a>
		      				</td>
		      				<td class="text-center">${row.writer}</td>
		      				<td class="text-center">${row.insert_date}</td>
		      				<td class="text-center">${row.view_count}</td>
		      			</tr>
		      		</c:forEach>
		      	</tbody>
      		</table>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-12">
			<h5 class="mt-5 mb-5">먹거리게시판 검색결과</h5>
			<table class="table table-hover">
		      	<thead>
					<tr>
						<th class="text-center">게시글 제목</th>
						<th class="text-center">작성자</th>
						<th class="text-center">등록일</th>
						<th class="text-center">조회수</th>
					</tr>
		      	</thead>
		
		      	<tbody>
		      		<c:forEach var="row" items="${foodData}">
		      			<tr>
		      				<td class="text-center">
		      					<a href="/detail?food_num=${row.food_num}">${row.food_title}</a>
		      				</td>
		      				<td class="text-center">${row.writer}</td>
		      				<td class="text-center">${row.insert_date}</td>
		      				<td class="text-center">${row.view_count}</td>
		      			</tr>
		      		</c:forEach>
		      	</tbody>
      		</table>
		</div>
	</div>
</div>

<%@ include file="/resources/include/footer.jsp"%>
</body>
</html>