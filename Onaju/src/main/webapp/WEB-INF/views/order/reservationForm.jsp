
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="order" value="${orderVO}" />
<c:set var="goods" value="${goodsVO}" />

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<style>
* {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
}

hr {
	border: 1px solid #CCCCCC;
}

.allbody {
	display: table;
	margin-left: auto;
	margin-right: auto;
}

.hb_section_1 {
	display: block;
	width: 1100px;
	height: 70px;
}

.hb_section_2 {
	display: inline-block;
	width: 500px;
	height: 100%;
	float: left;
}

.hb_section_3 {
	display: inline-block;
	width: 600px;
	height: 100%;
	float: left;
}

.hb_rec_1 {
	float: left;
	display: inline-block;
	width: 1100px;
	height: 70px;
}

#img1 {
	display: inline-block;
	width: 40px;
	height: 40px;
	margin-top: 15px;
	float: left;
}

#te {
	padding: 17px 0px 0px 10px;
	display: inline-block;
	font-size: 25px;
	float: left;
}

.hb_rec_2 {
	display: inline-block;
	float: right;
	width: 500px;
	height: 100%;
}

.box1 {
	display: inline-block;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
	width: 500px;
	height: 20%;
	margin: auto;
	font-size: 20px;
	font-weight: bolder;
	text-align: center;
}

.box2 {
	display: inline-block;
	width: 500px;
	height: 70%;
}

#btbt1 {
	float: right;
	font-size: 14px;
	font-weight: bold;
}

.hb_rec_3 {
	display: inline-block;
	float: right;
	width: 500px;
	height: 400px;
}

.box3 {
	box-sizing: border-box;
	outline: none;
	list-style: none;
	width: 500px;
	height: 150px;
}

.box4 {
	box-sizing: border-box;
	outline: none;
	list-style: none;
	width: 500px;
	height: 150px;
}

.search_box {
	width: 490px;
	/*전체검색테두리*/
	border: 1px solid;
	border-color: #cfd0d4;
	background: #fff;
	border-radius: 5px;
	height: 35px;
	display: flex;
	padding: 10px;
}

.search_field {
	/*검색창부분*/
	width: 300px;
	height: 100%;
	position: relative;
	border-style: none;
}

.search_field .input {
	width: 100%;
	height: 100%;
	border: 0px;
	font-size: 14px;
	text-align: center;
	padding: auto;
	color: #6f768d;
	border-style: none;
}

.search_field .input2 {
	position: relative;
	width: 100px;
	height: 35px;
	border: 0px;
	font-size: 14px;
	text-align: center;
	padding: auto;
	color: white;
	border-style: none;
	border-radius: 0.25em;
	font-weight: bold;
	bottom: 210%;
	left: 60%;
	padding: auto;
}

::-webkit-input-placeholder { /* Chrome/Opera/Safari */
	color: #9fa3b1;
}

::-moz-placeholder { /* Firefox 19+ */
	color: #9fa3b1;
}

:-ms-input-placeholder { /* IE 10+ */
	color: #9fa3b1;
}

#btbt2 {
	width: 490px;
	height: 35px;
	border: 0;
	outline: 0;
	border-radius: 5px;
}

#sns1 {
	display: inline-block;
	width: 160px;
	height: 35px;
	border: 0;
	outline: 0;
	border-radius: 5px;
	color: black;
	background-color: #FFEA0F;
}

#sns2 {
	display: inline-block;
	width: 160px;
	height: 35px;
	border: 0;
	outline: 0;
	border-radius: 5px;
	color: black;
	border: 1px solid blue;
}

#sns3 {
	display: inline-block;
	width: 160px;
	height: 35px;
	border: 0;
	outline: 0;
	border-radius: 5px;
	color: white;
	background-color: #1EC800;
}

#login {
	display: inline-block;
	width: 490px;
	height: 35px;
	border: 0;
	outline: 0;
	border-radius: 5px;
}

.hb_rec_4 {
	display: inline-block;
	float: right;
	width: 550px;
	height: 500px;
	border-radius: 12px;
	border: 1px solid #CCCCCC;
	padding: 20px;
}

#img2 {
	display: inline-block;
	width: 30%;
	height: 110px;
	border-radius: 12px;
	float: left;
}

#te2 {
	text-align: left;
	width: 70%;
	float: left;
	font-weight: bold;
	padding: 0px 10px;
	max-height: 82px;
}

