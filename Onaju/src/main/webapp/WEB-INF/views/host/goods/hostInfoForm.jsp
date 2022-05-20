<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업장 정보 등록하기</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
						document.getElementById('numberAddress').value = data.numberAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autonumberAddress) {
							var expJibunAddr = data.autonumberAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
						} else {
							document.getElementById('guide').innerHTML = '';
						}

					}
				}).open();
	}
</script>


<style>
@charset "utf-8";


table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.host_notice {
	width : 850px;
	padding: 0 auto;
	margin-left: 50px;
}

.page-title {
	margin-bottom: 60px;
}

.host-title h3 {
	font-size: 30px;
	color: #7f9b75;
	font-weight: 570;
	text-align: center;
}

#noticeBoard-search .noticeSearch-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap input {
	height: 28px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #cbdea6;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap .noticeBtn {
	position: absolute;
	right: -30px;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	color:#403e3f;
	font-size: 14px;
	width: 100%;
	border-top: 1px solid #cbdea6;;
	border-bottom: 1px solid #cbdea6;;
	
}

.board-table a {
	color: #403e3f;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.roomSelect {
	border: 1px solid #7f9b75;
    font-size: 15px;
    height: 28px;
    padding: 1px;
    width: 180px;
    text-align: left;

}

.search_button{
	font-size: 10pt;
    color: #666;
    text-decoration: none;
    display: inline-block;
    
    width: 150px;
    height: 25px;
    border: 1px solid #cfcfcf;
    background: #dedede;
    color: #626262;
    text-align: center;
   
   
}

.board-table th {
	text-align: center;

}

.td-date-writer{
	text-align: center;
}

.board-table .th-num {
	
	width: 100px;
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {	
	padding: 10px 0;
	border-top: 1px solid #cbdea6;
}

.th-content{
	min-height: 250px;
}

.th-image{
	min-height: 80px;
}

.noticeBtn2 {
	width: 108px;
	padding: 0;
	font-weight: 400;
}
.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	margin:30px 10px 30px 10px;
	font-size: 16px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark2 {
	background: #7f9b75;
	color: #fff;
}

.btn-dark2:hover, .btn-dark2:focus {
	background: #cbdea6;
	border-color: #cbdea6;
	color: #fff;
}

.noticeBtn2Box {
	width:850px;
	margin-left: 600px;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.host_contai {
	width: 850px;
	margin: 50px 0px 50px 0px;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

.file_input{
	margin: 5px;
    font-size: 13px;
    
}


</style>
</head>

<body>
	
<!-- 바디 시작 -->
	<section class="host_notice">
				<form name="addNewhostInfo" action="${contextPath}/host/goods/addHostInfo.do" method="post">
					<div class="host-title">
						<div class="host_contai">
							<h3>사업자 정보 등록</h3>
						</div>
					</div>
					<!-- board list area -->
					<div id="host_notice-list">
						<div class="host_contai">
							<table class="board-table">
										<colgroup>
							            	<col width="25%"/>
											<col width="25%"/>
											<col width="25%"/>
											<col width="25%"/>
									</colgroup>
								<thead>
										<tr>
											<th class="th-title">사업장 상호명</th>
											<td class="notice_title" colspan="3"><input type="text" name="hostInfo_name" id="#"></td>
										</tr>
										<tr>
											<th class="th-title">사업장 타입</th>
											<td class="notice_title">
												<select	class="roomSelect" name="host_type" id="#">
													<option class="roomOption" selected>선택</option>
													<option class="roomOption" value="호텔">호텔</option>
													<option class="roomOption" value="모텔">모텔</option>
													<option class="roomOption" value="펜션">펜션</option>
													<option class="roomOption" value="숙박">숙박</option>
												</select></td>
											<th class="th-title">방 개수</th>
											<td class="notice_title"><input type="text" name="room_count" id="#"></td>
										</tr>
										<tr>
											<th class="th-title">사업자 등록번호</th>
											<td class="notice_title" colspan="2"><input type="text" name="h_sellerNum" id="h_sellerNum"></td>
											<td class="notice_title" ><input type="button" class="search_button" value="등록번호 확인" onclick="f()"></td>
										</tr>
										<tr>
											<th class="th-title">계좌번호</th>
											<td class="notice_title" colspan="2"><input type="text" name="h_accountNum" id="h_accountNum"></td>
											<td class="notice_title" ><input type="button" class="search_button" value="계좌번호 확인" onclick="f()"></td>
										</tr>
										
										<tr>
											<th class="th-title">우편 번호</th>
											<td class="notice_title" colspan="2"><input type="text" id="zipcode" name="zipcode"></td>
											<td class="notice_title" ><input type="button" class="search_button" value="우편번호 검색" onclick="execDaumPostcode()"></td>
										</tr>
										<tr>
											<th class="th-title">도로명 주소</th>
											<td class="notice_title" colspan="3"><input type="text" name="roadAddress" id="roadAddress"></td>
										</tr>
										<tr>
											<th class="th-title">지번 주소</th>
											<td class="notice_title" colspan="3"><input type="text" name="numberAddress" id="numberAddress"></td>
										</tr>
										<tr>
											<th class="th-title">나머지 주소</th>
											<td class="notice_title" colspan="3"><input type="text" name="restAddress" id="restAddress"></td>
										</tr>
										
									</thead>					
							</table>
						</div> 
					</div>
					<div class="noticeBtn2Box">
						<button type="submit" class="noticeBtn2 btn-dark2" onClick="${contextPath}/host/goods/hostInfoList.do">목록</button>
						<button type="submit" class="noticeBtn2 btn-dark2">등록</button>
					</div>		
				</form>
		</section>
</body>
</html>