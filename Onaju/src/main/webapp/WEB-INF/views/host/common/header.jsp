<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<meta name="description" content="Colrolib Templates">
<meta name="author" content="Colrolib">
<meta name="keywords" content="Colrolib Templates">

<title>오나주</title>

<style>
#header_center {
	width: 1100px;
	height: 100px
}

.navbar-brand {
	color: black;
}

.nav-link {
	position: relative;
	padding: 10px 0px;
	color: rgb(127, 155, 117);
}

.nav-link:hover {
	z-index: 5000;
	color: white;
}

.nav-link:visited {
	color: rgb(252, 78, 130);
}

.btn-link {
	color: rgb(127, 155, 117);
}

#navbarDropdown {
	width: auto;
	margin-top: 20px;
	height: 40px;
	border: 1px solid rgb(127, 155, 117);
	background-color: white;
	border-radius: 30px;
}

#navbarDropdown:hover {
	width: auto;
	margin-top: 20px;
	height: 40px;
	border: 1px solid rgb(127, 155, 117);
	background-color: rgb(127, 155, 117);
	border-radius: 30px;
	color: white;
}

#main_fixed {
	padding: 15px;
	line-height: 50px;
	display:block;
	text-align: center;
	width: 1100px;
	margin:0 auto;
	height: 100px;
	overflow: hidden;
}


#main_fixed .host_title {
	float: left;
}

#main_fixed .host_title a{ 
	display: inline-block;
	vertical-align: bo
}

#main_fixed .host_title b { 
	font-size: 25px;
    color: #486889;
    display: inline-block;
	
}

#main_fixed .host_title {
	float: left;
}

#main_fixed .host_menu {
	float: right;
	list-style: none;
	margin-top: 15px;
}

#main_fixed .host_menu li{ 
	display: inline-block;
}

#main_fixed .host_menu li a{ 
	display: block;
	font-size: 13px;
	font-weight:bold;
	line-height: 30px;
	padding: 0px 15px;
    color: #537190;
    background:#fff;
    border-radius:20px;
    border:1px solid #537190;
}

#main_fixed .host_menu li a:hover{
	background: #537190;
	color: #fff;

}

/* 
#main_td {
opacity:100%;
	text-align: center;
	float: left;
}

#main_a_life {
z-index:4:
	text-decoration: none;
	font-weight: 570;
	text-align: center;
	opacity: 100%;
	color: rgb(127, 155, 117);
	font-size: 21px;
}

#main_a_host_main {
z-index:4;
	text-decoration: none;
	font-weight: 570;
	text-align: left;
	opacity: 80%;
	color: rgb(47,60,34);
	font-size: 30px;
}

#main_a_host_main:hover {
z-index:4;
	text-decoration: none;
	font-weight: 570;
	text-align: left;
	opacity: 100%;
	color: rgb(47,60,34);
	font-size: 30px;
}

#main_a_life:hover {
	text-decoration: none;
	opacity: 100%;
	font-weight: 600;
	font-size: 21px;
	text-align: center;
		color: rgb(47,60,34);
}

#main_a {
	text-decoration: none;
	color: rgb(178, 178, 178);
	font-weight: 570;
	font-size: 18px;
	text-align: center;
}

#main_a:hover {
	text-decoration: none;
	color: black;
	font-weight: 590;
	font-size: 18px;
	text-align: center;
}

#main_font_i {
	font-family: inherit;
	margin: 0px 2px 0px 2px;
	font-size: 12px;
	font-weight: 550;
} */
</style>

<script type="text/javascript">

function() {
  var w = window;
  if (w.ChannelIO) {
    return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
  }
  var ch = function() {
    ch.c(arguments);
  };
  ch.q = [];
  ch.c = function(args) {
    ch.q.push(args);
  };
  w.ChannelIO = ch;
  function l() {
    if (w.ChannelIOInitialized) {
      return;
    }
    w.ChannelIOInitialized = true;
    var s = document.createElement('script');
    s.type = 'text/javascript';
    s.async = true;
    s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
    s.charset = 'UTF-8';
    var x = document.getElementsByTagName('script')[0];
    x.parentNode.insertBefore(s, x);
  }
  if (document.readyState === 'complete') {
    l();
  } else if (window.attachEvent) {
    window.attachEvent('onload', l);
  } else {
    window.addEventListener('DOMContentLoaded', l, false);
    window.addEventListener('load', l, false);
  }
})();
ChannelIO('boot', {
  "pluginKey": "cacc290a-7e9b-4fcf-b766-74fe3b4a2b91"
});


