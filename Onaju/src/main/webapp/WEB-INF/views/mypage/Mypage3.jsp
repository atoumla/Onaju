
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
	function execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('roadAddress').value = fullRoadAddr;
						document.getElementById('jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
						} else {
							document.getElementById('guide').innerHTML = '';
						}

					}
				}).open();
	}

	function fn_overlapped() {
		var _id = $("#_u_id").val();
		if (_id == '') {
			alert("ID를 입력하세요");
			return;
		}
		$.ajax({
			type : "post",
			async : false,
			url : "${contextPath}/member/overlapped.do",
			dataType : "text",
			data : {
				id : _id
			},
			success : function(data, textStatus) {
				if (data == 'false') {
					alert("사용할 수 있는 ID입니다.");
					$('#btnOverlapped').prop("disabled", true);
					$('#_u_id').prop("disabled", true);
					$('#u_id').val(_id);
				} else {
					alert("사용할 수 없는 ID입니다.");
				}
			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다.");
				ㅣ
			},
			complete : function(data, textStatus) {
				//alert("작업을완료 했습니다");
			}
		}); //end ajax	 
	}

	function fn_modify_member_info(attribute) {
		var value;
		/* 	 alert(member_id); */
		// alert("mod_type:"+mod_type);
		var frm_mod_u = document.join_form1;
		if (attribute == 'u_pw') {
			value = frm_mod_u.u_pw.value;
			alert("u_pw:" + value);
		} else if (attribute == 'u_gender') {
			var u_gender = frm_mod_u.u_gender;
			for (var i = 0; u_gender.length; i++) {
				if (u_gender[i].checked) {
					value = u_gender[i].value;
					break;
				}
			}

		}

		else if (attribute == 'u_name') {
			value = frm_mod_u.u_name.value;

		} else if (attribute == 'u_birth') {
			var u_birth_y = frm_mod_u.u_birth_y;
			var u_birth_m = frm_mod_u.u_birth_m;
			var u_birth_d = frm_mod_u.u_birth_d;

			for (var i = 0; u_birth_y.length; i++) {
				if (u_birth_y[i].selected) {
					value_y = u_birth_y[i].value;
					break;
				}
			}
			for (var i = 0; u_birth_m.length; i++) {
				if (u_birth_m[i].selected) {
					value_m = u_birth_m[i].value;
					break;
				}
			}

			for (var i = 0; u_birth_d.length; i++) {
				if (u_birth_d[i].selected) {
					value_d = u_birth_d[i].value;
					break;
				}
			}

			//alert("수정 년:"+value_y+","+value_m+","+value_d);

			//alert("생년 양음년 "+value_gn);
			value = +value_y + "," + value_m + "," + value_d;
		} else if (attribute == 'u_phone') {
			value = frm_mod_u.u_phone.value;

		} else if (attribute == 'u_email') {
			var email1 = frm_mod_u.u_email1;
			var email2 = frm_mod_u.u_email2;

			value_email1 = email1.value;
			value_email2 = email2.value;
			value = value_email1 + "," + value_email2;
			//alert(value);
		} else if (attribute == 'address') {
			alert(attribute);
			var zipcode = frm_mod_u.zipcode;
			var roadAddress = frm_mod_u.roadAddress;
			var numberAddress = frm_mod_u.numberAddress;
			var restAddress = frm_mod_u.restAddress;

			value_zipcode = zipcode.value;
			value_roadAddress = roadAddress.value;
			value_jibunAddress = numberAddress.value;
			value_namujiAddress = restAddress.value;
			value = value_zipcode + "," + value_roadAddress + ","
					+ value_jibunAddress + "," + value_namujiAddress;
		}
		console.log(attribute);

		$.ajax({
			type : "post",
			async : false, //false인 경우 동기식으로 처리한다.
			url : "${contextPath}/mypage/modifyMyInfo.do",
			data : {
				attribute : attribute,
				value : value,
			},
			success : function(data, textStatus) {
				if (data.trim() == 'mod_success') {
					alert("회원 정보를 수정했습니다.");
				} else if (data.trim() == 'failed') {
					alert("다시 시도해 주세요.");
				}

			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다." + data);
			},
			complete : function(data, textStatus) {
				//alert("작업을완료 했습니다");

			}
		}); //end ajax
	}

	function fn_delete_member() {
		var frm_mod_u = document.frm_mod_u;
		var _u_id = frm_mod_u.u_id.value;
		var _u_pw_delete = frm_mod_u.u_pw_delete.value;
		var _u_pw = frm_mod_u.u_pw.value;

		if (_u_pw != _u_pw_delete) {
			alert("비밀번호가 일치하지 않습니다.");
			return;
		}

		$.ajax({
			type : "post",
			async : false,
			url : "${contextPath}/mypage/deleteMember.do",
			dataType : "text",
			data : {
				u_id : _u_id,
			},
			success : function(data, textStatus) {
				alert("회원 탈퇴했습니다.");
			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다." + data);

			},
			complete : function(data, textStatus) {

			}

		});

	}
	/* //아이디 중복체크 팝업창(현재 공백문서)
	function id_check() {
	  //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
	  window.open("", "", "width=600, height=200, left=200, top=100");
	} */

	//이메일 옵션 선택후 주소 자동 완성
	function change_email() {
		var email_add = document.getElementById("email_add");
		var email_sel = document.getElementById("email_sel");

		//지금 골라진 옵션의 순서와 값 구하기
		var idx = email_sel.options.selectedIndex;
		var val = email_sel.options[idx].value;

		email_add.value = val;
	}

	//우편번호 검색 팝업창(현재 공백문서)
	function search_address() {
		window.open("", "b", "width=600, height=300, left=200, top=100");
	}
