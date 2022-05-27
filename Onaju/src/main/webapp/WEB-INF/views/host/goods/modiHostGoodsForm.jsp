<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value= "${pageContext.request.contextPath}"  />
<c:set var="goods" value = "${goodsMap.goods }" />
<c:set var="hostInfoFormList" value = "${goodsMap.hostInfoFormList}" />
<c:set var="imageFileList" value= "${goodsMap.imageFileList }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>

<script type="text/javascript">

f_check = function () {
 	if($(".option_check").is(":checked")){
		$(".option_check").val("Y");
	}else {
		$(".option_check").val("N");
	} 

function fn_modify_goods(room_code, attribute){
	var frm_mod_goods=document.frm_mod_goods;
	var value="";
	if(attribute=='title'){
		value=frm_mod_goods.title.value;
	}else if(attribute=='room_type'){
		value=frm_mod_goods.room_type.value;
	}else if(attribute=='room_number'){
		value=frm_mod_goods.room_number.value;   
	}else if(attribute=='able_checkIn'){
		value=frm_mod_goods.able_checkIn.value;
	}else if(attribute=='able_checkOut'){
		value=frm_mod_goods.able_checkOut.value;
	}else if(attribute=='room_fee'){
		value=frm_mod_goods.room_fee.value;
	}else if(attribute=='room_status'){
		for (var i = 0; frm_mod_goods.room_status.length; i++) {
			if (room_status[i].selected) {
				value = frm_mod_goods.room_status[i].value;
				break;
			}
		}	
	}else if(attribute=='h_code'){
		for (var i = 0; frm_mod_goods.h_code.length; i++) {
			if (frm_mod_goods.h_code[i].selected) {
				value = frm_mod_goods.h_code[i].value;
				break;
			}
		}	
	}else if(attribute=='hostInfo_name'){
		for (var i = 0; frm_mod_goods.hostInfo_name.length; i++) {
			if (frm_mod_goods.hostInfo_name[i].selected) {
				value = frm_mod_goods.hostInfo_name[i].value;
				break;
			}
		}	
	}else if(attribute=='zipcode'){
		for (var i = 0; frm_mod_goods.zipcode.length; i++) {
			if (frm_mod_goods.zipcode[i].selected) {
				value = frm_mod_goods.zipcode[i].value;
				break;
			}
		}
	}else if(attribute=='roadAddress'){
		for (var i = 0; frm_mod_goods.roadAddress.length; i++) {
			if (frm_mod_goods.roadAddress[i].selected) {
				value = frm_mod_goods.roadAddress[i].value;
				break;
			}
		}
	}else if(attribute=='numberAddress'){
		for (var i = 0; frm_mod_goods.numberAddress.length; i++) {
			if (frm_mod_goods.numberAddress[i].selected) {
				value = frm_mod_goods.numberAddress[i].value;
				break;
			}
		}
	}else if(attribute=='restAddress'){
		for (var i = 0; frm_mod_goods.restAddress.length; i++) {
			if (frm_mod_goods.restAddress[i].selected) {
				value = frm_mod_goods.restAddress[i].value;
				break;
			}
		}
	}else if(attribute=='host_type'){
		for (var i = 0; frm_mod_goods.host_type.length; i++) {
			if (frm_mod_goods.host_type[i].selected) {
				value = frm_mod_goods.host_type[i].value;
				break;
			}
		}	
	}else if(attribute=='min_number'){
		value=frm_mod_goods.min_number.value;
	}else if(attribute=='max_number'){
		value=frm_mod_goods.max_number.value;
	}else if(attribute=='bed_type'){
		for (var i = 0; frm_mod_goods.bed_type.length; i++) {
			if (frm_mod_goods.bed_count[i].selected) {
				value = frm_mod_goods.bed_type[i].value;
				break;
			}
		}	
	}else if(attribute=='bed_count'){
		value=frm_mod_goods.bed_count.value;	
	}else if(attribute=='bath_count'){
		value=frm_mod_goods.bath_count.value;	
	}else if(attribute=='tv'){
		 value=frm_mod_goods.tv.checked;    
	}else if(attribute=='kitchen'){
		value=frm_mod_goods.kitchen.checked;
	}else if(attribute=='pickup'){
		value=frm_mod_goods.pickup.checked;
	}else if(attribute=='wifi'){
		value=frm_mod_goods.wifi.checked;
	}else if(attribute=='elevator'){
		value=frm_mod_goods.elevator.checked;
	}else if(attribute=='party_check'){
		value=frm_mod_goods.party_check.checked;
	}else if(attribute=='refrigerator'){
		value=frm_mod_goods.refrigerator.checked;
	}else if(attribute=='barbecue'){
		value=frm_mod_goods.barbecue.checked;
	}else if(attribute=='pet'){
		value=frm_mod_goods.pet.checked;
	}else if(attribute=='hairdryer'){
		value=frm_mod_goods.hairdryer.checked;
	}else if(attribute=='pool'){
		value=frm_mod_goods.pool.checked;
	}else if(attribute=='smoking'){
		value=frm_mod_goods.smoking.checked;
	}else if(attribute=='dryer'){
		value=frm_mod_goods.dryer.checked;
	}else if(attribute=='washer'){
		value=frm_mod_goods.washer.checked;
	}else if(attribute=='parking'){
		value=frm_mod_goods.parking.checked;
	}else if(attribute=='aircon'){
		value=frm_mod_goods.aircon.checked;
	}else if(attribute=='heater'){	
		value=frm_mod_goods.heater.checked;	
	}else if(attribute=='content'){
		value=frm_mod_goods.content.value;
	}
}
	
	console.log(attribute);

	$.ajax({
		type : "post",
		async : false, //false인 경우 동기식으로 처리한다.
		url : "${contextPath}/host/goods/modiHostGoodsInfo.do",
		data : {
			room_code:room_code,
			attribute:attribute,
			value:value
		},
		success : function(data, textStatus) {
			if(data.trim()=='mod_success'){
				alert("객실 정보를 수정했습니다.");
			}else if(data.trim()=='failed'){
				alert("다시 시도해 주세요.");				
		},
		error : function(data, textStatus) {
			alert("에러가 발생했습니다."+data);
		},
		complete : function(data, textStatus) {
			//alert("작업을완료 했습니다");
		}
	}); //end ajax	
}  

</script>
<script>


  function readURL(input,preview) {
	//  alert(preview);
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#'+preview).attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
  }  

  var cnt =1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input  type='file' name='detail_image"+cnt+"' id='detail_image"+cnt+"'  onchange=readURL(this,'previewImage"+cnt+"') />");
	  $("#d_file").append("<img  id='previewImage"+cnt+"'   width=200 height=200  />");
	  $("#d_file").append("<input  type='button' value='추가' style='width:80px; border: 1px solid #464748a6; margin-left: 10px;' onClick=addNewImageFile('detail_image"+cnt+"','${goods.h_code}','${imageFileList[0].room_code}','detail_image')  />");
	  cnt++;
  }
  
  function modifyImageFile(fileId, h_code, room_code, roomImage_NO, room_imageType){
    // alert(fileId);
	  var form = $('#FILE_FORM')[0];
      var formData = new FormData(form);
      formData.append("room_imageName", $('#'+fileId)[0].files[0]);
      formData.append("h_code", h_code);
      formData.append("room_code", room_code);
      formData.append("roomImage_NO", roomImage_NO);
      formData.append("room_imageType", room_imageType);
      
      $.ajax({
        url: '${contextPath}/host/goods/modiHostGoodsImageInfo.do',
        processData: false,
        contentType: false,
        data: formData,
        type: 'POST',
	      success: function(result){
	         alert("이미지를 수정했습니다!");
	       }
      });
  }
  
  
  function addNewImageFile(fileId, h_code, room_code, room_imageType){
	   //  alert(fileId);
		  var form = $('#FILE_FORM')[0];
	      var formData = new FormData(form);
	      formData.append("uploadFile", $('#'+fileId)[0].files[0]);
	      formData.append("h_code", h_code);
	      formData.append("room_code", room_code);
	      formData.append("room_imageType", room_imageType);
	      
	      $.ajax({
	          url: '${contextPath}/host/goods/addNewHostGoodsImage.do',
	                  processData: false,
	                  contentType: false,
	                  data: formData,
	                  type: 'post',
	                  success: function(result){
	                      alert("이미지를 수정했습니다!");
	                  }
	          });
	  } 
  
  function deleteImageFile(room_code,roomImage_NO,room_imageName,trId){
	var tr = document.getElementById(trId);

      	$.ajax({
    		type : "post",
    		async : true, //false인 경우 동기식으로 처리한다.
    		url : "${contextPath}/host/goods/removeHostGoodsImage.do",
    		data: {room_code:room_code,
    			roomImage_NO:roomImage_NO,
    			room_imageName:room_imageName},
    		success : function(data, textStatus) {
    			alert("이미지를 삭제했습니다!!");
                tr.style.display = 'none';
    		},
    		error : function(data, textStatus) {
    			alert("에러가 발생했습니다."+textStatus);
    		},
    		complete : function(data, textStatus) {
    			//alert("작업을완료 했습니다");			
    		}
    	}); //end ajax	
  }	  
  
  
  
  
  function deleteHostGoods(){
		
		if(!confirm("삭제 하시겠습니까?")){
			return false;
		}else{
			location.href="${pageContext.request.contextPath }/host/goods/deleteHostGoods.do?room_code=${goods.room_code}";
		}
	}
  
  
