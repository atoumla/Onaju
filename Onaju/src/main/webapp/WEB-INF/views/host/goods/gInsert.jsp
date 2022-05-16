<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.bigbox {
    width: 850px;
    height: 100%;
    top: 30px;
    left: 25px;
    position: relative;
}
.box1 {
	width: 800px;
	border: 2px solid #cbdea6;;
	border-radius: 15px;
	padding: 10px;
	margin: auto;
	font-size: 20px;
	font-weight: bolder;
	text-align: center;
}

.box2 {
	width: 800px;
	height: 1250px;
	border: 2px solid #cbdea6;;
	border-radius: 15px;
	padding: 10px;
	margin: auto;
}

.inf {
	
	width: 780px;
	height: 100%;
	color: #403e3f;
	font-size: 18px;
	font-weight: bold;
	text-align: left;
	list-style: none;
	right: 20px;
}

.inf2 {
	bottom: 30px;
	color: #403e3f;
	font-size: 18px;
	font-weight: bold;
	text-align: left;
	display: inline-block;
	list-style: none;
	width: 240px;
	height: 100%;
	
}

.inf3 {
	bottom: 50px;
	width: 780px;
	height: 100%;
	color: #403e3f;
	font-size: 18px;
	font-weight: bold;
	text-align: left;
	list-style: none;
	
}

.inf4 {
	color: #403e3f;
	font-size: 18px;
	font-weight: bold;
	text-align: left;
	display: inline-block;
	list-style: none;
	width: 240px;
	height: 100%;
}

.inf5 {
	display: inline-block;
	width: 780px;
	height: 100px;
	color: #403e3f;
	font-size: 18px;
	font-weight: bold;
	text-align: left;
	list-style: none;
}

#nam {
	width: 750px;
	height: 20px;
	border: 2px solid #EFEFEF;
	border-radius: 5px;
}

#nam2 {
	width: 750px;
	height: 100px;
	border: 2px solid #EFEFEF;
	border-radius: 5px;
}

/* ON/OFF 버튼 */
.slideThree {
	width: 80px;
	height: 24px;
	background: #efefef;
	margin: 20px auto;
	position: relative;
	border-radius: 50px;
}

.slideThree:after {
	content: "OFF";
	color: #403e3f;
	position: absolute;
	right: 10px;
	z-index: 0;
	font: 12px/26px Arial, sans-serif;
	font-weight: bold;
	text-shadow: 1px 1px 0px rgba(255, 255, 255, 0.15);
}

.slideThree:before {
	content: "ON";
	color: #27ae60;
	position: absolute;
	left: 10px;
	z-index: 0;
	font: 12px/26px Arial, sans-serif;
	font-weight: bold;
}

.slideThree label {
	display: block;
	width: 40px;
	height: 23px;
	cursor: pointer;
	position: absolute;
	top: 0px;
	left: 3px;
	z-index: 1;
	background: #fcfff4;
	background: linear-gradient(to bottom, #7f9b75 0%, #7f9b75 40%, #7f9b75 100%);
	border-radius: 50px;
	transition: all 0.4s ease;
}

.slideThree input[type="checkbox"] {
	visibility: hidden;
}

.slideThree input[type="checkbox"]:checked+label {
	left: 43px;
}

.on {
	position: relative;
	bottom: 35px;
	left: 360px;
}

.cho {
	width: 700px;
	height: 35px;
	dispaly: inline-block;
	font-size: 15px;
	text-align: left;
}

#sub {
	float: right;
	background-color: #EFEFEF;
	border-radius: 50px;
	border-style: none;
	color: #403e3f;
	cursor: pointer;
	width: 140px;
	height: 25px;
	right: 30px;
	position: relative;
	font-weight: bold;
}

.num-block .skin-2 {
	float: left;
	width: 100%;
	padding: 15px 1px;
}

.num-block .skin-3 {
	float: left;
	width: 100%;
	padding: 15px 1px;
}

.num-block .skin-4 {
	float: left;
	width: 100%;
	padding: 15px 1px;
}
/* 침대개수 유형 욕실 */
.skin-2 .num-in {
	border: 2px solid #EFEFEF;
	border-radius: 25px;
	height: 42px;
	width: 110px;
	float: left;
	position: relative;
}

.skin-2 .num-in	span {
	width: 40px;
	display: block;
	height: 40px;
	float: left;
	position: relative;
}

.skin-2 .num-in span:before, .skin-2 .num-in span:after {
	content: '';
	position: absolute;
	background-color: #667780;
	height: 2px;
	width: 10px;
	top: 50%;
	left: 50%;
	margin-top: -1px;
	margin-left: -5px;
}

.skin-2 .num-in span.plus:after {
	transform: rotate(90deg);
}

.skin-2 .num-in input {
	float: left;
	width: 20%;
	height: 40px;
	border: none;
	text-align: center;
}

/* 숙박기간 */
.skin-3 .num-in {
	border: 2px solid #EFEFEF;
	border-radius: 25px;
	height: 42px;
	width: 110px;
	float: left;
	position: relative;
	margin: 0px 125px 0px 0px;
}

