<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
.box1 {width:800px; border:2px solid #cbdea6; border-radius: 15px; padding:10px; margin:auto; font-size:20px; font-weight:bolder; text-align:center; }
.box2 {width:800px; height:100px; border:0px solid #cbdea6; border-radius: 15px; padding:10px; margin:40px 0px 0px 690px;}
.box3 {width:800px; height:100px; border:0px solid #cbdea6; border-radius: 15px; padding:10px; margin:auto;}
.box4 {width:800px; height:700px; border:2px solid #cbdea6; border-radius: 15px; padding:10px; margin:auto;}

#today{
	font-size:20px; 
	font-weight:bolder; 
	text-align:center;
	border:0px;
	background-color:#7f9b75;
	border-radius: 5px;
	width:160px; 
	height:35px;
	color:white;
}

/* 오늘 설정 ON/OFF 버튼 */
.slideThree {
	width: 100px;
	height: 35px;
	background: #efefef;
	margin: 20px auto;
	position: relative;
	border-radius: 50px;
	bottom: 55px;
    left: 350px;
}

.slideThree:after {
	content: "OFF";
	color: #403e3f;
	position: absolute;
	right: 10px;
	z-index: 0;
	font: 15px/35px Arial, sans-serif;
	font-weight: bold;
	text-shadow: 1px 1px 0px rgba(255, 255, 255, 0.15);
}

.slideThree:before {
	content: "ON";
	color: #27ae60;
	position: absolute;
	left: 10px;
	z-index: 0;
	font: 15px/35px Arial, sans-serif;
	font-weight: bold;
}

.slideThree label {
	display: block;
	width: 56px;
    height: 35px;
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

#off{
font-weight:bold;
float:right;
}

</style>
<script type="text/javascript">

$(document).ready(function () {
	  //   Hide the border by commenting out the variable below
	  var $on = "section";
	  $($on).css({
	    background: "none",
	    border: "none",
	    "box-shadow": "none"
	  });
	});
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="box1">
	 숙박 ON /OFF
	</div>

	<div class="box2">
	 	<div id="today">오늘 설정하기</div>
	 	<div class="slideThree">
	      <input type="checkbox" value="None" id="slideThree" name="check" checked />
	      <label for="slideThree"></label>
		</div>
	</div>
	<div class="box3">
		<div id="today">상세 설정하기</div>
		<div id="off">OFF<input type="checkbox" checked></div>
	</div>
	<div class="box4">
		달력자리
	</div>
</body>
</html>