<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8");%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>고객센터</title>

    <style>
      .hb_section_total {
        width: 1100px;
        height: 100%;
      }
      .customer-help-box {
        width: 1100px;
        height: 100%;
        display: flex;
      }
      .customer-help-sidebar {
        width: 300px;
        height: 100%;
        position: sticky;
        text-align: center;
        padding-top: 5%;
      }
      .customer-notice {
        width: 200px;
        height: 80px;
        display: inline-block;
      }
      .customer-one-on-one {
        width: 200px;
        height: 80px;
        display: inline-block;
      }
      .customer-QnA {
        width: 200px;
        height: 80px;
        display: inline-block;
      }
      .customer-help-notice {
        width: 800px;
        height: 100%;
      }

      .customer-help-borderline-box {
        width: 1100px;
        height: 65px;
      }
      .customer-notice-detail {
        width: 800px;
        height: 100%;
        text-align: center;
      }
      .customer-notice-board-table {
        width: 700px;
        margin: 0 auto;
        position: relative;
      }
      .customer-notice-board-table {
        font-size: 13px;
        width: 100%;
        border-top: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
      }
      .customer-notice-board-table a {
        color: #333;
        display: inline-block;
        line-height: 1.4;
        word-break: break-all;
        vertical-align: middle;
      }
      .customer-notice-board-table th {
        text-align: center;
      }
      .customer-notice-board-table .th-num {
        width: 20%;
        text-align: center;
      }
      .customer-notice-board-table .th-date {
        width: 20%;
      }
      .board-col-box {
        text-align: center;
      }
      .customer-help-searchbar {
        width: 800px;
        float: right;
        margin-bottom: 10px;
      }
      a {
        text-decoration: none;
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
      .one-on-one-container {
  width: 800px;
  /* margin: 0 auto; */
  position: relative;
  margin-bottom: 60px;
}
    </style>
  </head>
  <body>
    <section class="hb_section_total">
     
      <div class="customer-help-box">
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
        <div class="customer-help-notice">
          <div>
            <div class="one-on-one-container">
            <h3>공지사항</h3>
        </div>
          </div>
          <div>
            <form action="">
              <div style="display: flex;" class="customer-help-searchbar">
                <input      
                  type="text"
                  name="searchText"
                  placeholder="검색어를 입력해주세요."
                  class="main_input"
                  style="display: right;"
                />
                <button
                  type="submit"
                  style="
                    height: 35px;
                    width: 100px;
                    color: white;
                    background-color: rgb(252,78,130);
                    border-radius: 10px;
                    border: 1px solid #f305ab;
                    float: right;
                  "
                  value="검색"
                >
                  검색
                </button>
              </div>
            </form>
          </div>
          <div>
            <div class="customer-notice-detail">
              <table class="customer-notice-board-table">
                <thead>
                  <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-title">제목</th>
                    <th scope="col" class="th-date">등록일</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="board-col-box">3</td>
                    <th>
                      <a href="#!"
                        >[공지사항] 개인정보 처리방침 변경안내처리방침</a
                      >
                    </th>
                    <td class="board-col-box">2017.07.13</td>
                  </tr>

                  <tr>
                    <td class="board-col-box">2</td>
                    <th>
                      <a href="#!"
                        >공지사항 안내입니다. 이용해주셔서 감사합니다</a
                      >
                    </th>
                    <td class="board-col-box">2017.06.15</td>
                  </tr>

                  <tr>
                    <td class="board-col-box">1</td>
                    <th>
                      <a href="#!"
                        >공지사항 안내입니다. 이용해주셔서 감사합니다</a
                      >
                    </th>
                    <td class="board-col-box">2017.06.15</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>