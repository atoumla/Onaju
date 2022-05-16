
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
<script type="text/javascript">
	






function fn_delete_member() {

	var frm_mod_member = document.frm_mod_member;
	var _member_id = frm_mod_member.u_id.value;
	var _member_pw_delete = frm_mod_member.u_pw_delete.value;
	var _member_pw = frm_mod_member.u_pw.value;

	
	if (_member_pw != _member_pw_delete) {
		alert("비밀번호가 일치하지 않습니다.");
		return;
	}
	
		
		
	


	$.ajax({
		type : "post",
		async : false,
		url : "${contextPath}/mypage/deleteMember.do",
		dataType : "text",
		data : {
			u_id : _member_id,
		},
		success : function(data, textStatus) {
			alert("회원 탈퇴했습니다.");
		},
		error : function(data, textStatus) {
			alert("에러가 발생했습니다." + data);

		},
		complete : function(data, textStatus) {
			 window.location.href = "${contextPath}/main/main.do";
		}

	});

}


</script>

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
	height: 350px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px 20px 0px 20px;
	margin: 5px 10px 5px 10px;
}

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
</head>
<body>

	
	<section class="hb_section_total">

		<section class="hb_section_order_title">
			<a href="${contextPath}/main/main.do"> <img
				src="${contextPath}/resources/image/onajulogo.png" width="150px"
				height="100px"></a>
		</section>

	<form name="frm_mod_member">

			<div class="hb_rec_order_1" >
				<p id="h1_order_title">회원 탈퇴</p>
				<div class="order_divider"></div>



				<span class="inputWrap_order"> <input type="text" name="u_id"
					id="u_id" value="${memberInfo.u_id }" tabindex="1" placeholder="아이디">
				</span> <span class="inputWrap_order"> <input type="password"
					 id="u_pw_delete" tabindex="1" placeholder="비밀번호"name="u_pw_delete" >
					<input type="hidden"
					name="u_pw" id="u_pw" tabindex="1" name="u_pw" value="${memberInfo.u_pw }" >
				</span> <span class="hb_order_a"> 정말로 회원 탈퇴 하시겠습니까?

				</span> 
				<a class="hb_order_submit"  style="background-color: rgb(252, 96, 143); color: white;" href="${contextPath}/main/main.do">돌아가기</a>
				 <a class="hb_order_submit" style="background-color:white; color:rgb(252, 96, 143);"  href="javascript:fn_delete_member();">회원 탈퇴</a>
				 	



			</div>
			</form>
		</section>






















</body>

</html>
