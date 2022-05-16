
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<style>

.hb_rec_1 {
	float: left;
	display: inline-block;
	width: 800px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_2 {
	display: inline-block;
	float: right;
	width: 250px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_3 {
	align-items: center;
	text-align: center;
	display: inline-block;
	width: 122px;
	height: 60px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
	padding: 0px 0px 0px 0px;
	margin: 0px 21px 0px 21px;
}

.hb_rec_3_mypage {
	text-align: center;
	display: inline-block;
	width: 134px;
	height: 50px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
	padding: 0px 0px 0px 0px;
	margin: 7px 21px 7px 0px;
	float:left;
}

.hb_rec_4 {
	display: inline-block;
	width: 240px;
	height: 180px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 5px 10px 5px 10px;
}
/* <섹션 종류> */
.hb_section_total {
	width: 1100px;
	height: 100%
}


.hb_section_mypagenav {
	display: inline-block;
    width: 160px;
    height: 500px;
    position: sticky;
    top: 120px;
}

.hb_section_mypagemain {
	display: inline-block;
	width: 920px;
	height:600px;
}


.hb_section_mypagemain_1 {
	display: inline-block;
	width: 920px;
	height:50px;
	
}
.here{
	float:right;
width:750px;
display: inline-block;
}
.here2{
display: inline-block;
width:250px;
height:40px;
}
.here3{
border: 1px solid #CCCCCC;
width:150px;
height:25px;
}
#btbt2{
background-color:#FC4E82;
display: inline-block;
width:50px;
height:25px;
border:0;
outline:0;
border-radius: 5px;
font-weight:bold;
color:white;
}

.hb_section_mypagemain_2 {
	border: 0;

	display: inline-block;
	width: 920px;
	height:520px;
}
.tg  {width: 100%; border-collapse:collapse;border-top: 1px solid #CCCCCC;}
.tg td{font-family:Arial, sans-serif;font-size:14px; border-top: 1px solid #CCCCCC;
  overflow:hidden;padding:10px 20px;word-break:normal;}
.tg th{border-bottom::1px solid #CCCCCC; font-family:Arial, sans-serif;font-size:14px; 
  font-weight:normal;overflow:hidden;padding:10px 20px;word-break:normal;}
 .tg .tj{font-weight:bold;text-align:left;vertical-align:top; }
.tg .tq{text-align:left;vertical-align:top}


.hb_section_mypagemain_profile {
	border:0;
	display: inline-block;
	width: 150px;
	height:168px;
	float:right;
}

.hb_section_1 {
	display: inline-block;
	width: 800px;
	height: 70px;
}

.hb_section_2 {
	display: inline-block;
	width: 1100px;
	height: 400px;
}

.hb_section_3 {
	display: inline-block;
	width: 300px;
	height: 70px;
}

.hb_section_4 {
	display: inline-block;
	width: 1100px;
	height: 300px;
}

.hb_section_5 {
	padding: 8px 4px;
	display: inline-block;
	width: 1100px;
	height: 50px;
}

.hb_section_title {
	padding: 20px 4px 30px 180px;
	display: inline-block;
	width: 1100px;
	height: 100px;
}
/* <인라인블럭 왼쪽 고정> */
.margin_left_0 {
	float: left;
	margin-left: 0px;
}


/* <인라인블럭 왼쪽 고정> */
.margin_right_0 {
	float: right;
	margin-right: 0px;
}

.hb_table_1 {
	float: left;
	display: inline-block;
	width: 266.6px;
	height: 300px;
}

.hb_textbox_1 {
	display: inline-block;
	width: 238px;
	height: 120px;
}

#form_width_center {
	text-align: center;
}

#h1_left {
	text-align: left;
	font-size: 25px;
}

#h1_left_title{

	color: rgb(252, 78, 130);
	font-weight: 600;
	text-align: left;
	font-size: 35px;
}
/* <a 태그 부모 태그 전체 확장> */
#hb_a_main {
color:black;

	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
}
</style>
</head>
<body>

	<section class="hb_section_total">
	
	
	
	
	
	
	
	
	
	
	
		<section class="hb_section_title">
			<h1 id="h1_left_title">적립금 내역</h1>
		</section>
	
	<div style="width:170px; height:1000px; float:left;">
		<!-- <상위 네비게이션>-->
		<div class="hb_section_mypagenav margin_left_0">

			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/mypageMain.do"><br>이용내역조회</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/Mypage2.do"><br>즐겨찾기</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/Mypage3.do"><br>회원정보수정</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/Mypage4.do"><br>적립금 내역</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/Mypage5.do"><br>내 리뷰 내역</a>
			</div>
				
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/delMember.do"><br>회원 탈퇴</a>
			</div>

		</div>
		
		</div>
		<section class="hb_section_mypagemain">
		
		
		
		<section class="hb_section_mypagemain_1">
		
			<form class="here"style=font-size:15px;>예약기간:
				<div class="here2">시작 <input class="here3" type='date'/></div> 
				<div class="here2">~&emsp;&emsp;끝<input class="here3" type='date'/></div>
				<button id=btbt2>조회</button>
			</form>
		
		</section>
		<div class="hb_section_mypagemain_2">
			<table class="tg">
				<thead>
				  <tr>
				    <th class="tj">예약일자</th>
				    <th class="tj">예약명</th>
				    <th class="tj">사용적립금</th>
				    <th class="tj">적립포인트</th>
				    <th class="tj">현재적립금</th>
				  </tr>
				  
				</thead>
				<tbody>
				  <tr>
				    <td class="tq">숙소 예약 결제 일자</td>
				    <td class="tq">숙소명</td>
				    <td class="tq">결제시 사용 적립금</td>
				    <td class="tq">결제 후 적립금</td>
				    <td class="tq">잔여 적립금</td>
				  </tr>
				  <tr>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				  </tr>
				  <tr>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				  </tr>
				  <tr>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				    <td class="tq">-------</td>
				  </tr>
				</tbody>
			</table>
		</div>
		
		
		
		
		
		
		
		
		</section>
		
		
		
		
		
		
		
		
		







	</section>
</body>

</html>
