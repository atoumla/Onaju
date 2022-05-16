<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.box1 {
	width: 800px;
	height: 50px;
	border: 2px solid #cbdea6;
	border-radius: 15px;
	margin: auto;
	font-size: 20px;
	font-weight: bolder;
	text-align: center;
}

.box1_1 {
	margin: 15px 0px 0px 80px;
	position: relative;
	color: #403e3f;
	width: 800px;
	height: 60px;
	border: 0px solid #cbdea6;
	border-radius: 15px;
	font-size: 25px;
	font-weight: bolder;
	text-align: left;
}

.bigbox1 {
    margin: 15px 0px 0px 80px;
	position: relative;
	width: 800px;
	height: 300px;
	border: 0px;
}

.box2 {
	right: 450px;
	display: inline-block;
	position: absolute;
	color: #403e3f;
	width: 350px;
	height: 200px;
	border: 2px solid #cbdea6;
	border-radius: 15px;
	font-size: 20px;
	font-weight: bolder;
	text-align: left;
}

.box3 {
	left: 450px;
	display: inline-block;
	position: absolute;
	color: #403e3f;
	width: 350px;
	height: 200px;
	border: 2px solid #cbdea6;
	border-radius: 15px;
	font-size: 20px;
	font-weight: bolder;
	text-align: left;
}

.box4 {
	right: 450px;
	display: inline-block;
	position: absolute;
	color: #403e3f;
	width: 350px;
	height: 200px;
	border: 2px solid #cbdea6;
	border-radius: 15px;;
	font-size: 20px;
	font-weight: bolder;
	text-align: left;
}

.box5 {
	left: 450px;
	display: inline-block;
	position: absolute;
	color: #403e3f;
	width: 350px;
	height: 200px;
	border: 2px solid #cbdea6;
	border-radius: 15px;
	font-size: 20px;
	font-weight: bolder;
	text-align: left;
}

.box6 {
	right: 450px;
	display: inline-block;
	position: absolute;
	color: #403e3f;
	width: 350px;
	height: 200px;
	border: 2px solid #cbdea6;
	border-radius: 15px;
	font-size: 20px;
	font-weight: bolder;
	text-align: left;
}

#li {
	color: #403e3f;
	font-size: 20px;
	list-style: none;
}

#btbt {
	background-color: #7f9b75;
	position: absolute;
	height: 35px;
	font-size: 14px;
	width: 100px;
	border: none;
	border-radius: 3px;
	/* left: 680px; */
	right: 10px;
	bottom: 10px;
	color: white;
	cursor: pointer;
}
/*a링크 효과*/
#btbt:hover {
	color: red;
}

#btbt:visited {
	color: purple;
}

.sec1 {
	width: 930px;
	margin: 30px 0px 0px 0px;
}
</style>
</head>
<body>
<section class="sec1" style="display: inline-block; float: left;">
		<div class="box1">
		  오나주 호스트 페이지
		</div>
		
		<div class="box1_1">***호스트님 환영합니다.</div>
			<div class="bigbox1">
				<div class="box2">
				  주문관리
				  <ul id="li">
				  	<li>&rtrif;예약정보 목록
				  	<li>&rtrif;예약정보 검색
				  	<li>&rtrif;취소 및 환불
				  </ul>
				  <a href="${contextPath}/webapp/order_1.jsp"><button id="btbt">이동하기</button></a>
				</div>
			
				<div class="box3">
				 정산페이지
				 <ul id="li">
				  	<li>&rtrif;매출 관리
				  	<li>&rtrif;정산 페이지
				  </ul>
				  <a href="${contextPath}/webapp/order_1.jsp"><button id="btbt">이동하기</button></a>
				</div>
			</div>
			
			<div class="bigbox1">	
				<div class="box4">
				  고객관리
				  <ul id="li">
				  	<li>&rtrif;리뷰관리
				  </ul>
				  <a href="${contextPath}/webapp/order_1.jsp"><button id="btbt">이동하기</button></a>
				</div>
				
				<div class="box5">
				  상품관리
				  <ul id="li">
				  	<li>&rtrif;상품 목록
				  	<li>&rtrif;상품 등록
				  	<li>&rtrif;상품 수정
				  	<li>&rtrif;상품 삭제
				  	<li>&rtrif;숙박 ON/OFF
				  </ul>
				  <a href="${contextPath}/webapp/order_1.jsp"><button id="btbt">이동하기</button></a>
				</div>
			</div>
			
			<div class="bigbox1">	
				<div class="box6">
				  고객센터
				  <ul id="li">
				  	<li>&rtrif;사업주 전용 공지사항
				  	<li>&rtrif;인증마크 신청
				  	<li>&rtrif;관리자 문의
				  	<li>&rtrif;호스트 탈퇴
				  </ul>
				  <a href="${contextPath}/webapp/order_1.jsp"><button id="btbt">이동하기</button></a>
				</div>
			</div>	
	</section>

</section>
</body>
</html>