.skin-3 .num-in	span {
	width: 40px;
	display: block;
	height: 40px;
	float: left;
	position: relative;
}

.skin-3 .num-in span:before, .skin-3 .num-in span:after {
	content: '';
	position: absolute;
	background-color: #667780;
	height: 2px;
	width: 10px;
	top: 50%;
	left: 50%;
	margin-top: -1px;
	margin-left: -5px;
}

.skin-3 .num-in span.plus:after {
	transform: rotate(90deg);
}

.skin-3 .num-in input {
	float: left;
	width: 20%;
	height: 40px;
	border: none;
	text-align: center;
}

.num-block skin-3 {
	width: 200px;
	height: 50px;
}

/* 숙박인원 */
.skin-4 .num-in {
	border: 2px solid #EFEFEF;
	border-radius: 25px;
	height: 42px;
	width: 110px;
	float: left;
	position: relative;
	margin: 0px 125px 0px 0px;
}

.skin-4 .num-in	span {
	width: 40px;
	display: block;
	height: 40px;
	float: left;
	position: relative;
}

.skin-4 .num-in span:before, .skin-4 .num-in span:after {
	content: '';
	position: absolute;
	background-color: #667780;
	height: 2px;
	width: 10px;
	top: 50%;
	left: 50%;
	margin-top: -1px;
	margin-left: -5px;
}

.skin-4 .num-in span.plus:after {
	transform: rotate(90deg);
}

.skin-4 .num-in input {
	float: left;
	width: 20%;
	height: 40px;
	border: none;
	text-align: center;
}

.num-block skin-4 {
	width: 200px;
	height: 50px;
}

#ti {
	float: right;
	background-color: #EFEFEF;
	border-radius: 50px;
	border-style: none;
	color: #403e3f;
	cursor: pointer;
	width: 100px;
	height: 25px;
	right: 30px;
	position: relative;
	font-weight: bold;
}

#recycle_result_amt {
	display: block;
	width: 200px;
	height: 20px;
	position: relative;
	top: 10px;
}

#btbt {
	position: relative;
	font-size: 16px;
	display: inline-block;
	width: 100px;
	height: 30px;
	background-color: #7f9b75;
	color: white;
	border-radius: 5px;
	border: 0px;
	top: 15px;
	left:540px;
	margin-left: 40px;
	cursor: pointer;
}
</style>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
/*on/off버튼*/
$(document).ready(function () {
	  //   Hide the border by commenting out the variable below
	  var $on = "section";
	  $($on).css({
	    background: "none",
	    border: "none",
	    "box-shadow": "none"
	  });
	});
	
/*이미지첨부*/
function setThumbnail(event){
	var reader = new FileReader();
	
	reader.onload = function(event){
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.setAttribute("class", "col-lg-6");
		document.querySelector("div#image_container").appendChild(img);
	};
	
	reader.readAsDataURL(event.target.files[0]);
}

function setDetailImage(event){
	for(var image of event.target.files){
		var reader = new FileReader();
		
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("class", "col-lg-6");
			document.querySelector("div#images_container").appendChild(img);
		};
		
		console.log(image);
		reader.readAsDataURL(image);
	}
}

/*증감버튼*/
$(document).ready(function () {
	  $(".num-in span").click(function () {
	    var $input = $(this).parents(".num-block").find("input.in-num");
	    if ($(this).hasClass("minus")) {
	      var count = parseFloat($input.val()) - 1;
	      count = count < 1 ? 1 : count;
	      if (count < 2) {
	        $(this).addClass("dis");
	      } else {
	        $(this).removeClass("dis");
	      }
	      $input.val(count);
	    } else {
	      var count = parseFloat($input.val()) + 1;
	      $input.val(count);
	      if (count > 1) {
	        $(this).parents(".num-block").find(".minus").removeClass("dis");
	      }
	    }

	    $input.change();
	    return false;
	  });
	});
	
/*요금설정*/
 function inputNumberFormat(obj) {
    obj.value = comma(uncomma(obj.value));
}