</script>
</head>

<section id="main_fixed">
	<div align="center" id="">
		<h1 class="host_title">
			<a href="${contextPath}/host/main.do">
				<img src="${contextPath}/resources/image/onajulogo.png" width="80px" height="57px" style="margin-top: 5px;">
			</a>
			<b>호스트 페이지</b>
		</h1>
		<ul class="host_menu">
			<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
								class="fas fa-user fa-fw"></i><c:choose>
									<c:when test="${isLogOn==true and not empty hostInfo }">
										<i id="main_font_i" class=" fa-fw">${hostInfo.h_id}</i>
									</c:when>
									<c:otherwise>
										<i id="main_font_i" class=" fa-fw">로그인</i>

									</c:otherwise>
									</c:choose> </a>

							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdown">

								<c:choose>

									<c:when test="${isLogOn==true and not empty hostInfo}">
										<li><a class="dropdown-item"
											href="${contextPath}/member/logout.do">로그아웃</a></li>
									</c:when>


								</c:choose>



							</ul></li>
			
			<!--  <li>
				<a href="#">로그아웃</a>
			</li>  -->
			<li>
				<a href="${contextPath}/main/main.do">사용자홈</a>
			</li>
		</ul>
		
	<%-- 	<table style="text-align: center" id="header_center">
			<tr>

				<td width="80px" style="text-align: right;" id="main_td"> <!-- Sidebar Toggle--></td>


				<td width="100px"
					style="padding: 13px 0px 0px 0px; margin-left: 10px;" id="main_td"><a
					id="main_a_life" class="  " href="${contextPath}/main/main.do">
				</a> <!-- Sidebar Toggle--></td>
				
				<td width="520px"
					style="padding: 28px 0px 0px 0px; line-height: 18px; text-align:left;" id="main_td">

					<a id="main_a_host_main" class="  " href="${contextPath}/main/main.do">&nbsp;<b>호스트 페이지</b>
				</a>


				
				<td width="100px"
					style="padding: 15px 0px 0px 0px; margin-left: 10px;" id="main_td"><a
					id="main_a" class="  " href="${contextPath}/goods/searchGoods.do"></a>
					<!-- Sidebar Toggle--></td>
				<td width="100px"
					style="padding: 15px 0px 0px 0px; margin-left: 0px;" id="main_td"><a
					id="main_a" class="" href="${contextPath}/goods/searchGoodsMap.do">&nbsp;</a>
					<!-- Sidebar Toggle--></td>
				<!-- Navbar Search-->










				</td>
				<td width="100px"
					style="padding: 0px 0px 0px 0px; margin-left: 5px; line-height: 18px;"
					id="main_td">
					<!-- Navbar-->











					<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4 ">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
								class="fas fa-user fa-fw"></i><img src=""><i
								id="main_font_i" class=" fa-fw">오나주</i></a>

							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdown">


								<c:choose>

									<c:when test="${isLogOn==true}">
										<li><a class="dropdown-item" href="#!">메세지</a></li>
										<li><a class="dropdown-item" href="#!">여행</a></li>
										<li><hr class="dropdown-divider" /></li>
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/mypageMain.do">마이페이지</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/Mypage2.do">즐겨찾기</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/Mypage6.do">호스트신청</a></li>
										<li><hr class="dropdown-divider" /></li>
										<li><a class="dropdown-item"
											href="${contextPath}/customerService/noticeBoard.do">고객센터</a></li>
										<li><a class="dropdown-item" href="#!">로그아웃</a></li>
									</c:when>


									<c:otherwise>
										<li><a class="dropdown-item"
											href="${contextPath}/member/joinForm.do">회원가입</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/member/loginForm.do">로그인</a></li>
										<li><hr class="dropdown-divider" /></li>
										<li><a class="dropdown-item"
											href="${contextPath}/mypage/Mypage6.do">호스트 신청</a></li>
										<li><a class="dropdown-item"
											href="${contextPath}/customerService/noticeBoard.do">고객센터</a></li>
										<li><a class="dropdown-item" href="#">도움말</a></li>

									</c:otherwise>






								</c:choose>










							</ul></li>
					</ul>











				</td>


			</tr>

		</table> --%>

	</div>

	<!-- 	</nav> -->











</section>





</html>

