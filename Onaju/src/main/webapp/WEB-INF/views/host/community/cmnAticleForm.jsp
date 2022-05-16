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
<title>Life Style 글쓰기</title>
<script src="http://madalla.kr/js/jquery-1.8.3.min.js"></script>

<script>
	function setThumbnail(event){
		var reader = new FileReader();
		
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("class", "col-lg-6");
			
			/* document.getElementsByClassName("image_container1").appendChild(img); */
			/* document.querySelector("div.image_container1").appendChild(img);  기존꺼 */
		};
		
		reader.readAsDataURL(event.target.files[0]);
	}
	</script>

<style>
@charset "utf-8";


table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.host_notice {
	width : 800px;
	padding: 0 auto;
	margin: 30px 75px 30px 75px;
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

.hostInfo_name {
	border: 1px solid #7f9b75;
	font-size: 14px;
	height: 25px;
	padding: 1px;
	width: 200px;
	float:left;
	text-align: left;

}

.hostInfo_Option {
	font-size: 14px;
	height: 25px;
	color:#403e3f;

}

.th-content{
	min-height: 250px;
}

.th-image{
	min-height: 80px;
}

.col-lg-6 {
	width: 150px;
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
	width:750px;
	margin-left: 500px;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.host_contai {
	width: 750px;
	margin: 30px 0px 40px 0px;
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
					<div class="host-title">
						<div class="host_contai">
							<h3>Life Style 글쓰기</h3>
						</div>
					</div>
					<!-- board list area -->
					<div id="host_notice-list">
						<div class="host_contai">
							<form>
							<table class="board-table">
								<colgroup>
					            	<col width="25%"/>
									<col width="25%"/>
									<col width="25%"/>
									<col width="25%"/>
								</colgroup>
								<thead>
									<tr>
										<th class="th-date">등록일</th>
										<td class="td-date-writer">2022.04.14</td>
										<th scope="col" class="th-writer">작성자</th>
										<td class="td-date-writer">오나킹</td>
									</tr>
									<tr>
										<th class="th-title">상호명</th>
										<td class="notice_title">
											<select class="hostInfo_name" name="hostInfo_name">
												<option class="hostInfo_Option" value="selected">선택</option>
												<option class="hostInfo_Option" value="#">서울점</option>
												<option class="hostInfo_Option" value="#">대전점</option>
												<option class="hostInfo_Option" value="#">부산점</option>
											</select>
										</td>
										<th class="th-title">객실번호</th>
										<td class="notice_title" colspan="3">
											<select class="hostInfo_name" name="room_number">
												<option class="hostInfo_Option" value="selected">선택</option>
												<option class="hostInfo_Option" value="#">101</option>
												<option class="hostInfo_Option" value="#">102</option>
												<option class="hostInfo_Option" value="#">103</option> <!-- 상품등록 별로 불러 올 수 있도록 --> 
											</select>
										</td>
									</tr>
									<tr>
										<th class="th-title">제목</th>
										<td class="notice_title" colspan="3"><input type="text" name="cmn_Title"></td>
									</tr>
									<tr>
										<th class="th-title">소제목1</th>
										<td class="notice_title" colspan="3"><input type="text" name="cmn_Subhead1"></td>
									</tr>
									<tr>
										<th class="th-content">소개 내용1</th>
										<td class="notice_content" colspan="3"><input type="text" name="content1"></td>
									</tr>
									<tr>
										<th class="th-image">슬라이드 사진</th>
										<td class="notice_image" colspan="3">
											<input type="file" class="file_input" id="#" name="s_image1">
											<input type="file" class="file_input" id="#" name="s_image2">
											<input type="file" class="file_input" id="#" name="s_image3">
											<input type="file" class="file_input" id="#" name="s_image4"></td>
									</tr>
									<tr>
										<th class="th-title">소제목2</th>
										<td class="notice_title" colspan="3"><input type="text" name="cmn_Subhead2"></td>
									</tr>
									<tr>
										<th class="th-content">소개 내용2</th>
										<td class="notice_content" colspan="3">우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.</td>
									</tr>
									<tr>
										<th class="th-image">소개 사진2</th>
										<td class="notice_image" colspan="3">
											<input type="file" class="file_input" name="cmn_image" id="cmn_image" onchange="setThumbnail(event);">
											<div class="image_container1"></div>
										</td>
									</tr>
									<tr>
										<th class="th-content">소개 내용3</th>
										<td class="notice_content" colspan="3">우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.</td>
									</tr>
									<tr>
										<th class="th-image">소개 사진3</th>
										<td class="notice_image" colspan="3">
											<input type="file" class="file_input" name="cmn_image" id="cmn_image" onchange="setThumbnail(event);">
											<div class="image_container1"></div>
										</td>
									</tr>
									<tr>
										<th class="th-content">소개 내용4</th>
										<td class="notice_content" colspan="3">우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.
										우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요. 우리집 오세요.</td>
									</tr>
									<tr>
										<th class="th-image">소개 사진4</th>
										<td class="notice_image" colspan="3">
											<input type="file" class="file_input" name="cmn_image" id="cmn_image" onchange="setThumbnail(event);">
											<div class="image_container1"></div>
										</td>
									</tr>
								</thead>
							</table>
							</form>
						</div>
					</div>
					<div class="noticeBtn2Box">
						<button type="submit" class="noticeBtn2 btn-dark2" onClick="${contextPath}/host/community/cmnList.do">목록</button>
						<button type="submit" class="noticeBtn2 btn-dark2" onClick="${contextPath}/host/community/cmnArticleForm.do">등록</button>
					</div>		
		
</body>
</html>