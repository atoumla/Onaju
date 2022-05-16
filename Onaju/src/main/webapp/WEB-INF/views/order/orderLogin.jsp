
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

.hb_rec_4 {
	display: inline-block;
	width: 240px;
	height: 180px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 5px 10px 5px 10px;
}

.hb_rec_order_1 {
	display: inline-block;
	width: 450px;
	height: 400px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px 20px 0px 20px;
	margin: 5px 10px 5px 10px;
}
/* <섹션 종류> */
.hb_section_total {
	width: 1100px;
	height: 100%
}

.hb_section_half {
	float: left;
	display: inline-block;
	width: 550px;
	height: auto;
	min-height: 700px;
}

.hb_section_order_title {
	padding: 70px 4px 50px 20px;
	display: inline-block;
	width: 1100px;
	height: 210px;
}

.hb_section_1 {
	padding: 5px 0px 5px 0px;
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

.hb_label_order {
	
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

.order_divider {
	margin-bottom: 15px; display : block;
	width: 100%;
	height: 0px;
	border-top: 0.5px solid #CCCCCC;
	display: block;
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

#h1_order_title {
	margin: 10px 0px 10px 0px;
	color: rgb(252, 78, 130);
	opacity: 90%;
	font-weight: 550;
	text-align: center;
	font-size: 25px;
}
/* <a 태그 부모 태그 전체 확장> */
#hb_a_main {
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
}

.inputWrap_order {
	margin-top: 10px;
	position: relative;
	display: block;
	width: 100%;
	height: 50px;
	border: 1px solid #eee;
	border-radius: 20px;
	background: #FBFCFC;
}

.inputWrap_order input {
	display: block;
	padding: 0 20px;
	width: 100%;
	height: 100%;
	background: #FBFCFC;
	font-size: 16px;
	color: #000;
	border: none;
	border-radius: 20px;
	outline: none;
}

.hb_order_a {
	display: block;
	margin-top: 10px;
	position: relative;
	width: 100%;
	height: 30px;
}

#hb_strong {
	display: block;
	position: Absolute;
	left: 15px;
	top: 15px;
	color: #b4b4b4;
	font-size: 16px;
	vertical-align: middle;
	font-weight: normal;
}

#order_checkbox {
	margin-top: 2.5px; width : 25px;
	float: left;
	vertical-align: middle;
	width: 25px;
}

.hb_order_p {
	float: left; font-weight : 600;
	text-align: left;
	font-weight: 600;
}

.hb_order_a_1 {
	float: right;
	text-align: right;
	color: black;
	display: inline-block;
}



.hb_order_submit {
	font-weight: 550;

font-size: 16px;
	line-height:40px;
	border: 1px solid rgb(252, 96, 143);
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}

.hb_order_sns {
	font-weight: 550;

font-size: 16px;
	line-height:40px;
	
	width: 49%;
	height: 40px;
	vertical-align: middle;
	margin: 10px 0px 10px 0px;
}

.hb_order_textbox {
margin-top:25px;
	display: block;
	padding: 0 20px;
	width: 100%;
	height: 70px;
padding: 15px 0px 15px 0px;
	font-size: 16px;
	border: none;
	border-radius: 20px;
	outline: none;
}
</style>
<script>

