
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
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="author" content="" />
<meta name="description" content="Colrolib Templates">
<meta name="author" content="Colrolib">
<meta name="keywords" content="Colrolib Templates">

<style>
hr{
border: 1px solid #CCCCCC;
} 
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
padding: 30px 0px;
	display: inline-block;
	width: 84%;
	height:100%;
}


.hb_section_mypagemain_1 {
	display: inline-block;
	width: 920px;
	height:170px;
}

.hb_section_mypagemain_profile {
	border: 1px solid #CCCCCC;
	display: inline-block;
	width: 150px;
	height:168px;
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
	padding: 20px 4px 15px 0px;
	display: inline-block;
	width: 100%;
	height: 100%;
}
/* <인라인블럭 왼쪽 고정> */
.margin_left_0 {
	float: left;
	margin-left: 0px;
	border:0;
}

.margin_left_1{
width:750px;
height:168px;
text-align:left;
}
#grade{
display: inline-block;
width:150px;
height:33px;
border:0;
outline:0;
border-radius: 5px;
font-weight:bold;
color:white;
}

#img2 {
display: inline-block;
float:left;
width:200px;
height:150px;
}
#btbt2{
background-color:#FC4E82;
display: inline-block;
width:50px;
height:25px;
border:0;
outline:0;
border-radius: 5px;
float:right;
font-weight:bold;
color:white;
}
.r1{
text-align:left;
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

	color:  #5C5C5C;
	font-weight: 600;
	text-align: left;
	font-size: 30px;
}
/* <a 태그 부모 태그 전체 확장> */
#hb_a_main {
    color: black;
    text-decoration: none;
    display: block;
    height: 100%;
    margin: 0 auto;
    border-radius: 20px;
}
</style>

<c:if test='${ empty isLogOn }'>

	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("로그인이 필요한 서비스입니다.");
			location.href="${contextPath}/main/main.do"
		}
	</script>
</c:if>
<script>

 function cartPay(i){
	 alert(i);

	 document.getElementById(i).submit();
 }



</script>
</head>
<body>

	<section class="hb_section_total">
	
	
	
	
	<div style="width:170px; height:1000px; float:left;">
		<!-- <상위 네비게이션>-->
		<div class="hb_section_mypagenav margin_left_0">

			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/mypageMain.do"><br>이용내역조회</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/myCart.do"><br>장바구니</a>
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
		<div style="    width: 100%;
    height: 220px;
    border: 1px solid #CCCCCC;
    border-radius: 12px;
    float: right;
">
		
		
		<div style="width:25%; height:218px;border: 1px solid #CCCCCC; float:left;">
		<a href="#"style="width:130px; margin-top:10px;height:130px; border: 1px solid #CCCCCC; border-radius:70%; display:block;">
		<img src="">
		</a>
		<div style="width:80%; height:30px;  margin-top:25px;">
		<button style="    border: 1px solid #CCCCCC;
    border-radius: 10px;
    padding: 3px 10px;">프로필 수정하기</button>
		</div>
		</div>
		
		
		
		
				</div>
		
		<div class="hb_section_title">
			<h1 id="h1_left_title">장바구니</h1>
		</div>
		
		
		
		
		<c:choose>
  					<c:when test="${empty myCartList}" >
    					<tr  height="10">
      						<td colspan="9">
         						<p align="center">
            						<b><span style="font-size:9pt;">장바구니가 비었습니다.</span></b>
        						</p>
      						</td>  
    					</tr>
  					</c:when>
  					<c:when test="${!empty myCartList}" >
  					
			<c:forEach  var="item" items="${myCartList}" varStatus="membersNum" >
					<c:set var="i" value="${i +1 }"/>
		<form name="cartPay_${i}" id="cartPay_${i}"action="${contextPath}/order/orderCartGoods.do" method="post">

		<div style="width:48%; height:100px; border: 1px solid #CCCCCC; float:left; border-radius:12px;padding:10px;cursor:pointer; margin:10px 0px;"onClick="cartPay('cartPay_' +${i})">
		<fmt:setLocale value="en_US" scope="session"/>
		<fmt:parseDate var="checkIn" value="${ item.checkIn_date }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
		<fmt:formatDate var="checkIn_date" value="${checkIn}" pattern="yyyy년 MM월 dd일"/>
		<fmt:parseDate var="checkOut" value="${ item.checkOut_date }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
		<fmt:formatDate var="checkOut_date" value="${checkOut}" pattern="yyyy년 MM월 dd일"/>
		<input type="hidden" name="cart_code" value="${ item.cart_code }">
				<input type="hidden" name="total" value="${ item.total }">
				<input type="hidden" name="people_count" value="${ item.people_count }">
				<input type="hidden" name="room_fee" value="${ item.room_fee }">
				<input type="hidden" name="room_code" value="${ item.room_code }">
				<input type="hidden" name="checkIn_date" value="${ item.checkIn_date }">
				<input type="hidden" name="checkOut_date" value="${ item.checkOut_date }">
				<input type="hidden" name="h_code" value="${ item.h_code }">
		
		
		<img src="${contextPath}/thumbnails.do?room_code=${item.room_code}&fileName=${item.room_imageName}" style="width:22%; height:100%; float:left;border: 1px solid #CCCCCC;border-radius:12px;">
		<div style="width:77%; height:25%; float:left; text-align:left; padding-left:10px;margin-top:5px;font-size:14px;font-weight:570;">     ${ item.title }</div>
		<div style="width:77%; height:25%; float:left; text-align:left; padding-left:10px;margin-top:5px;font-size:14px;font-weight:540;">     호스트: ${ item.h_name }</div>
		<div style="width:77%; height:25%; float:left; text-align:left; padding-left:10px;margin-top:5px;font-size:14px;font-weight:540;">     ${checkIn_date } ~ ${checkOut_date }</div>

		</div>
		<div style="width:2%; height:100px; float:left;" ></div>
		
		
		</form>
		</c:forEach>
		
	</c:when>
          		</c:choose>
	
		
		</section>
		
		
		
		
		
		
		
		
		







	</section>
</body>

</html>
