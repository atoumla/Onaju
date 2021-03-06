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
.memberList-row{
	display: flex;
}
.memberList-row2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.memberList-row-col1{
	width: 200px; 
	height: 50px; 
	border: 1px soled #000033;
	border-bottom: 1px solid #ffffff; 
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.memberList-row-col4{
	width: 200px; 
	height: 50px; 
	border: 1px soled #000033;
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.memberList-row-col2{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.memberList-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
	border-bottom: none;
}
.memberList-row-col1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
}
.memberList-row-col2 div{
	margin-left: 20px;
}
.memberList-row-col3 div{
	margin-left: 20px;
	color: #4D4D4D;
}
.memberList-row-col4 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
}
.memberList-row-col2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.memberList-row-col2 div select{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.memberList-row-col3 div input{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.styled-table{
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0 0.15); 
	width: 100%;
}
.styled-table thead tr{
	background-color: #000033;
	color: #ffffff;
	text-align: left;
}
.styled-table thead tr td{
	/* border: 1px solid #ffffff; */
	font-size: 14px;
}
.styled-table th, .styled-table td {
	padding: 12px 15px;
}
.styled-table tbody tr{
	border-bottom: 1px solid #dddddd;
	font-size: 13px;
}
.styled-table tbody tr:hover{
	background-color: #99CCFF;
}
.styled-table tbody tr:nth-of-type(even){
	background-color: #f3f3f3;
}
.styled-table tbody tr:nth-of-type(even):hover{
	background-color: #99CCFF;
}
.styled-table tbody tr:nth-of-type{
	border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row{
	font-weight: bold;
	color: #009879;
}
.memberList-row2 div input{
	width: 100px; 
	height: 40px; 
	border-radius: 5px; 
	border: none; 
	background-color: #ff3333; 
	color: white;
	cursor: pointer;
}
.memberList-row-col3 div button{
	width: 75px;
	height: 30px;
	border-radius: 15px; 
	border: none;
	background-color: #f6f6f6; 
	color: #666666;
	margin: 0px 5px 0px 5px;
	cursor: pointer;
}
</style>
</head>
<body>
	<section>
		<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
			<article>
				<h3 class="mt-4"><strong>?????? ??????</strong></h3>
			</article>
		</div>
	</section>
	<form>
		<div>
			<div class="memberList-row">
				<div class="memberList-row-col1"><div>????????????</div></div>
				<div class="memberList-row-col3"><div>????????????&emsp;<input type="date">&emsp;????????????&emsp;<input type="date">&emsp;<button>??????</button><button>??????</button><button>1??????</button><button>????????????</button></div></div>
			</div>
			<div class="memberList-row">
				<div class="memberList-row-col4"><div>??????</div></div>
				<div class="memberList-row-col2">
					<div>
						<select name="u_gender" required="required">
							<option value="">?????? ??????</option>
							<option value="?????????">????????????</option>
							<option value="??????">??????</option>
						</select>
					</div>
				</div>
				<div class="memberList-row-col4"><div>?????? ?????????</div></div>
				<div class="memberList-row-col2"><div><input type="search"></div></div>
			</div>
			<div class="memberList-row2"><div><input type="submit" value="??????"></div></div>
		</div>
	</form>

	<div align="right">
		<div>??????????????????</div>
	</div>

	
	<section>
		<table class="styled-table">
  			<thead>
  				<tr>
     				<td >NO</td>
     				<td >?????????</td>  
     				<td >??????</td>            
     				<td >?????????</td>
     				<td >?????????</td>
     				<td >????????????</td>
     				<td >????????????</td>
     				<td >??????</td>
     				<td >??????</td>
  				</tr>
  			</thead>
			<c:choose>
  				<c:when test="${empty membersList}" >
  					<tbody>
    					<tr height="10">
      						<td colspan="9">
        						<p align="center">
           							<b><span style="font-size:9pt;">????????? ?????? ????????????.</span></b>
        						</p>
      						</td>  
    					</tr>
    				</tbody>
  				</c:when>
				<c:when test="${!empty membersList}" >
    				<c:forEach  var="member" items="${membersList }" varStatus="membersNum" >	
     						<tr style="cursor: pointer;" onclick="location.href='${contextPath}/admin/memberDetail.do?u_id=${member.u_id}'" >	
								<td width="6%">${membersNum.count}</td>
								<td width="8%">${member.u_id }</td>
								<td width="8%">${member.u_name }</td>
								<td width="10%"><fmt:formatDate value="${member.joinDate}" pattern="yyyy???MM???dd???" /></td>
								<td  width="8%">${member.u_email1 }${member.u_email2 }</td>   
								<td  width="8%">${member.u_grade}</td>   
								<td  width="8%">${member.u_phone }</td>   
								<td  width="8%">${member.roadAddress }</td>   
								<td  width="8%">${member.del_yn }</td> 	  
							</tr>
    				</c:forEach>
				</c:when>
			</c:choose>
		</table>
	</section>
	<div>
		<c:forEach var="i" begin="1" end="${totalPage }">
			<a href="${contextPath }/admin/memberList.do?viewPage=${i}">${i }</a>
		</c:forEach>
	</div>
</body>
</html>