.hb_rec_5 {
	display: inline-block;
	float: right;
	width: 500px;
	height: 400px;
}
/*결제수단 드롭다운1*/
select {
	/* Reset Select */
	appearance: none;
	outline: 0;
	border: 0;
	box-shadow: none;
	/* Personalize */
	flex: 1;
	padding: 0 1em;
	color: black;
	border: 1px solid #CCCCCC;
	background-color: white;
	background-image: none;
	cursor: pointer;
	font-weight: bold;
}
/* Remove IE arrow */
select::-ms-expand {
	display: none;
}
/* Custom Select wrapper */
.select {
	position: relative;
	display: flex;
	width: 500px;
	height: 3em;
	border-radius: 0.25em;
	overflow: hidden;
}
/* Arrow */
.select::after {
	content: "\25BC";
	position: absolute;
	top: 0;
	right: 0;
	padding: 1em;
	color: white;
	background-color: #FC4E82;
	transition: 0.25s all ease;
	pointer-events: none;
}
/* Transition */
.select:hover::after {
	color: #f39c12;
}

.select2 {
	position: relative;
	display: flex;
	width: 100px;
	height: 35px;
	border-radius: 0.25em;
	overflow: hidden;
	right: 10px;
	bottom: 11px;
}
/* Arrow */
.select2::after {
	content: "\25BC";
	position: absolute;
	top: 15%;
	right: 10%;
	padding: auto;
	transition: 0.25s all ease;
	pointer-events: none;
}
/* Transition */
.select2:hover::after {
	color: #f39c12;
}

/*a링크 효과*/
#cou a:link {
	font-weight: bold;
	color: black;
}

#cou a:hover {
	color: blue;
}

#cou a:visited {
	color: black;
}

#btbt3 {
	display: inline-block;
	width: 160px;
	height: 35px;
	border: 0;
	outline: 0;
	border-radius: 5px;
	float: right;
	font-weight: bold;
	color: white;
}

#rr {
	float: left;
	height:18px;
	font-size: 14px;
	font-weight: bold;
	width:15%;
}

#r2 {
	float: left;
	font-size: 16px;
	font-weight: 540;
	text-decoration: underline;
}

.email_sel {
	font-size: 14px;
	padding: 0px;
	text-align: left;
	appearance: auto;
	border: 1px solid #cfcfcf;
}

#tt {
	border-radius: 5px;
	border: 1px solid #CCCCCC;
	height: 40px;
}

#te3 {
	float: left;
	font-size: 18px;
	font-weight: bold;
}

.hb_text_order01 {
	height: 25px;
	margin: 12px 0px;
}

.hb_gray_line {
	border-top: 2px solid #CCCCCC;
	margin: 30px 0px;
	width: 100%;
	display: inline-block;
}

.order_input_0 {
padding:0px 5px;
height:18px;
font-size:14px;
	width: 80%;
	float: left;
	margin: 15px 0;
	border-bottom: 1.5px solid #DCDCDC
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btbt3').click(function() {
	
				var result = confirm('결제를 계속 진행하시겠습니까??');
				if (result) { //yes 
					iamport();
				} else { //no
				}
			
		});
	});
	function iamport() {
		//가맹점 식별코드
		IMP.init('imp97909068');
		IMP.request_pay({
			pg : 'kcp',
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : $("#inputCode").val(), //결제창에서 보여질 이름
			amount : $("#total").val(), //실제 결제되는 가격
			buyer_email : $("#inputCode").val(),
			buyer_name : '구매자이름',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울 강남구 도곡동',
			buyer_postcode : '123-456'
		}, function(rsp) {

			console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			
				var _room_code = $("#room_code").val();
				var _checkIn_date = $("#checkIn_date").val().trim();
				var _checkOut_date = $("#checkOut_date").val().trim();
				
				var _order_name = $("#order_name").val().trim();
				var _order_phone = $("#order_phone").val().trim();
				var _people_count = $("#people_count").val().trim();
				var _room_fee = $("#room_fee").val().trim();
				var _total = $("#total").val().trim();
				var _h_code = $("#h_code").val().trim();
				var _order_email1 = $("#order_email1").val().trim();
				var _order_email2 = $("#order_email2").val().trim();
				
				var form = {
					"room_code" : _room_code,
					"checkIn_date" : _checkIn_date,
					"checkOut_date" : _checkOut_date,
					"people_count" : _people_count,
					"room_fee" : _room_fee,
					"pay_type" : rsp.pay_method,
					"total" : _total,
					"h_code" : _h_code,
					"order_name" : _order_name,
					"order_phone" : _order_phone,
					"order_email1" : _order_email1,
					"order_email2" : _order_email2
					
					}
				$.ajax({
					url : "${contextPath}/order/payToOrderGoods.do",
					data : JSON.stringify(form, ['room_code', 'checkIn_date', 'checkOut_date', 'people_count', 'room_fee', 'pay_type', 'total','h_code', 'order_name', 'order_phone','order_email1', 'order_email2']),
					dataType : "JSON",
					type : "post",
					contentType : "application/json; charset=utf-8;",
					async : false,
					
					success : function(data) {
						alert("주문 성공!.");
						
						
						
					},
					error : function() {
						alert("네트워크가 불안정합니다. 다시 시도해 주세요.222");
					}
				})
	
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			location.href="${contextPath}/mypage/mypageMain.do"

		});
	}
	function change_email() {
		var u_email2 = document.getElementById("u_email2");
		var email_sel = document.getElementById("email_sel");

		//지금 골라진 옵션의 순서와 값 구하기
		var idx = email_sel.options.selectedIndex;
		var val = email_sel.options[idx].value;

		u_email2.value = val;
	}
	
	
	
	
	
	
	
