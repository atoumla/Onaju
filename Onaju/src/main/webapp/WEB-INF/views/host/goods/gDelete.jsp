<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.box1 {width:800px; border:2px solid #cbdea6; border-radius: 15px; padding:10px; margin:auto; font-size:20px; font-weight:bolder; text-align:center; }

.tg  {position: relative;
	margin : auto;
    width :800px;margin:auto; border-collapse:collapse;border-spacing:0; color:#403e3f;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:20px 20px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:20px 20px;word-break:normal;}
.tg .tg-4twm{background-color:#cbdea6;border-color:#cbdea6;font-family:Arial, Helvetica, sans-serif !important;font-weight:bold;
  text-align:center;vertical-align:middle}
.tg .tg-5hxx{border-color:#cbdea6;text-align:center;vertical-align:middle}

#btbt{
	position: relative;
    font-size: 16px;
    display: inline-block;
    width: 150px;
    height: 35px;
    background-color: #7f9b75;
    color: white;
    border-radius: 5px;
    border: 0px;
    top: 15px;
    left: 59%;
    margin-left: 40px;
    cursor: pointer;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="box1">
 상품 삭제
</div>
<br><br><br>
<table class="tg">
<thead>
  <tr>
    <th class="tg-4twm">숙소이름</th>
    <th class="tg-4twm">체크인 / 체크아웃</th>
    <th class="tg-4twm">침대개수</th>
    <th class="tg-4twm">침대유형</th>
    <th class="tg-4twm">욕실개수</th>
    <th class="tg-4twm">숙소이용규칙</th>
    <th class="tg-4twm">체크</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-5hxx">민들레방</td>
    <td class="tg-5hxx">체크인 AM14:00<br>체크아웃 PM12:00</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">퀸</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">반려동물 동반 가능</td>
    <td class="tg-5hxx"><input type="checkbox" value="cho"></td>
  </tr>
  <tr>
    <td class="tg-5hxx">민들레방</td>
    <td class="tg-5hxx">체크인 AM14:00<br>체크아웃 PM12:00</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">퀸</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">반려동물 동반 가능</td>
    <td class="tg-5hxx"><input type="checkbox" value="cho"></td>
  </tr>
  <tr>
    <td class="tg-5hxx">민들레방</td>
    <td class="tg-5hxx">체크인 AM14:00<br>체크아웃 PM12:00</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">퀸</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">반려동물 동반 가능</td>
    <td class="tg-5hxx"><input type="checkbox" value="cho"></td>
  </tr>
  <tr>
    <td class="tg-5hxx">민들레방</td>
    <td class="tg-5hxx">체크인 AM14:00<br>체크아웃 PM12:00</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">퀸</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">반려동물 동반 가능</td>
    <td class="tg-5hxx"><input type="checkbox" value="cho"></td>
  </tr>
  <tr>
    <td class="tg-5hxx">민들레방</td>
    <td class="tg-5hxx">체크인 AM14:00<br>체크아웃 PM12:00</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">퀸</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">반려동물 동반 가능</td>
    <td class="tg-5hxx"><input type="checkbox" value="cho"></td>
  </tr>
  <tr>
    <td class="tg-5hxx">민들레방</td>
    <td class="tg-5hxx">체크인 AM14:00<br>체크아웃 PM12:00</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">퀸</td>
    <td class="tg-5hxx">2</td>
    <td class="tg-5hxx">반려동물 동반 가능</td>
    <td class="tg-5hxx"><input type="checkbox" value="cho"></td>
  </tr>
</tbody>
</table>
<a href="${contextPath}/webapp/goods4.jsp"><button id="btbt">선택상품 삭제하기</button></a>
</body>
</html>