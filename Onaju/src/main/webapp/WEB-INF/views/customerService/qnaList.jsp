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
<title>고객센터</title>

<style>


table {
  border-collapse: collapse;
  border-spacing: 0;
}
.one-on-one-notice {
  /* padding: 80px 0; */
  width: 800px;
  /* margin: 0 auto; */
  position: inherit;
  display: inline-block;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
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
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn_0 {
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

.btn_0-dark {
  background: #FC4E82;
  color: #fff;
}

.btn_0-dark:hover, .btn_0-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn_0-dark {
  background: #FC4E82;
  color: #fff;
}

.btn_0-dark:hover, .btn_0-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.one-on-one-container {
  width: 800px;
  /* margin: 0 auto; */
  position: relative;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}



버튼 css 수정할 것
.btn42 {
  width: 108px;
  background: #FC4E82;
  color: #fff;  
  font-size: 15px;
  font-weight: 400px;
  text-align: center;
  border: 1px solid transparent;
  float:right;
}
.customer-help-sidebar {
        width: 300px;
        height: 100%;
        position: sticky;
        text-align: center;
        padding-top: 5%;
        float: left;
        display: inline-block;
      }
.customer-notice {
        width: 200px;
        height: 80px;
        display: inline-block;
      }
.customer-help-side-button {
        color: rgb(252,78,130);
        font-weight: 600;
        box-sizing: border-box;
        text-align: center;
        font-size: 15px;
        padding: 14px 40px;
        background-color: white;
        border-radius: 10px;
        border: 1px solid rgb(252,78,130);
        width: 200px;
      }
.customer-QnA {
        width: 200px;
        height: 80px;
        display: inline-block;
      }
 .hb_section_total {
        width: 1100px;
        height: 100%;
      }

</style>
</head>
<body>
<section class="hb_section_total">
	<div class="customer-help-sidebar">
          <div class="customer-notice">
            <a href="${contextPath }/customerService/noticeBoard.do"
              ><button class="customer-help-side-button">공지사항</button></a
            >
          </div>
          <div class="customer-QnA">
            <a href="${contextPath }/customerService/Question.do"
              ><button class="customer-help-side-button">
                자주 묻는 질문
              </button></a
            >
          </div>
          <div class="customer-one-on-one">
            <a href="${contextPath }/customerService/qnaList.do" 
              ><button class="customer-help-side-button">1:1 문의</button></a
            >
          </div>
        </div>
<section class="one-on-one-notice">
  <div class="page-title">
        <div class="one-on-one-container">
            <h3>1:1 문의</h3>
        </div>
    </div>

    <!-- board seach area -->
    <div id="board-search">
        <div class="one-on-one-container">
            <div class="search-window">
                <form action="">
                    <div class="search-wrap">
                        <label for="search" class="blind">문의 내용 검색</label>
                        <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
                        <button type="submit" class="btn_0 btn_0-dark">검색</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
   
  <!-- board list area -->
    <div id="board-list">
        <div class="one-on-one-container">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-title">제목</th>
                    <th scope="col" class="th-title">작성자</th>
                    <th scope="col" class="th-date">등록일</th>
                </tr>
                </thead>
                <tbody>
						<c:choose>
							<c:when test="${empty articlesList}">
								<tr>
									<td colspan= "4">
										<p>
											<b><span>등록된 글이 없습니다.</span></b>
										</p>
									</td>
								</tr>
							</c:when>
							<c:when test="${empty articlesList}">
								<c:forEach var="article" items="${articlesList}"
									varStatus="articleNum">
									<tr>
										<td>${articleNum}</td>
										<td><span></span> <c:choose>
												<c:when test='${article.level>1}'>
													<c:forEach begin="1" end="${article.level}" step="1">
														<span></span>
													</c:forEach>
													<span>답변</span>
													<a class='cls1'
														href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
												</c:when>
												<c:otherwise>
													<a class='cls1'
														href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
												</c:otherwise>
											</c:choose></td>
										<td>${article.id}</td>
										<td><tmt:formatDate value="${article.writeDate}" /></td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
            </table>
        </div>
        <div style="width: 800px; height: 40px; display: inline-block;">
			
				<button type="button" style="width:100px; height: 35px; background-color: rgb(252,78,130); color: white; border-radius: 10px; float: right;" onclick="location.href='${contextPath}/customerService/qnaForm.do'">글쓰기</button>
			
		</div>
    </div>
	</section>
	</section>
</body>
</html>