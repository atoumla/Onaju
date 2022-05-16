<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="goods" value="${goodsMap.goodsVO}" />
<c:set var="imageList" value="${goodsMap.imageList }" />

<!DOCTYPE html>
<html>
<head>

<title>제품 상세 페이지</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<style>
* {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
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

.hb_rec_4 {
	display: inline-block;
	width: 240px;
	height: 180px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 5px 10px 5px 10px;
}

.hb_rec_5 {
	float: left;
	display: inline-block;
	width: 550px;
	height: 400px;
}

.hb_rec_6 {
	float: right;
	display: inline-block;
	width: 550px;
	height: 200px;
	border-radius: 10px;
	border-radius: 0px 10px 0px 0px;
}

.hb_rec_7 {
	float: left;
	display: inline-block;
	width: 275px;
	height: 200px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_12 {
	float: left;
	display: inline-block;
	width: 275px;
	height: 200px;
	border-radius: 10px;
}

.hb_rec_13 {
	float: left;
	display: inline-block;
	width: 650px;
	height: 100%;
	border-radius: 10px;
}

.hb_rec_19 {
	float: left;
	display: inline-block;
	width: 100%;
	height: 50px;
	border-radius: 10px;
	margin-top: 0px;
}

.hb_rec_10 {
	float: left;
	display: inline-block;
	width: 100%;
	height: 300px;
	border-radius: 10px;
}

.hb_rec_11 {
	float: left;
	display: inline-block;
	width: 50%;
	height: 40px;
	text-align: left;
}

.hb_rec_14 {
	padding: 25px 10px 0px 25px;
	float: left;
	display: inline-block;
	width: 70%;
	height: 100px;
	text-align: left;
}

.hb_rec_15 {
	float: left;
	margin-left: 38px;
	border-radius: 12px;
	border: 1px solid #CCCCCC;
	display: inline-block;
	width: 320px;
	height: 120px;
	text-align: left;
}

.hb_rec_16 {
	padding: 7px;
	border-bottom: 1px solid #CCCCCC;
	display: inline-block;
	width: 50%;
	height: 60px;
	text-align: left;
}

.hb_rec_17 {
	float: left;
	display: inline-block;
	width: 450px;
	height: 1100px;
	border-radius: 10px;
}

.hb_rec_18 {
	padding: 7px;
	float: left;
	display: inline-block;
	width: 320px;
	height: 60px;
}

.hb_rec_29 {
	margin-top: 15px;
	text-align: center;
	float: left;
	display: inline-block;
	width: 650px;
	min-height: 200px;
	text-align: center;
}

.hb_section_total {
	width: 1100px;
	height: 100%
}

.hb_section_1 {
	display: inline-block;
	width: 800px;
	height: 70px;
}

.hb_section_10 {
	display: inline-block;
	width: 800px;
	height: 90px;
	margin-top: 10px;
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
	width: 700px;
	height: 50px;
}

.hb_section_6 {
	padding: 8px 4px;
	display: inline-block;
	width: 400px;
	height: 50px;
}

.hb_section_7 {
	display: inline-block;
	width: 1100px;
	height: 100%;
}

.hb_section_goodsinfo {
	display: inline-block;
	width: 1100px;
	height: 940px;
}

.hb_section_goodsinfo_title {
	display: inline-block;
	width: 1100px;
	height: 40px;
}

.hb_section_goodsinfo_plus {
	float: left;
	display: inline-block;
	width: 1100px;
	height: 80px;
}

.margin_left_0 {
	float: left;
	margin-left: 0px;
}

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

#h2_left {
	text-align: left;
	font-size: 35px;
}

#hb_a_main {
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	background-color: #CCCCCC;
	opacity: 100%;
}

.seller {
	width: 650px;
	text-align: left;
	font-size: 20px;
	display: inline-block;
	height: 85px;
	float: left;
	margin-top: 15px;
}

.seller2 {
	width: 100%;
	text-align: left;
	font-size: 18px;
	display: inline-block;
	height: 100%;
	font-weight: 560;
	float: left;
	margin: 15px 0;
}