$(document).ready(function(){
    var userInputId = getCookie("userInputId");//저장된 쿠기값 가져오기
    $("#u_id").val(userInputId); 
     
    if($("#u_id").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩
                                           // 아이디 저장하기 체크되어있을 시,
        $("#order_checkbox").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
    alert("체크");
    $("#order_checkbox").change(function(){ // 체크박스에 변화가 발생시
        if($("#order_checkbox").is(":checked")){ // ID 저장하기 체크했을 때,
         alert("체크");
            setCookie("userInputId", $("#u_id").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
        	  alert("체크 해제");
            deleteCookie("userInputId");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("#u_id").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#order_checkbox").is(":checked")){ // ID 저장하기를 체크한 상태라면,
          
            setCookie("userInputId", $("#u_id").val(), 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}
  





</script>
<c:if test='${not empty message }'>


<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>

window.onload=function()
{
  result();
}

function result(){
	alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
}
</script>
</c:if>
<script>

function hb_test_login(){
	var id = document.getElementById('u_id').value;
	var pwd = document.getElementById('u_pw').value;
 if (id==''){
	 alert("아이디를 입력하세요");
	 location.href="orderLogin.do";
 }
 else if(pwd==''){
	 alert("비밀번호를 입력하세요");
	 location.href="orderLogin.do";
 }
 else{
	 location.href="${contextPath}/main/main.do?"
 }
 document.login_form.submit();
}



</script>
</head>
<body>
<form name="login_form" action="${contextPath}/member/login.do" method="post">
	<section class="hb_section_total">

		<section class="hb_section_order_title">
			<a href="${contextPath}/main/main.do"> <img
				src="${contextPath}/resources/image/onajulogo.png" width="150px"
				height="100px"></a>
		</section>

		<!-- <회원 로그인> -->

		<section class="hb_section_half">
			<div class="hb_rec_order_1" style="float: right;">
				<p id="h1_order_title">로그인</p>
				<div class="order_divider"></div>



				<span class="inputWrap_order"> <input type="text" name="u_id"
					id="u_id" tabindex="1" placeholder="아이디">
				</span> <span class="inputWrap_order"> <input type="password"
					name="u_pw" id="u_pw" tabindex="1" placeholder="비밀번호">
				</span> <span class="hb_order_a"> <input type="checkbox"
					id="order_checkbox" name="order_checkbox" /> <i class="hb_order_p">아이디 저장</i> <a
					class="hb_order_a_1" href="${contextPath}/member/pwdFindForm.do"
					style="margin-left: 7px;"> 비밀번호 찾기</a> <a class="hb_order_a_1"
					style="font-size: 18px;"> / </a> <a class="hb_order_a_1"
					href="${contextPath}/member/idFindForm.do"
					style="margin-right: 7px;">아이디 찾기 </a>

				</span> 
				<a class="hb_order_submit" onclick="hb_test_login()" style="background-color: rgb(252, 96, 143); color: white;" href="#">로그인</a>
				 <a class="hb_order_submit" style="background-color:white; color:rgb(252, 96, 143);" href="${contextPath}/member/joinForm.do">회원가입</a>
				 				<a class="hb_order_sns" style="background-color: rgb(30,200,0); color: white; float:left;" href="#">네이버 로그인</a>
				 						<a class="hb_order_sns" style="background-color: rgb(255,234,15); color: rgb(60,30,30); float:right;" href="https://kauth.kakao.com/oauth/authorize?client_id=2520c8e17541628f34b1475ac21d1840&redirect_uri=http://localhost:8080/Onaju/member/kakaoLogin&response_type=code">카카오 로그인</a>



			</div>
		</section>




		<!-- <비회원 로그인> -->
		<section class="hb_section_half">



			<div class="hb_rec_order_1" style="float: left;">
				<p id="h1_order_title">비회원(이용하기)</p>
				<div class="order_divider"></div>
				<div class="hb_order_textbox" style="color: rgb(178,178,178);">비회원 이용하기를 클릭하시면<br>비회원으로 이용할 수 있습니다. 
				
				</div>
					<a class="hb_order_submit" style="background-color: rgb(252, 96, 143); color: white;" href="${contextPath}/order/reservationForm.do">비회원 이용하기</a>
<div class="hb_order_textbox" style="color:	color: black;">지금 회원가입을 하시면 오나주에서 드리는 <br>할인 및 적립 혜택을 받을 수 있습니다. 
				
				</div>
				 <a class="hb_order_submit" style="background-color:white; color:rgb(252, 96, 143);" href="${contextPath}/member/joinForm.do">회원가입</a>

			</div>
		</section>






	</section>
	</form>
</body>

</html>