</script>

<style>

*{
	margin:0; padding:0;
	font-size:15px; 
}

/* 테이블쪽 디자인 */
table {
	border-collapse: collapse;
	border-spacing: 0;
} 

section.host_notice {
	width : 900px;
	padding: 0 auto;
	height: 1200px;
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
	margin: 50px 0 50px 0;
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

.board-table .th-num {
	
	/* width: 100px; */
	text-align: center;
}



.board-table th, .board-table td {
	padding: 5px 0 5px 5px;
	border : 1px solid #cbdea6;
}

.board-table tbody td {
	border-top: 1px solid #cbdea6;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #cbdea6;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.noticeBtn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
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

.btn-dark {
	background: #7f9b75;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #cbdea6;
	border-color: #cbdea6;
	color: #fff;
}

.noticeBtn2 {
	width: 108px;
	padding: 0;
	font-weight: 400;
}
.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	margin: 30px 0 30px 30px;
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

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.host_contai {
	width: 750px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}

/* 테이블쪽 디자인 */


ul{list-style:none;}

.tabmenu{ 
	max-width:750px; 
	margin: 0 auto; 
	position:relative; 
}
.tabmenu ul li{
	display:  inline-block;
	width:33.3%; 
	float:left;  
	text-align:center; 
	background :#f9f9f9;
	line-height:40px;
}

.tabmenu input {
	font-size: 15px;
	
	}

.tabmenu .tabSelect{
	display:none;
	}

.tabCon{
	width:750px;
	display:none; 
	text-align:left; 
	padding: 20px;
	position:absolute; 
	left:0; top:40px; 
 	box-sizing: border-box; 
	border : 5px solid #f9f9f9;
}

.tabmenu .tabRoom{
	display:block;
	width:100%; 
	height:40px;
	line-height:40px;
	border: 1px solid #f9f9f9;
	background: #cbdea6;
	color:#403e3f;
  
}
.tabmenu .tabSelect:checked ~ .tabRoom{
	background:#7f9b75;
	color: #fff;
	border: 1px solid #fff;
}
.tabmenu .tabSelect:checked ~ .tabCon{
	display:block;
}

.tabmenu .roomSelect {
	border: 1px solid #7f9b75;
    font-size: 15px;
    height: 28px;
    padding: 1px;
    width: 160px;
    float: left;
    text-align: left;

}
.tabmenu #content {
	min-height:150px;
	font-size:15px;
	
}

.option_check {
	background: #fff;
    color:#403e3f;
    width: 15px;
    margin-right: 10px;

}


.noticeBtn2Box {
	float: right;
}


.image_button {
	width:70px;
	}




#kingpreview {
	border:0px;
	width:400px;
	height:200px;
}