.seller3 {
	vertical-align: middle;
	width: 650px;
	text-align: left;
	font-size: 15px;
	display: inline-block;
	height: 20px;
	float: left;
	margin-top: 15px;
}

.seller-profile {
	float: right;
	display: inline-block;
	width: 62px;
	height: 62px;
	margin-right: 0px;
	margin-top: 10px;
}

.goodsInfo-profile {
	float: left;
	display: inline-block;
	width: 550px;
	height: 62px;
	margin-right: 0px;
	margin-top: 10px;
}

.goodsInfo-text {
	float: left;
	display: inline-block;
	width: 550px;
	height: 128px;
	word-break: break-all;
	padding: 20px 60px 20px 0px;
	margin-right: 0px;
}

.input1 {
	text-align: left !important
}

.input2 {
	text-align: right !important
}

.checkin {
	padding: 30px 15px !important;
	border: 1px solid lightgrey !important;
	border-radius: 10px;
	box-sizing: border-box;
	background-color: #fff !important;
	color: #4CAF50 !important;
	font-size: 18px !important;
	letter-spacing: 1px;
	position: relative;
	font-weight: bold !important;
	text-align: left;
	width: 270px;
	float: left;
	margin-left: 5px;
	padding-left: 5px;
}

.checkout {
	padding: 30px 15px !important;
	border: 1px solid lightgrey !important;
	border-radius: 10px;
	box-sizing: border-box;
	background-color: #fff !important;
	color: #4CAF50 !important;
	font-size: 18px !important;
	letter-spacing: 1px;
	position: relative;
	font-weight: bold !important;
	text-align: right;
	width: 270px;
	float: left;
}

.ckeckperson {
	padding: 30px 15px !important;
	border: 1px solid lightgrey !important;
	border-radius: 10px;
	box-sizing: border-box;
	background-color: #fff !important;
	color: #4CAF50 !important;
	font-size: 18px !important;
	letter-spacing: 1px;
	position: relative;
	font-weight: bold !important;
	width: 540px;
}

.product-purchasing {
	cursor: pointer !important;
	display: inline-block !important;
	margin: 15px 38px 15px 38px !important;
	position: relative !important;
	text-align: center !important;
	text-decoration: none !important;
	touch-action: manipulation !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		"Helvetica Neue", sans-serif !important;
	font-size: 16px !important;
	line-height: 20px !important;
	font-weight: 600 !important;
	border-radius: 8px !important;
	outline: none !important;
	padding: 14px 24px !important;
	transition: box-shadow 0.2s ease 0s, -ms-transform 0.1s ease 0s,
		-webkit-transform 0.1s ease 0s, transform 0.1s ease 0s !important;
	-webkit-tap-highlight-color: transparent !important;
	border: none !important;
	background: linear-gradient(to right, rgb(230, 30, 77) 0%,
		rgb(227, 28, 95) 50%, rgb(215, 4, 102) 100%) !important;
	color: rgb(255, 255, 255) !important;
	width: 320px !important;
}

.product-purchasing:hover{
	cursor: pointer !important;
	display: inline-block !important;
	margin: 15px 38px 15px 38px !important;
	position: relative !important;
	text-align: center !important;
	text-decoration: none !important;
	touch-action: manipulation !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		"Helvetica Neue", sans-serif !important;
	font-size: 16px !important;
	line-height: 20px !important;
	font-weight: 600 !important;
	border-radius: 8px !important;
	outline: none !important;
	padding: 14px 24px !important;
	transition: box-shadow 0.2s ease 0s, -ms-transform 0.1s ease 0s,
		-webkit-transform 0.1s ease 0s, transform 0.1s ease 0s !important;
	-webkit-tap-highlight-color: transparent !important;
	border: none !important;
		background: linear-gradient(to right, rgb(205 11 56) 0%, rgb(195 8 71) 50%, rgb(205 11 56) 100%) !important;

	color: rgb(255, 255, 255) !important;
	width: 320px !important;
}

