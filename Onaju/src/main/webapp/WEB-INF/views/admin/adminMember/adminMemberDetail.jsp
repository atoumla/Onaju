<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.mem-item1{
	width: 1140px; 
	height: 50px; 
	display:flex; 
	align-items: center;
}
.mem-item2{
	border-radius: 5px;
}
.mem-item1 div {
	margin-left: 30px;
}
.mem-item2-chil{
	display: flex;
}
.mem-item2-chil-1{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
	border-bottom: none;
}
.mem-item2-chil-2{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-3{
	width: 940px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-4{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
}
.mem-item2-chil-5{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 	
}
.mem-item2-chil-1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-2 div{
	margin-left: 20px;
}
.mem-item2-chil-3 div{
	margin-left: 20px;
}
.mem-item2-chil-4 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-5 div{
	margin-left: 20px;
}
.mem-item2-img{
	width: 150px;
	height: 200px;
}
.mem-item5{
	width: 1140px;
	display: flex;
	justify-content: center;
	margin: 40px 0 40px 0;
}
.mem-item5 div{
	margin: 0px 10px 0px 10px;
}
.a1{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: none; 
	text-decoration: none;
	background: #000033;
	color: #ffffff;	
}
.a2{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: none; 
	text-decoration: none;
	background: #ff3333;
	color: #ffffff;	
}
</style>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>????????????</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>?????????</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_id }</div></div>
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>****************</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>??????</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_name }</div></div>
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_birth_y }???${memberVO.u_birth_m }???${memberVO.u_birth_d }???</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>??????</div></div>
				<c:choose>
					<c:when test="${memberVO.u_gender == 'm' || memberVO.u_gender == 'M'}">
						<div class="mem-item2-chil-2"><div>??????</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-2"><div>??????</div></div>
					</c:otherwise>
				</c:choose>
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_phone }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>??????</div></div>
				<div class="mem-item2-chil-3"><div>${memberVO.zipcode }</div><div>${memberVO.roadAddress }${memberVO.restAddress }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>?????????</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_point }</div></div>
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_grade }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>?????????</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.proposer }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-2"><div>${memberVO.u_service_01 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>?????????</div></div>
				<div class="mem-item2-chil-5"><div><fmt:formatDate value="${memberVO.joinDate }" type="both" dateStyle="long" /></div></div>
				<div class="mem-item2-chil-4"><div>?????? ??????</div></div>
				<c:choose>
					<c:when test="${memberVO.del_yn == 'y' || memberVO.del_yn == 'Y'}">
						<div class="mem-item2-chil-5"><div>??????</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-5"><div>????????????</div></div>
					</c:otherwise>
				</c:choose>
			</div>		
		</div>
		<div class="mem-item1"><div><h2>?????? ??????</h2></div></div>
		<div class="mem-item1"><div><h2>?????? ??????</h2></div></div>
		
		<div class="mem-item5">
			<div><a class="a1" href="${contextPath }/admin/memberModify.do?u_id=${memberVO.u_id}">????????????</a></div>
			<div><a class="a2" href="${contextPath }/admin/memberList.do">????????????</a></div></div>	
	</section>
</body>
</html>