function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="bigbox">
		<div class="box1">상품 등록</div>

		<br> <br>

		<div class="box2">
			<ul>
				<li class="inf">&rtrif;숙소 이름 <input id="nam" type="text"
					placeholder="숙소이름을 입력해주세요.">
				<li class="inf">&rtrif;숙소 위치 <!-- 검색API -->
				<li class="inf">&rtrif;숙소 상세설명 <input id="nam2" type="text"
					placeholder="숙소상세설명을 입력해주세요.">
				<li class="inf">&rtrif;숙소 이용규칙
					<div class="cho">
						반려동물 동반 가능
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None1" id="slideThree1"
									name="check1" checked /> <label for="slideThree1"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						조리 및 취사 가능
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None2" id="slideThree2"
									name="check2" /> <label for="slideThree2"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						흡연 가능
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None3" id="slideThree3"
									name="check3" /> <label for="slideThree3"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						행사 & 파티 가능
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None4" id="slideThree4"
									name="check4" /> <label for="slideThree4"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						픽업 가능
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None5" id="slideThree5"
									name="check5" /> <label for="slideThree5"></label>
							</div>
						</div>
					</div>
				<li class="inf">&rtrif;숙소 상세정보
					<form name="frmName" method="post" enctype="multipart/form-data"
						action="viewPage.jsp">
						<div class="form-group">
							<input class="form-control form-control-user" type="file"
								name="product_image" id="product_image"
								onchange="setThumbnail(event);">
						</div>
						<div id="image_container"></div>

						<div class="form-group">
							<input class="form-control form-control-user" type="file"
								multiple="multiple" name="product_detail_image"
								id="product_detail_image" onchange="setDetailImage(event);">
						</div>
						<div id="images_container"></div>
						<div class="form-group">
							<input class="form-control form-control-user" type="file"
								multiple="multiple" name="product_detail_image"
								id="product_detail_image" onchange="setDetailImage(event);">
						</div>
						<div id="images_container"></div>
						<div class="form-group">
							<input class="form-control form-control-user" type="file"
								multiple="multiple" name="product_detail_image"
								id="product_detail_image" onchange="setDetailImage(event);">
						</div>
						<div id="images_container"></div>
						<input id="sub" type="submit" value="이미지 파일 첨부하기">
					</form> <br>
				<li class="inf">&rtrif;공간 설명
					<div class="cho">
						건조기
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None6" id="slideThree6"
									name="check6" checked /> <label for="slideThree6"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						세탁기
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None7" id="slideThree7"
									name="check7" /> <label for="slideThree7"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						엘레베이터
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None8" id="slideThree8"
									name="check8" /> <label for="slideThree8"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						주차장
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None9" id="slideThree9"
									name="check9" /> <label for="slideThree9"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						바베큐
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None10" id="slideThree10"
									name="check10" /> <label for="slideThree10"></label>
							</div>
						</div>
					</div>
					<div class="cho">
						수영장
						<div class="on">
							<div class="slideThree">
								<input type="checkbox" value="None11" id="slideThree11"
									name="check11" /> <label for="slideThree11"></label>
							</div>
						</div>
					</div>
				</li>
			</ul>
			<br>
			<div class="num">
				<ul>
					<li class="inf2">&rtrif;침대개수
						<div class="num-block skin-2">
							<div class="num-in">
								<span class="minus dis"></span> <input type="text"
									class="in-num" value="0" readonly=""> <span
									class="plus"></span>
							</div>
						</div>
					<li class="inf2">&rtrif;침대유형
						<div class="num-block skin-2">
							<div class="num-in">
								<span class="minus dis"></span> <input type="text"
									class="in-num" value="0" readonly=""> <span
									class="plus"></span>
							</div>
						</div>
					<li class="inf2">&rtrif;욕실 개수
						<div class="num-block skin-2">
							<div class="num-in">
								<span class="minus dis"></span> <input type="text"
									class="in-num" value="0" readonly=""> <span
									class="plus"></span>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<br>
			<ul>
				<li class="inf3">&rtrif;숙박 기간
					<div class="num-block skin-3">
						<div class="num-in">
							<span class="minus dis"></span> <input type="text" class="in-num"
								value="0" readonly=""> <span class="plus"></span>
						</div>
					</div>
					<div class="num-block skin-3">
						<div class="num-in">
							<span class="minus dis"></span> <input type="text" class="in-num"
								value="0" readonly=""> <span class="plus"></span>
						</div>
					</div> <br>
				<br>
				</li>
			</ul>
			<ul>
				<li class="inf4">&rtrif;체크인
					<form>
						<p>
							<input type="time">
						</p>
						<p>
							<input id="ti" type="submit" value="체크인">
						</p>
					</form>
				<li class="inf4">&rtrif;체크아웃
					<form>
						<p>
							<input type="time">
						</p>
						<p>
							<input id="ti" type="submit" value="체크아웃">
						</p>
					</form>
				</li>
			</ul>
			<ul>
				<li class="inf5">&rtrif;숙박 인원
					<div class="num-block skin-4">
						<div class="num-in">
							<span class="minus dis"></span> <input type="text" class="in-num"
								value="0" readonly=""> <span class="plus"></span>
						</div>
					</div>
					<div class="num-block skin-4">
						<div class="num-in">
							<span class="minus dis"></span> <input type="text" class="in-num"
								value="0" readonly=""> <span class="plus"></span>
						</div>
					</div>
				<li class="inf5">&rtrif;요금 설정 <input type="text"
					placeholder="요금을 입력하세요." id="recycle_result_amt" value=""
					onkeyup="inputNumberFormat(this)" />


				</li>
			</ul>
		</div>
		<a href="${contextPath}/host/goods/gList.do"><button id="btbt">목록보기</button></a>
		<button id="btbt">등록하기</button>
	</section>
</body>
</html>