</script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
	<section class="allbody">


		<section class="hb_section_1">
			<div class="hb_rec_1">
				<a
					style="display: inline-block; font-size: 30px; float: left; margin-top: 17px; color: black; opacity: 70%;"
					href="#">< &nbsp;</a> <b id="te">확인 및 결제 </b>
			</div>
			<br>
		</section>


		<section class="hb_section_2">
			<div class="hb_rec_2">
				<div class="box1">
					<br>할인정보
				</div>
				<br>
				<br>
				<div class="box2" style="margin: 15px 0px 0px 0px;">
					<h3 style="font-weight: 550; font-size: 25px; text-align: left;">예약
						정보</h3>
					<br>
					<div id="rr">날짜</div><div id="rr" style="width:70%; font-size:16px; float:left;text-align:center;">
					<fmt:formatDate  value="${ order.checkIn_date}" pattern="yyyy.MM.dd" />
                         ~<input type="hidden" id="checkIn_date" value="${ order.checkIn_date}">
					<fmt:formatDate value="${ order.checkOut_date}" pattern="yyyy.MM.dd" />
					<input type="hidden" id="checkOut_date" value="${ order.checkOut_date}">
					<input type="hidden" id="people_count" value="${ order.people_count}">
					<input type="hidden" id="room_fee" value="${ order.room_fee}">
					<input type="hidden" id="h_code" value="${ goods.h_code}">
					
					</div>
				
					<input type="text" value=""  style="width: 70%; display:none;	" disabled>
					<button id="btbt1">수정</button>
					<br>
					<br>
					<br>

					<div id="rr">게스트</div>
					<input type="text" value="${ order.people_count}" style="width: 70%; float:left;text-align:center; font-size:16px; font-weight:550; color:black;" disabled>
					<button id="btbt1">수정</button>
					<br>
					<br>
					<br>


				</div>
			</div>
			<div class="hb_gray_line"></div>
			<c:choose>
				<c:when test="${isLogOn=='nonmember'}">
					<h3 style="font-weight: 550; font-size: 25px; text-align: left;">비회원
						주문</h3>
					<br>
					<div id="rr" style="width: 20%; text-align: left; margin: 15px 0;">주문자
						성함</div>
					<input type="text" value="${ nonmemberInfo.u_name}"  id="order_name"name="order_name"class="order_input_0">
					<div id="rr" style="width: 20%; text-align: left; margin: 15px 0;">전화번호
					</div>
					<input type="text" value="${ nonmemberInfo.u_phone}" id="order_phone"name="order_phone" class="order_input_0">
					<div id="rr"
						style="width: 20%; text-align: left; margin: 15px 0; float: left;">이메일
						주소</div>
					<input type="text" value="" class="order_input_0" id="order_email1"name="order_email1"
						style="width: 28%;">

					<p
						style="margin-top: 20px; width: 5%; display: inline-block; float: left">@</p>
					<input type="text" value="" id="order_email2" class="order_input_0" name="order_email2"
						style="width: 28%;">
					<select name="email_sel" class="email_sel" id="email_sel"
						style="width: 17%; margin-left: 10px; float: left; margin-top: 20px;"
						onchange="change_email();">
						<option value="">직접입력</option>
						<option value="gmail.com">gmail</option>
						<option value="naver.com">naver</option>
						<option value="nate.com">nate</option>
					</select>
					<div class="hb_gray_line"></div>


				</c:when>
				<c:when test="${isLogOn== 'member'}">
					<h3 style="font-weight: 550; font-size: 25px; text-align: left;"> 회원
						주문</h3>
					<br>
					<div id="rr" style="width: 20%; text-align: left; margin: 15px 0;">주문자
						성함</div>
					<input type="text" name="order_name" id="order_name" value="${ memberInfo.u_name}"  class="order_input_0">
					<div id="rr" style="width: 20%; text-align: left; margin: 15px 0;">전화번호
					</div>
					<input type="text" value="${ memberInfo.u_phone}" id="order_phone"name="order_phone" class="order_input_0">
					<div id="rr"
						style="width: 20%; text-align: left; margin: 15px 0; float: left;">이메일
						주소</div>
					<input type="text" value="${ memberInfo.u_email1}"  id="order_email1"name="order_email1" class="order_input_0"
						style="width: 28%;">

					<p
						style="margin-top: 20px; width: 5%; display: inline-block; float: left">@</p>
					<input type="text" value="${ memberInfo.u_email2}" id="order_email2"name="order_email2"  class="order_input_0"
						style="width: 28%;">
					<select name="email_sel" class="email_sel" id="email_sel"
						style="width: 17%; margin-left: 10px; float: left; margin-top: 20px;"
						onchange="change_email();">
						<option value="">직접입력</option>
						<option value="gmail.com">gmail</option>
						<option value="naver.com">naver</option>
						<option value="nate.com">nate</option>
					</select>
					<div class="hb_gray_line"></div>


				</c:when>

			</c:choose>


			<h3
				style="font-weight: 550; font-size: 25px; text-align: left; margin-bottom: 20px;">환불
				정책</h3>
			<p style="text-align: left; margin-bottom: 10px;">
				3월 28일 오후 3:00 전까지 무료로 예약을 취소할 수 있습니다. 그 후에는 3월 29일 오후 3:00전에 예약을
				취소하면 첫 1박 요금 및 서비스 수수료를 제외한 요금 전액이 환불됩니다. <a id="cou" href="#">자세히
					알아보기</a>


			</p>
			<p style="text-align: left;">
				코로나19로 인한 여행 문제에는 정상참작이 가능한 상황 정책이 적용되지 않습니다. <a id="cou" href="#">자세히
					알아보기</a>
			</p>

			<div class="hb_gray_line" style="margin: 10px 0;"></div>
			<p style="text-align: left; font-size: 8px;">아래 버튼을 선택함으로써, 호스트가
				설정한 숙소 이용규칙, 코로나19 방역 수칙 및 게스트 환불 정책에 동의합니다. 호스트가 예약 요청을 수락하면 표시된
				총액이 결제되는 데 동의합니다.</p>
			<button id="btbt3"
				style="background-color: #FC4E82; font-size: 15px;">확인 및
				결제</button>


		</section>


		<section class="hb_section_3">
			<div class="hb_rec_4">
			<input type="hidden" id="room_code" name="room_code" value="${goods.room_code }">
				<img id="img2" src="${contextPath}/thumbnails.do?room_code=${goods.room_code}&fileName=${goods.room_imageName}"
					alt="숙박사진">
				<p id="te2"
					style="font-weight: 550; opacity: 50%; white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">
					${goods.title }</p>
				<p id="te2"
					style="margin-top: 10px; white-space: normal; word-wrap: break-word; overflow: hidden;">
					${goods.content }</p>

				<hr
					style="display: inline-block; width: 100%; margin-top: 20px; margin-bottom: 20px;">

				<h3
					style="font-weight: 550; font-size: 25px; text-align: left; margin-bottom: 20px;">요금
					세부정보</h3>
				<div class="hb_text_order01">
					<div id="r2" style="width: 40%; text-align: left;">숙소</div>
					<input type="text" value="" style="width: 60%; text-align: right;"
						disabled>
				</div>

				<div class="hb_text_order01">
					<div id="r2" style="width: 40%; text-align: left;">특별가 제안</div>
					<input type="text" value="W 100,000"
						style="width: 60%; text-align: right;" disabled>
				</div>
				<div class="hb_text_order01">
					<div id="r2" style="width: 40%; text-align: left;">서비스 수수료</div>
					<input type="text" value="W 100,000"
						style="width: 60%; text-align: right;" disabled>
				</div>
				<div class="hb_text_order01">
					<div id="r2" style="width: 40%; text-align: left;">숙박세와 수수료</div>
					<input type="text" value="W 100,000"
						style="width: 60%; text-align: right;" disabled>
				</div>
				<div class="hb_text_order01">
					<div id="r2"
						style="width: 40%; text-align: left; font-weight: 570;">총합계
					</div>
					<input type="text" id="total"value="${order.total }"
						style="width: 60%; text-align: right; font-weight: 570;" disabled>
				</div>


			</div>


		</section>











	</section>
</body>

</html>