.check-header {
	-webkit-box-align: baseline !important;
	-webkit-box-pack: justify !important;
	-webkit-box-direction: normal !important;
	-webkit-box-orient: horizontal !important;
	display: flex !important;
	flex-flow: row wrap !important;
	justify-content: space-between !important;
	align-items: baseline !important;
	margin-bottom: 24px !important;
}

.check-button {
	/* position: relative !important; */
	display: flex !important;
	/* width: 100% !important; */
	margin: 0px !important;
	border: none transparent !important;
	color: black !important;
	background-color: transparent !important;
	border-radius: 0px !important;
	box-shadow: none !important;
	cursor: pointer !important;
	padding: 0px !important;
	text-align: left !important;
}

.check-box {
	background: none;
	border-radius: 8px 8px 0px 0px;
	inset: 0px 0px -1px;
	flex: 1 1 0%;
	display: flex !important;
	position: relative !important;
}

#hb_a_main_profile_2 {
	text-decoration: none;
	display: inline-block;
	width: 60px;
	height: 60px;
	font-size: 15px;
	font-weight: 600;
	color: black;
	margin: 0 auto;
	border-radius: 70%;
	float: left;
}

#seller_text_box_1 {
	margin-top: 5px;
	width: 450px;
	height: 40px;
	display: inline-block;
	font-size: 25px;
	font-weight: 570;
	float: left;
}

#seller_text_box_2 {
	width: 450px;
	height: 40px;
	display: inline-block;
	font-size: 15px;
	font-weight: 520;
	float: left;
	color: black;
}

#hb_main_profile_image_2 {
	width: 60px;
	height: 60px;
	border-radius: 70%;
	overflow: hidden;
}

#hb_review_user {
	width: 480px;
	text-align: left;
	font-size: 16px;
	font-weight: 570;
	float: left;
	color: black;
	margin: 9px 0px 0px 8px;
}

#hb_review_user_content {
	text-align: left;
	font-size: 16px;
	font-weight: 540;
	float: left;
	color: black;
}

#hb_review_date {
	width: 470px;
	text-align: left;
	font-size: 14px;
	font-weight: 520;
	float: left;
	color: #CCCCCC;
	margin: 3px 0px 0px 12px;
}

#hb_goods_review_a {
	float: left;
	font-weight: 560;
	width: 200px;
	height: 50px;
	display: inline-block;
	padding: 13px;
	margin: 15px;
	border: 2px solid #CCCCCC;
	border-radius: 30px;
	text-decoration: none;
	color: black;
}

.hb_quick {
	width: 400px;
	margin-top: 20px;
	margin-left: 45px;
	height: 330px;
	background: #fff;
	border: 1px solid #CCCCCC;
	border-radius: 20px;
	position: sticky;
	top: 180px;
	box-sizing: border-box;
	padding: 0;
	margin: 0 0 0 10%;
}

.content {
	position: relative;
	min-height: 1000px;
}

.jbFixed {
	position: fixed;
	top: 0px;
}

.hb_section_review_0 {
	display: inline-block;
	width: 1098px;
	height: 200px;
	border: 1px solid #DCDCDC;
}

.hb_section_review_1 {
	display: inline-block;
	width: 1100px;
	height: 600px;
}

.hb_section_review_2 {
	display: inline-block;
	width: 550px;
	height: 200px;
	float: left;
}

.goods_text_01 {
	text-align: left;
	font-size: 15px;
	font-weight: 520;
	white-space: normal;
	word-wrap: break-word;
	overflow: hidden;
}

#icon_onaju {
	width: 15px;
	height: 15px;
	display: inline-block;
	margin-top: 3px;
}

#icon_text_01 {
	font-size: 13px;
	text-align: left;
	display: inline-block;
}
	