</script>
<script>
var code = "";
$("#emailChk").click(function(){
	var sm_email = $("#sm_email").val();
	$.ajax({
        type:"GET",
        url:"member/mailCheck?sm_email=" + sm_email,
        cache : false,
        success:function(data){
        	if(data == "error"){
        		alert("이메일 주소가 올바르지 않습니다. 유효한 이메일 주소를 입력해주세요.");
				$("#sm_email").attr("autofocus",true);
				$(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.");
				$(".successEmailChk").css("color","red");
        	}else{	        		
				alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
        		$("#sm_email2").attr("disabled",false);
        		$("#emailChk2").css("display","inline-block");
        		$(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.");
        		$(".successEmailChk").css("color","green");
        		code = data;
        	}
        }
    });
});

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

.hb_rec_3_mypage {
	text-align: center;
	display: inline-block;
	width: 134px;
	height: 50px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
	padding: 0px 0px 0px 0px;
	margin: 7px 21px 7px 0px;
	float: left;
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
	height: 170px;
}

.hb_section_mypagemain_2 {
	border: 1px solid #CCCCCC;
	display: inline-block;
	width: 770px;
	height: 168px;
}

.hb_section_mypagemain_profile {
	border: 1px solid #CCCCCC;
	display: inline-block;
	width: 150px;
	height: 168px;
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

#hb_a_main {
	color: black;
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
}

* {
	margin: 0;
	padding: 0;
}

.red_txt {
	color: #ee7272;
}

.blind {
	display: block;
	overflow: hidden;
	position: absolute;
	left: 0;
	top: -5000px
}

.wrap {
	float: left;
	max-width: 960px;
	margin: 0 auto;
}

.wrap.wd669 {
	max-width: 170px;
}

.wrap.wd668 {
	max-width: 628px;
}

.wrap.wd668.line {
	border: 1px solid #ececec;
	padding: 30px 20px;
}

.form_box {
	width: 100%;
}

.sub_tit_txt {
	margin: 80px 0 20px 20px;
	color: #2f2f2f;
	font-size: 25px;
}

.wrap.wd668.line .sub_tit_txt {
	margin: 0px 0 20px 20px;
}

.con_term .term_txt {
	border: 1px solid #ececec;
	padding: 30px;
	height: 210px;
	overflow-y: auto;
	margin: 0 0 15px;
}

.con_term .term_txt ul li, .con_term .term_txt p, .con_term .term_txt div
	{
	color: #818181;
	font-size: 12px;
	line-height: 17px;
	margin: 0 0 15px;
}

.left_margin {
	margin: 0 0 0 20px;
}

.con_term .term_txt div.txt_bold {
	font-weight: bold;
	margin: 0 0 25px;
}

.btn_wrap {
	text-align: center;
	margin: 40px 0 30px;
}

.btn_wrap1 {
	color: #fff;
	background-color: #FC4E82;
	font-weight: 560;
	height: 25px;
	font-size:12px;
	line-height: 0px;
	width: 120px;
	display: block;
	text-align: center;
	margin: 6px 0 6px 6px;
	border: 1px solid;
	float: left;
	border-radius: 5px;
}

.btn_wrap2 {
	color: #fff;
	font-weight: bold;
	height: 25px;
	line-height: 0px;
	width: 100px;
	display: block;
	text-align: center;
	margin: 6px 0 6px 6px;
	border: 1px solid white;
	float: left;
}

.btn_wrap {
	color: #fff;
	background-color: #FC4E82;
	font-weight: bold;
	height: 30px;
	line-height: 30px;
	width: 168px;
	display: block;
	text-align: center;
	margin: 30px 0 30px 0px;
}

.btn_wrap a {
	color: #fff;
	background-color: #FC4E82;
	font-weight: bold;
	height: 30px;
	line-height: 30px;
	width: 168px;
	display: block;
	text-align: center;
	margin: 0 auto;
}

.btn_wrap a.wide {
	width: 587px;
	margin: 0 0 0 20px;
}

.find_txt ul li {
	color: #9a9a9a;
	font-size: 13px;
	text-align: center;
	line-height: 17px;
	margin: 0 0 20px;
}

.form_txtInput .checkbox_wrap {
	position: relative;
	padding: 5px;
	text-align: right;
}

.form_txtInput .checkbox_wrap input[type="checkbox"] {
	border: 1px solid #ccc;
	width: auto;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]+label {
	font-size: 13px;
	color: #818181;
	padding-left: 5px;
}

.exTxt {
	font-size: 14px;
	color: #9a9a9a;
	display: block;
	margin: 0 0 45px 20px;
}

.join_form {
	width: 100%;
	max-width: 668px;
}

.join_form table {
	border-spacing: 0;
	margin: 0;
	padding: 0;
	border: 0;
	width: 100%;
}

.join_form table input {
	border: 1px solid #ececec;
	font-size: 14px;
	color: #4c4c4c;
	height: 25px;
	/* padding: 6px; */
	width: 100%;
	float: left;
}

.birth_select {
	border: 1px solid #ececec;
	font-size: 14px;
	color: #4c4c4c;
	height: 25px;
	padding: 2px;
	width: 20%;
}

#_u_id {
	width: 395px;
	background-color: rgb(224, 224, 224);
}

.join_form table input.moblie {
	width: 100%;
	display: inline-block;
}

.join_form table input.email {
	width: 162px;
	display: inline-block;
}

.join_form.idpwFind table input {
	width: 519px;
}

.join_form table input.email_input {
	width: 115px;
}

.join_form table select.email_sel {
	margin: 0 auto;
	margin-left: 20px;
	height: 25px;
}

.join_form.idpwFind table input.phone {
	width: 182px;
	margin: 0 12px 0 11px;
}

.join_form.idpwFind table input.phone2 {
	width: 182px;
}

.join_form table input.send_number {
	width: 250px;
}

#zipcode {
	width: 250px;
	margin-right: 30px;
}

