
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

.hb_rec_5 {
	display: inline-block;
	width: 800px;
	height: 100px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 5px 0px 5px 0px;
}

.hb_rec_6 {
	display: inline-block;
	width: 600px;
	height: 56px;
	border-radius: 30px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 10px 10px 10px 10px;
}

.hb_rec_7 {

	display: inline-block;
	width: 400px;
	height: 56px;
	border-radius: 0px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 10px 10px 10px 0px;
}

.hb_rec_8 {
	display: inline-block;
	width: 80px;
	height: 36px;
	border-radius: 30px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 10px 10px 10px 0px;
}

.hb_rec_9 {
	display: inline-block;
	width: 480px;
	height: 36px;
	border-radius: 30px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 10px 10px 10px 0px;
}

/* <섹션 종류> */
.hb_section_total {
	width: 1100px;
	height: 100%
}

.hb_section_total_small {
	width: 800px;
	height: 100%
}

.hb_section_total_small_border {
	border: 1px solid #CCCCCC;
	border-top: 0px;
	border-bottom: 0px;
	width: 1100px;
	height: 100%
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

.hb_section_6 {
	padding: 0px 0px;
	display: inline-block;
	width: 100%;
	height: 400px;
}

.hb_section_7 {
	display: inline-block;
	width: 800px;
	height: 180px;
	padding: 30px 0px 10px 0px;
	margin: 0px;
}

.hb_section_8 {
	display: inline-block;
	width: 800px;
	height: 50px;
	padding: 30px 0px 10px 0px;
	margin: 0px;
}

.hb_section_9 {
	border: 1px solid #CCCCCC;
	display: inline-block;
	width: 800px;
	height: 480px;
	padding: 0px 0px 0px 0px;
	margin: 0px;
}

.hb_section_10 {
	border: 1px solid #CCCCCC;
	position: fixed;
	bottom: 0;
	z-index: 5000;
	background-color: white;
	border-radius: 30px 30px 0px 0px;
	width: 1100px;
	height: 80px;
	padding: 0px 0px 0px 0px;
	margin: 0px;
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

#h1_left_2 {
	text-align: left;
	font-size: 10px;
	color: #CCCCCC;
}

#h2_left_1 {
	text-align: left;
	font-size: 18px;
	color: black;
}
/* <a 태그 부모 태그 전체 확장> */
#hb_a_main {
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
}
</style>
</head>
<body>
<!-- <상위 게시글 사진> -->
		<section class="hb_section_6">

			
				<a id="hb_a_main" href="#"><img
					src="${contextPath }/resources/image/house_1.jpg"
					style="width: 100%; height: 100%; "> </a>

		</section>
		<section class="hb_section_total_small_border">
	<section class="hb_section_total_small">

		

		<section class="hb_section_7">
		<p id="h1_left_2">대전광역시 유성구><br></p>
			<h1 id="h1_left">게시글 제목-----------------</h1>
		</section>
		<div class="hb_rec_5"><h1><br>숙소 간편 정보</h1></div>
		
		
			<section class="hb_section_8">
		
		<h1 id="h2_left_1">소제목-----------------</h1>
		<br>
		</section>
		
			<section class="hb_section_9">
		<a id="hb_a_main" href="#"><img
					src="${contextPath }/resources/image/house_1.jpg"
					style="width: 100%; height: 100%; "> </a>
		
		
		</section>
		
		<section class="hb_section_9">
		<h1><br><br><br><br><br><br>숙소 상세 정보</h1>
		</section>
		
		
		
		<section class="hb_section_7">
		
		
		</section>
		
		
		
		
		
		
		
		
		<!-- <여러 게시글 1> -->
		<section class="hb_section_5">
			<h1 id="h1_left">작성자의 다른 글</h1>
		</section>
		
		<section class="hb_section_4">
			<div class="hb_table_1">

				<div class="hb_rec_4 margin_left_0">
					<a id="hb_a_main" href="#"><img
						src="${contextPath }/resources/image/house_2.png"
						style="width: 100%; height: 100%; border-radius: 20px;"></a>
				</div>
				<!-- 	<텍스트 상자> -->
				<div class="hb_textbox_1 margin_left_0"></div>

			</div>
			<div class="hb_table_1">

				<div class="hb_rec_4">
					<a id="hb_a_main" href="#"><img
						src="${contextPath }/resources/image/house_3.png"
						style="width: 100%; height: 100%; border-radius: 20px;"></a>
				</div>
				<div class="hb_textbox_1"></div>
			</div>
			<div class="hb_table_1">


				<div class="hb_rec_4 margin_right_0">
					<a id="hb_a_main" href="#"><img
						src="${contextPath }/resources/image/house_4.png"
						style="width: 100%; height: 100%; border-radius: 20px;"></a>
				</div>

				<div class="hb_textbox_1 margin_right_0"></div>
			</div>
		</section>








	</section>
	<section class="hb_section_10">
	<div class="hb_rec_7"></div>
<div class="hb_rec_6"><div class="hb_rec_9"></div><div class="hb_rec_8"></div></div>

</section>
	</section>
	
	
</body>

</html>