#addCart_btn {
	width: 20%;
	height: 60px;
	color: white;
	float: right;
	margin-bottom: 20px;
	padding: 5px 0px 0px 0px;
	font-size: 10px;
	cursor: pointer;
	font-weight: 570;
	border: 1px solid #FA6491;
	border-radius: 12px;
	margin-top: 20px;
	background: linear-gradient(to right, rgb(230, 30, 77) 0%,
		rgb(227, 28, 95) 50%, rgb(215, 4, 102) 100%) !important;
}
#addCart_btn:hover {
	width: 20%;
	height: 60px;
	color: white;
	float: right;
	margin-bottom: 20px;
	padding: 5px 0px 0px 0px;
	font-size: 10px;
	cursor: pointer;
	font-weight: 570;
	
	border: 1px solid #FA6491;
	border-radius: 12px;
	margin-top: 20px;
	background: linear-gradient(to right, rgb(205 11 56) 0%, rgb(195 8 71) 50%, rgb(205 11 56) 100%) !important;

}

</style>
<script>

function fn_check(){
	var checkIn = document.getElementById("checkIn_date").value;
	var checkOut = document.getElementById("checkOut_date").value;
	
   var checkIn_date = dateFormat(checkIn);
   var checkOut_date = dateFormat(checkOut);

   var difference= Math.abs(checkOut_date-checkIn_date);
   days = difference/(1000 * 3600 * 24)
   
   let x = document.getElementsByClassName("days_1")[0];
   var check = document.getElementById("checkDate");
   check.value = days;
   checkIn = checkIn_date;
   checkOut = checkOut_date;
   x.innerText=days;
   


    
	
}
function hide(event){
    
	  event.target.style.display = 'none'
	  
	}
function dateFormat(dt){

	var yyyyMMdd = String(dt);
    var sYear = yyyyMMdd.substring(0,4);
    var sMonth = yyyyMMdd.substring(5,7);
    var sDate = yyyyMMdd.substring(8,10);

   
    ddate =  new Date(Number(sYear), Number(sMonth)-1, Number(sDate));
	return ddate;
}