.join_form table td input.zipcode_search {
	font-size: 9pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 25px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 25px;
}

.join_form table th span {
	color: #404040;
	font-size: 14px;
	display: inline-block;
	position: relative;
	padding: 0 10px 0 0;
	text-indent: 20px;
}

.join_form table th {
	text-align: left;
}

.join_form table td {
	padding: 6px 0;
	position: relative;
}

.join_form table th span:after {
	content: '*';
	font-size: 13px;
	color: #f95427;
	position: absolute;
	top: 0;
	right: 0px;
}

.join_form.idpwFind table th span:after {
	content: none;
}

.join_form table td a.btn_confirm {
	font-size: 9pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 25px;
	/* margin-left: 10px */
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 25px;
}

.join_form table td input.btnOverlapped {
	font-size: 9pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 25px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 25px;
}

.join_form table td input.btn_confirm {
	font-size: 9pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 25px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 25px;
	margin-left: 30px;
}

.join_form.idpwFind table td select {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background:
		url(https://secsales.interparkb2b.co.kr/data/G94/main/sele_arr.gif)
		no-repeat 95% 50%;
	text-indent: 20px;
	width: 124px;
	height: 50px;
	border: 1px solid #ececec;
	font-size: 14px;
	color: #ccc;
	float: left;
}

.join_form.idpwFind table td select::-ms-expand {
	display: none;
}

.join_form.idpwFind table td  tr.phone td select {
	text-align: center;
	text-indent: 10px;
}

.join_form.idpwFind table tr.email input:after, .mar10:after, .join_form.idpwFind table td select:after,
	.join_form table td a.btn_confirm:after {
	content: '';
	display: block;
	clear: both;
}

.agree_wrap {
	margin: 36px 0 0;
}

.agree_wrap .checkbox_wrap {
	text-align: left;
}

.mar27 {
	margin: 27px 0 0;
}

.mar10 {
	/* margin: 0px 5px 0 5px; */
	display: inline-block;
	padding: 0;
	margin: 3px 3px;
	float: left;
}

.exform_txt {
	padding: 12px 0 19px 0;
	text-align: right;
	color: #9a9a9a;
	font-size: 13px;
	border-bottom: 1px solid #ececec;
}

.exform_txt span {
	display: inline-block;
	position: relative;
	padding-left: 10px
}

.exform_txt span:after {
	content: '*';
	position: absolute;
	left: 0;
	top: 0;
	color: #f95427;
	font-size: 13px;
	font-weight: bold;
}

.explan_txt {
	margin: 3px 0 0 22px;
}

.explan_txt li {
	color: #b2b2b2;
	font-size: 13px;
	line-height: 17px;
}

.popWrap {
	border: 1px solid #ececec;
	padding: 30px;
	max-width: 400px;
	width: 100%;
	margin: 30px auto 0;
	display: none;
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	background: #fff;
	z-index: 5;
}

.popWrap.is-open {
	display: block;
}

.popWrap .pop_txt_con .pop_exTxt {
	font-size: 14px;
	color: #9a9a9a;
	line-height: 20px;
}

.popWrap .pop_txt_con .pop_exTxt span {
	color: #254ee9
}

.popWrap .pop_btnWrap {
	margin: 30px 0 0;
}

.popWrap .pop_btnWrap a {
	color: #fff;
	background-color: #4380ce;
	font-weight: bold;
	padding: 10px;
	height: 22px;
	line-height: 22px;
	width: 103px;
	display: block;
	text-align: center;
}

.join_form table input.send_number::placeholder {
	text-align: right;
}

.join_form table input.send_number:-ms-input-placeholder {
	text-align: right;
}

.join_form table input.send_number::-ms-input-placeholder {
	text-align: right;
}

.overlayer {
	position: fixed;
	display: none;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 2;
	cursor: pointer;
}

.overlayer.is-open {
	display: block;
}

.box_checkbox1 {
	color: #gray;
	font-size: 12px;
}

.birth_select {
	margin-bottom: 5px;
	font-size: 12px;
}

.txt_label {
	color: #gray;
	font-size: 12px;
}

.none_important:after {
	display: none;
}
</style>

<c:if test='${ not empty message }'>

	<script>
	window.onload=function()
	{
	  result1();
	}

	function result1(){
		alert('${message}');
	}
	</script>
</c:if>
<script>



function readURL(input) {
	  
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('preview').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('preview').src = "";
	  }
	
	}
	
	function submitFrofile(){
		
		
		document.addProfile.submit();
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
			<div
				style="width: 100%; height: 140px; border: 1px solid #CCCCCC; border-radius: 12px; float: right;">

				<form action="${contextPath}/member/uploadProfile.do" method="post"
					name="addProfile" enctype="multipart/form-data">
					<div
						style="width: 20%; height: 138px; border-right: 1px solid #CCCCCC; float: left;">
						<a href="#"
							style="width: 80px; margin-top: 10px; height: 80px; border: 2px solid #CCCCCC; border-radius: 70%; display: block;">
							<img id="preview"
							style="width: 100%; height: 100%; overflow: hidden; z-index: 9999; border-radius: 70%; border: 0px;"
							onclick="onclick=document.all.u_imageName.click()"
							src="${contextPath}/profileShow.do?u_id=${memberInfo.u_id}&fileName=${memberInfo.u_imageName}">

						</a><input type="hidden" name="u_id" value="${memberInfo.u_id }">
						<div style="width: 80%; height: 30px; margin-top: 8px;">
							<input type="hidden" name="imageName" id="imageName"> <input
								type='file' name='u_imageName' id='u_imageName'
								style="display: none;" onChange="readURL(this)" />
							<div
								style="border: 1px solid #CCCCCC; cursor: pointer; width: 60%; font-size: 12px; border-radius: 10px; padding: 3px 10px; display: inline-block;"
								onclick="onclick=document.all.u_imageName.click()"><strong>프로필 선택</strong>
								</div>

							<div
								style="border: 1px solid #CCCCCC; border-radius: 10px; padding: 3px 10px; margin-top: 3px; width: 35%; display: inline-block; cursor: pointer; font-size: 12px;"
								onClick="submitFrofile()"><strong>등록</strong></div>

						</div>
					</div>
				</form>



			</div>


			<section class="hb_section_title">
				<h1 id="h1_left_title">회원정보 수정</h1>
			</section>




			<form name="join_form1">


				<div class="wrap wd668">
					<div class="form_box">
						<div class="form_txtInput">

							<div class="join_form">
								<table>
									<colgroup>
										<col width="30%" />
										<col width="auto" />
									</colgroup>
									<tbody>
										<tr>
											<th><span>아이디</span></th>
											<td><input type="text" name="_u_id" id="_u_id"
												placeholder="" value="${memberInfo.u_id }" disabled>
												<input type="hidden" name="u_id" id="u_id" />
										</tr>
										<tr>
											<th><span>이름</span></th>
											<td><input type="text" name="u_name" id="u_name"
												value="${memberInfo.u_name }" style="" placeholder=""></td>
										</tr>
										<tr>
											<th><span>비밀번호</span></th>
											<td><input type="password" name="u_pw" id="u_pw"
												placeholder="영문자+숫자+특수조합(8이상)"></td>
										</tr>
										<tr>
											<th><span>비밀번호 확인</span></th>
											<td><input type="password" name="u_repwd" id="u_repwd"
												placeholder="영문자+숫자+특수조합(8이상)"></td>
										</tr>
										<tr>
											<th><span>법정생년월일</span></th>
											<td><select class="birth_select" name="u_birth_y"
												id="u_birth_y">
													<c:forEach var="i" begin="1" end="102">
														<c:choose>
															<c:when test="${memberInfo.u_birth_y==1920+i }">
																<option value="${ 1920+i}" selected>${ 1920+i}
																</option>
															</c:when>
															<c:otherwise>
																<option value="${ 1920+i}">${ 1920+i}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
											</select><span class="u_birth"></span><strong class="txt_label">년</strong>
												<select class="birth_select" name="u_birth_m" id="u_birth_m">
													<c:forEach var="i" begin="1" end="12">
														<c:choose>
															<c:when test="${memberInfo.u_birth_m==i }">
																<option value="${i }" selected>${i }</option>
															</c:when>
															<c:otherwise>
																<option value="${i }">${i}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
											</select><span class="u_birth"></span><strong class="txt_label">월</strong>
												<select class="birth_select" name="u_birth_d" id="u_birth_d">
													<c:forEach var="i" begin="1" end="31">
														<c:choose>
															<c:when test="${memberInfo.u_birth_d==i }">
																<option value="${i}" selected>${i}</option>
															</c:when>
															<c:otherwise>
																<option value="${i}">${i}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
											</select><span class="u_birth"></span><strong class="txt_label">일</strong>
												<!-- <input type="radio" name="member_birth_gn" value="2"> 
										<span class="member_birth"></span><strong
									class="txt_label">양력</strong> <input type="radio"
									name="member_birth_gn" value="1" checked /> <span
									class="member_birth"></span><strong class="txt_label">&nbsp;음력</strong>  -->
											</td>
										</tr>
										<tr>
											<th><span>핸드폰 번호</span></th>
											<td><input type="text" class="moblie" name="u_phone"
												id="u_phone" value="${memberInfo.u_phone }"> <input
												type="hidden" name="_moblie_check" id="_moblie_check" /> <!-- <a href="javascript:;" class="btn_confirm">인증번호 발송</a></td> -->
										</tr>

										<tr class="email">
											<th><span>이메일</span></th>
											<td><input type="text" class="email_input"
												name="u_email1" id="email_id"
												value="${memberInfo.u_email1 }"><span class="mar10">@</span>
												<input type="text" value="${memberInfo.u_email2 }"
												class="email_input" name="u_email2" id="email_add">
												<select name="email_sel"
												style="margin-left: 0px; width: 115px; float: right;"
												class="email_sel" id="email_sel" onchange="change_email();">
													<option value="">직접입력</option>
													<option value="gmail.com">gmail</option>
													<option value="naver.com">naver</option>
													<option value="nate.com">nate</option>
											</select> <!-- <input type="text" name="email_id" class="email" id="email_id"><span class="mar10">@</span> -->
												<!-- <input type="text" name="member_email2"  class="email email2" placeholder=""> -->
											</td>
										</tr>
										<tr>
											<th><span class="none_important">주소</span></th>
											<td><input type="text" id="zipcode" name="zipcode"
												value="${memberInfo.zipcode }"><input type="button"
												class="zipcode_search" value="우편번호검색"
												onclick="execDaumPostcode()"><br> <br>
												<div>
													<span class=""></span><strong class="txt_label">도로명
														주소 :</strong> <input type="text" id="roadAddress"
														name="roadAddress" value="${memberInfo.roadAddress }">
												</div>
												<div>
													<span class=""></span><strong class="txt_label">지번
														주소 :</strong> <input type="text" id="numberAddress"
														value="${memberInfo.numberAddress }" name="numberAddress">
												</div>
												<div>
													<span class=""></span><strong class="txt_label">나머지
														주소 :</strong> <input type="text" name="restAddress"
														value="${memberInfo.restAddress }" />
												</div></td>
										</tr>
										<tr>
											<th><span class="none_important">추천인 아이디</span></th>
											<td><input type="text" name="proposer"
												value="${memberInfo.proposer }"></td>
										</tr>
									</tbody>
								</table>

								<div class="exform_txt"></div>
							</div>







						</div>
						<!-- form_txtInput E -->

					</div>
					<!-- content E-->

				</div>
				<div class="wrap wd669">
					<div class="btn_wrap2"></div>
					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('u_name')">이름 수정하기</button>
					<div class="btn_wrap2"></div>

					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('u_pw')">비밀번호 수정하기</button>
					<div class="btn_wrap2" style="height: 30px;"></div>


					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('u_phone')">전화번호 수정하기</button>
					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('u_email')">이메일 수정하기</button>
					<div class="btn_wrap2" style="height: 118px;"></div>

					<button type="button" class="btn_wrap1"
						onClick="fn_modify_member_info('address')">주소 수정하기</button>



				</div>
			</form>

		</section>


	</section>

















</body>

</html>