.th-date_detail{
	color: #403e3f;
	text-align: center;
	
}

.imageFile {
	width:100%
	}
	

.file_modi_box{
	display: inline-block;
	width:50%;
	margin-left: 10px;
}

.file_modi{
	width:80px;
	border: 1px solid #464748a6;
    margin-right: 10px;
	
}
	
</style>

</head>
<body>
<form name="frm_mod_goods" action="${contextPath}/host/goods/modiHostGoodsInfo.do?room_code=${goods.room_code}" method="post"  >
<section class="host_notice">
					<div class="host-title">
						<div class="host_contai">
							<h3>객실 등록 수정</h3>
						</div>
					</div>
	<input type="hidden" name="h_id" value="${hostInfo.h_id }">
		<div class="tabmenu">
			<ul>
			
				<li id="tab1" class="btnCon">
					<input type="radio" class="tabSelect" checked name="tabmenu" id="tabmenu1"> 
					<label for="tabmenu1" class="tabRoom">객실 기본 정보</label>
					<div class="tabCon">
						<table class="board-table">
						<colgroup>
			            	<col width="25%"/>
							<col width="25%"/>
							<col width="25%"/>
							<col width="25%"/>
						</colgroup>
						<thead>
							<tr>
								<th class="th-date">제목</th>
								<td class="td-date-writer" colspan="3"><input type="text"  name="title" id="title" value="${goods.title}" ></td>
							</tr>
							<tr>
								<th class="th-date">개실 타입</th>
								<td class="td-date-writer"><input type="text" name="room_type" id="#" value="${goods.room_type}"></td>
								<th class="th-date">객실 번호</th>
								<td class="td-date-writer"><input type="number" name="room_number" id="#" value="${goods.room_number}"></td>
							</tr>
							
							<tr>
								<th class="th-date">기본 입실 시간</th>
								<td class="td-date-writer"><input type="time" value="15:00" name="able_checkIn" id="#" value="${goods.able_checkIn}"></td>
								<!-- 다민시 작성 <input type="time" name="able_checkIn" id="#"> -->
								<th class="th-date">기본 퇴실 시간</th>
								<td class="td-date-writer"><input type="time" value="11:00" name="able_checkOut" id="#" value="${goods.able_checkOut}"></td>
							</tr>
							<tr>
								<th class="th-date">객실요금</th>
								<td class="td-date-writer">
									<input type="text" name="room_fee" id="recycle_result_amt" value="${goods.room_fee}" onkeyup="inputNumberFormat(this)" />
								</td>
								<th class="th-date">객실 사용 여부</th>
								<td class="td-date-writer">
									<select	class="roomSelect" name="room_status">
										<option class="roomOption" value="${goods.room_status}">${goods.room_status}</option>
										<option class="roomOption" value="Y">Y</option>
										<option class="roomOption" value="N">N</option>
									</select>
								</td>
							</tr>
						</thead>
					</table>
					<table class="board-table">
						<colgroup>
			            	<col width="25%"/>
							<col width="auto"/>
						</colgroup>
						<thead>
							<tr>
								<th class="th-date">사업장 일련번호</th>
								<td class="td-date-writer" >
									<select class="roomSelect" name="h_code">
											<option class="roomOption" selected value="${goods.h_code}">${goods.h_code}</option>
										<c:forEach var="list" items="${hostInfoFormList }">
											<option class="roomOption" value="${list.h_code}">${list.h_code}</option>
									    </c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th class="th-date">사업장 상호명</th>
								<td class="td-date-writer" >
									<select class="roomSelect" > 
											<option class="roomOption" selected value="${goods.hostInfo_name}">${goods.hostInfo_name}</option>
										<c:forEach var="list" items="${hostInfoFormList }">
											<option class="roomOption" value="${list.hostInfo_name}">${list.hostInfo_name}</option>
									    </c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th class="th-date">우편 번호</th>
								<td class="td-date-writer" >
									<select class="roomSelect" > 
										<option class="roomOption" selected value="${goods.zipcode}">${goods.zipcode}</option>
										<c:forEach var="list" items="${hostInfoFormList }">
											<option class="roomOption" value="${list.zipcode}">${list.zipcode}</option>
									    </c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th class="th-date">도로명 주소</th>
								<td class="td-date-writer" >
									<select class="roomSelect" > 
										<option class="roomOption" selected value="${goods.roadAddress}">${goods.roadAddress}</option>
										<c:forEach var="list" items="${hostInfoFormList }">
											<option class="roomOption" value="${list.roadAddress}">${list.roadAddress}</option>
									    </c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th class="th-date">지번 주소</th>
								<td class="td-date-writer" >
									<select class="roomSelect" > 
										<option class="roomOption" selected value="${goods.numberAddress}">${goods.numberAddress}</option>
										<c:forEach var="list" items="${hostInfoFormList }">
											<option class="roomOption" value="${list.numberAddress}">${list.numberAddress}</option>
									    </c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th class="th-date">나머지 주소</th>
								<td class="td-date-writer">
									<select class="roomSelect" >
										<option class="roomOption" selected value="${goods.restAddress}">${goods.restAddress}</option>
										<c:forEach var="list" items="${hostInfoFormList }">
											<option class="roomOption" value="${list.restAddress}">${list.restAddress}</option>
									    </c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th class="th-date">사업장 타입</th>
								<td class="td-date-writer">
									<select class="roomSelect" >
										<option class="roomOption" selected value="${goods.host_type}">${goods.host_type}</option>
										<c:forEach var="list" items="${hostInfoFormList }">
											<option class="roomOption" value="${list.host_type}">${list.host_type}</option>
									    </c:forEach>
									</select>											
								</td>
							</tr>
						</thead>
					</table>	
					<div class="noticeBtn2Box">
						<button type="submit" class="noticeBtn2 btn-dark2" onClick="fn_modify_goods(this.form)">수정</button>
						<button type="button" class="noticeBtn2 btn-dark2" id="modityHost" onClick="deleteHostGoods()">삭제</button>
						
					</div>
				</div>				
				</li>
				<li id="tab2" class="btnCon">
					<input type="radio" class="tabSelect" name="tabmenu" id="tabmenu2"> 
					<label for="tabmenu2"  class="tabRoom">객실 상세 정보</label>
					<div class="tabCon">
						<table class="board-table">
							<colgroup>
				            	<col width="25%"/>
								<col width="25%"/>
								<col width="25%"/>
								<col width="25%"/>
							</colgroup>
							<thead>
								<tr>
									<th class="th-title">최소 인원</th>
									<td class="notice_title"><input type="text" name="min_number" id="#" value="${goods.min_number}"></td>
									<th class="th-title">최대 인원</th>
									<td class="notice_title"><input type="text" name="max_number" id="#" value="${goods.max_number}"></td>
								</tr>
								<tr>
									<th class="th-title">침대 사이즈</th>
									<td class="notice_title">
										<select	class="roomSelect" name="bed_type" id="#">
											<option class="roomOption" value="${goods.bed_type}">${goods.bed_type}</option>
											<option class="roomOption" value="싱글">싱글</option>
											<option class="roomOption" value="더블">더블</option>
											<option class="roomOption" value="퀸">퀸</option>
											<option class="roomOption" value="킹">킹</option>
											<option class="roomOption" value="라지킹">라지킹</option>
										</select>
									</td>
									<th class="th-title">침대 개수</th>
									<td class="notice_title"><input type="text" name="bed_count" id="#" value="${goods.bed_count}"></td>
								</tr>
								<tr>
									<th class="th-title">욕실 개수</th>
									<td class="notice_title"><input type="text" name="bath_count" id="#" value="${goods.bath_count}"></td>
									<th class="th-title"></th>
									<td class="notice_title"></td>
								</tr>
								<tr>
									<th class="th-title" rowspan="7">옵션 사항</th> 
									<td class="notice_title">	
										<c:choose>
											<c:when test="${goods.tv =='Y'}">
												<label>
													<input type="checkbox" class="option_check"  name="tv" value="Y" onclick="f_check()"checked >
													<input type="hidden" class="option_check" name="tv" value="N"/> 
													 TV
													
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="tv"  value="Y" onclick="f_check()" > 
													<input type="hidden" class="option_check" name="tv"  value="N" checked/> TV
												</label>
											</c:otherwise>
										</c:choose>
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.kitchen =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="kitchen" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="kitchen" value="N"/>주방
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="kitchen" value="Y" onclick="f_check()" >
													<input type="hidden" class="option_check" name="kitchen"  value="N" checked/> 주방
												</label>
											</c:otherwise>
										</c:choose>
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.pickup =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="pickup" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="pickup" value="N"/>픽업 가능 여부
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="pickup" value="Y" onclick="f_check()" > 
													<input type="hidden" class="option_check" name="pickup"  value="N" checked/> 픽업 가능 여부
												</label>
											</c:otherwise>
										</c:choose>
									</td>
								</tr>
								<tr>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.wifi =='Y'}">
												<label>
													<input type="checkbox" class="option_check"  name="wifi" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="wifi" value="N"/>무선 인터넷
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="wifi" value="Y" onclick="f_check()" >
													<input type="hidden" class="option_check" name="wifi" value="N"/> 무선 인터넷
												</label>
											</c:otherwise>
										</c:choose>
									</td>	
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.elevator =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="elevator" value="Y" onclick="f_check()" checked>
													<input type="hidden" class="option_check" name="elevator" value="N"/> 엘레베이터
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="elevator" value="Y" onclick="f_check()" > 
													<input type="hidden" class="option_check" name="elevator" value="N"/> 엘레베이터
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.party_check =='Y'}">
												<label>
													<input type="checkbox" class="option_check"  name="party_check" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="party_check" value="N"/> 파티 가능 여부
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="party_check" value="Y" onclick="f_check()" > 
													<input type="hidden" class="option_check" name="party_check" value="N"/>파티 가능 여부
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
								</tr>	
								<tr>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.refrigerator =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="refrigerator" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="refrigerator" value="N"/>냉장고
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="refrigerator" value="Y" onclick="f_check()"  >
													<input type="hidden" class="option_check" name="refrigerator" value="N"/> 냉장고
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.barbecue =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="barbecue" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="barbecue" value="N"/>바베큐
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="barbecue" value="Y" onclick="f_check()"  >
													<input type="hidden" class="option_check" name="barbecue" value="N"/> 바베큐
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.pet =='Y'}">
												<label>
													<input type="checkbox" class="option_check"  name="pet" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="pet" value="N"/> 반려동물
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="pet" value="Y" onclick="f_check()" > 
													<input type="hidden" class="option_check" name="pet" value="N"/> 반려동물
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
								</tr>
								<tr>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.hairdryer =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="hairdryer" value="Y"  onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="hairdryer" value="N"/>드라이기
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="hairdryer" value="Y"  onclick="f_check()"> 
													<input type="hidden" class="option_check" name="hairdryer" value="N"/>드라이기
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.pool =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="pool" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="pool" value="N"/>수영장
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="pool" value="Y" onclick="f_check()">
													<input type="hidden" class="option_check" name="pool" value="N"/> 수영장
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.smoking =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="smoking" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="smoking" value="N"/>흡연 가능 여부
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="smoking" value="Y" onclick="f_check()" > 
													<input type="hidden" class="option_check" name="smoking" value="N"/>흡연 가능 여부
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
								</tr>
								<tr>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.dryer =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="dryer" value="Y" onclick="f_check()"  checked>
													<input type="hidden" class="option_check" name="dryer" value="N"/> 건조기
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="dryer" value="Y"  onclick="f_check()"> 
													<input type="hidden" class="option_check" name="dryer" value="N"/>건조기
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.washer =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="washer" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="washer" value="N"/>세탁기
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="washer" value="Y" onclick="f_check()"> 
													<input type="hidden" class="option_check" name="washer" value="N"/> 세탁기
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.parking =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="parking" value="Y" onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="parking" value="N"/>주차 가능 여부
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="parking" value="Y" onclick="f_check()"> 
													<input type="hidden" class="option_check" name="parking" value="N"/>주차 가능 여부
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
								</tr>
								<tr>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.aircon =='Y' }">
												<label>
													<input type="checkbox" class="option_check"  name="aircon" value="Y"  onclick="f_check()" checked>
													<input type="hidden" class="option_check" name="aircon" value="N"/> 에어컨
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="aircon" value="Y" onclick="f_check()"> 
													<input type="hidden" class="option_check" name="aircon" value="N"/>에어컨
												</label>
											</c:otherwise>
										</c:choose>	
									</td>
									<td class="notice_title"></td>
									<td class="notice_title"></td>
								</tr>
								<tr>
									<td class="notice_title">
										<c:choose>
											<c:when test="${goods.heater =='Y'}">
												<label>
													<input type="checkbox" class="option_check"  name="heater" value="Y"  onclick="f_check()" checked> 
													<input type="hidden" class="option_check" name="heater" value="N"/>난방
												</label>
											</c:when>
											<c:otherwise>
												<label>
													<input type="checkbox" class="option_check"  name="heater" value="Y" onclick="f_check()"> 
													<input type="hidden" class="option_check" name="heater" value="N"/>난방
												</label>
											</c:otherwise>
										</c:choose>
									</td>
									<td class="notice_title"></td>
									<td class="notice_title"></td>
								</tr>
								<tr>
									<th class="th-date">숙소 설명</th>
									<td class="td-date-writer" colspan="3">
										<textarea name="content" id="content">${goods.content}</textarea> 
									</td>
								</tr>
							</thead>					
						</table>
						<div class="noticeBtn2Box">
							<button type="submit" class="noticeBtn2 btn-dark2" onClick="fn_modify_goods(this.form)">수정</button>
							<button type="submit" class="noticeBtn2 btn-dark2" onClick="deleteImageFile('${goods.room_code}','${goods.roomImage_NO}','${goods.room_imageName}','${itemNum.count-1}')">삭제</button>
						</div>
					</div> 
				</li>
			
				<li id="tab3" class="btnCon">
					<input type="radio" class="tabSelect" name="tabmenu" id="tabmenu3"> 
					<label for="tabmenu3" class="tabRoom">이미지 정보</label>
					 <div class="tabCon">
					 	 <form id="FILE_FORM" method="post" enctype="multipart/form-data" >
							<table class="board-table">
								<colgroup>
							    	<col width="25%" />
							    	<col width="auto" />
								</colgroup>
								<thead>
									<tr>
									<c:forEach var="item" items="${imageFileList }"  varStatus="itemNum">
										<c:choose>
											<c:when test="${item.room_imageType == 'main_image' }">
												<th class="th-date">메인 이미지</th>
													<td class="td-date-writer" colspan="7">
													  <img id="preview${itemNum.count }" width=200 height=200 src="${contextPath}/download.do?room_code=${item.room_code}&fileName=${item.room_imageName}" />
													  	<div class="file_modi_box">
														  	<input type="file" class="imageFile" id="main_image"  name="main_image"  onchange="readURL(this,'preview${itemNum.count}');" />
															<input type="hidden"  name="roomImage_NO" value="${item.roomImage_NO}"  />
														  	<br>
													  		<input  type="button" class="file_modi" value="수정"  onClick="modifyImageFile('main_image','${item.h_code}','${item.room_code}','${item.roomImage_NO}','${item.room_imageType}')"/>
														</div>
													</td>
											</c:when>
				        					<c:otherwise>
								          		 <tr  id="${itemNum.count-1}">
													<td class="th-date_detail" style="color:#403e3f;" >상세 이미지${itemNum.count-1 }</td>
													<td class="td-date-writer" colspan="7">
													   <img  id="preview${itemNum.count }"  width=200 height=200 src="${contextPath}/download.do?room_code=${item.room_code}&fileName=${item.room_imageName}">
													  	<div class="file_modi_box">
														  	<input type="file"  class="imageFile" name="detail_image"  id="detail_image"   onchange="readURL(this,'preview${itemNum.count}');" />
															<input type="hidden"  name="roomImage_NO" value="${item.roomImage_NO }"  />
													  	
														  	<input  type="button" class="file_modi" value="수정"  onClick="modifyImageFile('detail_image','${item.h_code}','${item.room_code}','${item.roomImage_NO}','${item.room_imageType}')"/>
														 	<input  type="button" class="file_modi" value="삭제"  onClick="deleteImageFile('${item.room_code}','${item.roomImage_NO}','${item.room_imageName}','${itemNum.count-1}')"/>
														</div>
													</td>
												</tr>
				         					</c:otherwise>
				       					</c:choose>
				       				</c:forEach>
				       				
				       				 <tr align="center">
								      <td colspan="3">
									      <div id="d_file">
									      </div>
								       </td>
								    </tr>
			       					<tr>
			       						<th class="th-date">이미지 추가하기</th>
		   		  						<td align=center >
		    					 			<input type="button" style="height: 50px;  width: 80%;" value="추가"  onClick="fn_addFile()"  />
		    					 		</td>
		    					 	</tr>
								</thead>
							</table>
						</form>
					</div> 
				</li>
			</ul>
		</div>
</section>
</form>
</body>
</html>