function reservation(){
	var checkIn_date = document.getElementById('checkIn_date').value;
	var checkOut_date = document.getElementById('checkOut_date').value;
	var people_count = document.getElementById('people_count').value;
	if (checkIn_date == '') {
		alert("체크인 날짜를 선택해주세요");

		return false;
	}
	if (checkOut_date == '') {
		alert("체크아웃 날짜를 선택해주세요");

		return false;
	}
	if (people_count == '') {
		alert("인원수를 입력해주세요");

		return false;
	}
	
	document.orderEach_frm.submit();
}
function addCart(){

	var checkIn_date = document.getElementById('checkIn_date').value;
	var checkOut_date = document.getElementById('checkOut_date').value;
	var people_count = document.getElementById('people_count').value;
	if (checkIn_date == '') {
		alert("체크인 날짜를 선택해주세요");

		return false;
	}
	if (checkOut_date == '') {
		alert("체크아웃 날짜를 선택해주세요");

		return false;
	}
	if (people_count == '') {
		alert("인원수를 입력해주세요");

		return false;
	}
	


	  document.getElementById('orderEach_frm').setAttribute('action','${contextPath}/cart/addCart.do');

	  
	
	  document.orderEach_frm.submit();



}
</script>
</head>
<body>
	<!-- 전체  -->
	<section class="hb_section_total">
		<!-- 테이틀 섹션 -->
		<form action="${contextPath }/order/orderEachGoods.do" name="orderEach_frm" id="orderEach_frm"method="post">
		<section class="hb_section_10 margin_left_0">
			<br>
			<p style="text-align: left; margin-left: 5px; opacity: 80%;">${goods.roadAddress }</p>
			<h1 id="h2_left">${goods.title }</h1>

		</section>
		<!-- 사진 이미지 섹션 -->
		<section class="hb_section_2">
			<div class="hb_rec_5" style="padding: 5px;">
				<a id="hb_a_main" href="#" style="border-radius: 10px 0px 0px 10px;"><img
					src="${contextPath}/thumbnails.do?room_code=${imageList[0].room_code}&fileName=${imageList[0].room_imageName}"
					style="opacity:100%;width: 100%; height: 100%; border-radius: 10px 0px 0px 10px;">
				</a>
			</div>
			<div class="hb_rec_6" style="padding: 5px;">
				<a id="hb_a_main" href="#" style="border-radius: 0px 10px 0px 0px;"><img
					src="${contextPath}/thumbnails.do?room_code=${imageList[1].room_code}&fileName=${imageList[1].room_imageName}"
					onerror="hide(event)" style="width: 100%; height: 100%; border-radius: 0px 10px 0px 0px;">
				</a>
			</div>
			<div class="hb_rec_12" style="padding: 5px;border-radius: 0px;">
				<a id="hb_a_main" href="#" style="border-radius: 0px;"><img
					src="${contextPath}/thumbnails.do?room_code=${imageList[2].room_code}&fileName=${imageList[2].room_imageName}"
						onerror="hide(event)" style="width: 100%; height: 100%; border-radius: 0px;"> </a>
			</div>
			<div class="hb_rec_12" style="padding: 5px;border-radius: 0px 0px 10px 0px;">
				<a id="hb_a_main" href="#" style="border-radius: 0px 0px 10px 0px;"><img
					src="${contextPath}/thumbnails.do?room_code=${imageList[3].room_code}&fileName=${imageList[3].room_imageName}"
						onerror="hide(event)" style="width: 100%; height: 100%; border-radius: 0px 0px 10px 0px;">
				</a>
			</div>
		</section>
		<!-- 상품 상세 섹션 -->
		<section class="hb_section_7">
			<div class="hb_rec_13">

				<div style="height: 100px;">
					<div class="seller"><div id="seller_text_box_1">
							&lt;${goods.h_name }&gt;님의 게스트 하우스
						 </div> 
						 <input type="hidden" name="room_code" value="${goods.room_code }">
						 <input type="hidden" name="h_code" value="${goods.h_code }">
						<div class="seller-profile">
							<a id="hb_a_main_profile_2" href="#"><img
								id="hb_main_profile_image_2"
								src="${contextPath}/resources/image/dog_profile.PNG"></a>
						</div>
						<div id="seller_text_box_2">최대 인원 ${goods.max_number }명 침실
							${goods.bed_count }개 단독 사용 욕실 ${goods.bath_count}개</div>

				</div></div>
				<hr style="width: 100%">
				<br>
				<div>
					<div class="hb_rec_9">
						<div class="seller2">셀프 체크인</div>
					</div>
					<div class="hb_rec_9">
						<div class="seller3">열쇠 보관함을 이용해 체크인 하세요</div>
					</div>
					<br>
				</div>
				<div>
					<div class="hb_rec_9">
						<div class="seller2">작성자님은 슈퍼 호스트 입니다</div>
					</div>
					<div class="hb_rec_29">
						<h3 class="goods_text_01">${goods.content }</h3>

					</div>
					<hr style="width: 100%" style="margin:10px 0;">
					<br>
					<div class="hb_rec_10">
						<a id="hb_a_main" href="#"><img
							src="${contextPath }/resources/image/house_1.jpg"
							style="width: 100%; height: 100%; border-radius: 10px;"> </a>
					</div>
					<br>


					<div>

						<div class="hb_rec_9">
							<div class="seller2">숙소 편의 시설</div>
						</div>
						<div>
							<div>

								<c:if test="${not empty goods.kitchen }">
									<div class="hb_rec_11"><img id="icon_onaju"src="${contextPath }/resources/image/icons/icon_kitchen.png">
									<h4 id="icon_text_01">&emsp;주방</h4></div>
								</c:if>
								<c:if test="${not empty goods.wifi }">
									<div class="hb_rec_11"><img id="icon_onaju"src="${contextPath }/resources/image/icons/icon_wifi.png">
									<h4 id="icon_text_01">&emsp;무선 인터넷</h4></div>
								</c:if>
								<c:if test="${not empty goods.parking }">
									<div class="hb_rec_11"><img id="icon_onaju"src="${contextPath }/resources/image/icons/icon_parking.png">
									<h4 id="icon_text_01">&emsp;주차 공간</h4></div>
								</c:if>
								<c:if test="${not empty goods.tv }">
									<div class="hb_rec_11"><img id="icon_onaju"src="${contextPath }/resources/image/icons/icon_tv.png">
									<h4 id="icon_text_01">&emsp;tv</h4></div>
								</c:if>
								<c:if test="${not empty goods.refrigerator }">
									<div class="hb_rec_11"><img id="icon_onaju"src="${contextPath }/resources/image/icons/icon_refrigerator.png">
									<h4 id="icon_text_01">&emsp;냉장고</h4></div>
								</c:if>
								<c:if test="${not empty goods.hairdryer }">

								<div class="hb_rec_11"><img id="icon_onaju"src="${contextPath }/resources/image/icons/icon_hairdryer.png">
									<h4 id="icon_text_01">&emsp;헤어드라이어</h4></div>
								</c:if>
								<c:if test="${not empty goods.washer}">
									<div class="hb_rec_11"><img id="icon_onaju"src="${contextPath }/resources/image/icons/icon_washer.png">
									<h4 id="icon_text_01">&emsp;세탁기</h4></div>
								</c:if>
								<c:if test="${not empty goods.pet }">
									<div class="hb_rec_11"><img id="icon_onaju"src="${contextPath }/resources/image/icons/icon_pet.png">
									<h4 id="icon_text_01">&emsp;애완동물</h4></div>
								</c:if>

							</div>
							<button type="button" id="hb_goods_review_a"
								style="float: left;">편의시설 25개 모두 보기</button>
						</div>
					</div>
				</div>
</div>


				<div class="hb_rec_17">


					<div class="hb_quick">
						<div class="hb_rec_14">
							<p style="font-size: 23px; font-weight: 570;">₩
								${goods.room_fee } /&nbsp;<span class="days_1" ></span> 박</p>
								<input type="hidden" name= "checkDate" id="checkDate"/>
								<input type="hidden" name="room_fee" value="${goods.room_fee }" >
						</div>	<div style="width:9%;height:100px;float:right;"></div>
						<a href="#" onClick="addCart()" id="addCart_btn">
						<img style="width:30px; height:27px; margin-bottom:5px;display:block;"src="${contextPath }/resources/image/icons/cart_white.png">
						장바구니 추가
						</a>
					

						<div class="hb_rec_15">
							<div class="hb_rec_16"
								style="float: left; border-right: 1px solid #CCCCCC;">
								<h6 style="font-size:12px; width:100%;">체크인</h6>
								<input type=text style="text-align:center; margin-top:3px;" name="checkIn_date" id="checkIn_date" placeholder="yyyy-dd-mm"/>
								</div>
							<div class="hb_rec_16" style="float: right;">
							<h6 style="font-size:12px; width:100%;">체크아웃</h6>
								<input type="text" style="text-align:center; margin-top:3px;" name="checkOut_date" id="checkOut_date"placeholder="yyyy-dd-mm" onchange="fn_check()"/>
					
							</div>

							<div class="hb_rec_18" style="float: left;">
							<h6 style="font-size:12px; width:100%;">인원</h6>
								<input type="text" style="text-align:center; margin-top:3px; width:40%;" name="people_count" id="people_count" placeholder="00"/>명
								</div>

						</div>
						<button class="product-purchasing"type="button"
							onClick="reservation()">예약하기</button>

						<div class="hb_rec_19">예약 확정 전에는 요금이 청구되지 않습니다.</div>
					</div>

				</div>
		</section>
		<section class="hb_section_goodsinfo">
			<hr style="width: 100%; margin-bottom: 15px;">
			<div class="hb_section_goodsinfo_title">

				<img src="${contextPath }/resources/image/redstar.png"
					style="width: 20px; height: 20p; display: inline-block; float: left; margin: 8px 8px 0px 0px;">
				<p id="h1_left">4.90 후기 11개</p>

			</div>

			<div class="hb_section_review_0"></div>

			<div class="hb_section_review_1">

				<div class="hb_section_review_2">

					<div class="goodsInfo-profile">
						<a id="hb_a_main_profile_2" href="#"><img
							id="hb_main_profile_image_2"
							src="${contextPath}/resources/image/dog_profile.PNG"></a>

						<p id="hb_review_user">사용자 이름</p>
						<p id="hb_review_date">2022년 10월</p>
						<div class="goodsInfo-text">
							<p id="hb_review_user_content">Everything I needed for a
								comfortable stay in Dalat :) Highly recommended for price and
								location.</p>
						</div>
					</div>



				</div>

				<div class="hb_section_review_2">

					<div class="goodsInfo-profile">
						<a id="hb_a_main_profile_2" href="#"><img
							id="hb_main_profile_image_2"
							src="${contextPath}/resources/image/dog_profile.PNG"></a>

						<p id="hb_review_user">사용자 이름</p>
						<p id="hb_review_date">2022년 10월</p>
						<div class="goodsInfo-text">
							<p id="hb_review_user_content">Everything I needed for a
								comfortable stay in Dalat :) Highly recommended for price and
								location.</p>
						</div>
					</div>



				</div>
				<div class="hb_section_review_2">

					<div class="goodsInfo-profile">
						<a id="hb_a_main_profile_2" href="#"><img
							id="hb_main_profile_image_2"
							src="${contextPath}/resources/image/dog_profile.PNG"></a>

						<p id="hb_review_user">사용자 이름</p>
						<p id="hb_review_date">2022년 10월</p>
						<div class="goodsInfo-text">
							<p id="hb_review_user_content">Everything I needed for a
								comfortable stay in Dalat :) Highly recommended for price and
								location.</p>
						</div>
					</div>



				</div>
				<div class="hb_section_review_2">

					<div class="goodsInfo-profile">
						<a id="hb_a_main_profile_2" href="#"><img
							id="hb_main_profile_image_2"
							src="${contextPath}/resources/image/dog_profile.PNG"></a>

						<p id="hb_review_user">사용자 이름</p>
						<p id="hb_review_date">2022년 10월</p>
						<div class="goodsInfo-text">
							<p id="hb_review_user_content">Everything I needed for a
								comfortable stay in Dalat :) Highly recommended for price and
								location.</p>
						</div>
					</div>




				</div>

				<div class="hb_section_review_2">

					<div class="goodsInfo-profile">
						<a id="hb_a_main_profile_2" href="#"><img
							id="hb_main_profile_image_2"
							src="${contextPath}/resources/image/dog_profile.PNG"></a>

						<p id="hb_review_user">사용자 이름</p>
						<p id="hb_review_date">2022년 10월</p>
						<div class="goodsInfo-text">
							<p id="hb_review_user_content">Everything I needed for a
								comfortable stay in Dalat :) Highly recommended for price and
								location.</p>
						</div>
					</div>



				</div>

				<div class="hb_section_review_2">

					<div class="goodsInfo-profile">
						<a id="hb_a_main_profile_2" href="#"><img
							id="hb_main_profile_image_2"
							src="${contextPath}/resources/image/dog_profile.PNG"></a>

						<p id="hb_review_user">사용자 이름</p>
						<p id="hb_review_date">2022년 10월</p>
						<div class="goodsInfo-text">
							<p id="hb_review_user_content">Everything I needed for a
								comfortable stay in Dalat :) Highly recommended for price and
								location.</p>
						</div>
					</div>



				</div>






			</div>

		<div class="hb_section_goodsinfo_plus">
				<a id="hb_goods_review_a" href='#'>후기 13개 모두보기</a>
			</div>
	
		</section>

		<section class="hb_section_goodsinfo">
			<hr style="width: 100%; margin-bottom: 15px;">


		</section>
		</form>
	</section>


</body>
</html>