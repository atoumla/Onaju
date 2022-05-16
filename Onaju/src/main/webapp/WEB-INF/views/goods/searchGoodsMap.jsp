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
    <title>위치기반 숙소 검색</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />

    <style>
      .hb_rec_1 {
        display: inline-block;
        width: 800px;
        height: 400px;
        border-radius: 10px;
        border: 1px solid #cccccc;
      }

      .hb_rec_2 {
        display: inline-block;

        width: 250px;
        height: 400px;
        border-radius: 10px;
        border: 1px solid #cccccc;
      }

      .hb_rec_3 {
        align-items: center;
        text-align: center;
        display: inline-block;
        width: 122px;
        height: 60px;
        border-radius: 10px;
        border: 1px solid #cccccc;
        padding: 0px 0px 0px 0px;
        margin: 0px 21px 0px 21px;
      }

      .hb_rec_4 {
        display: inline-block;
        width: 240px;
        height: 180px;
        border-radius: 20px;
        border: 1px solid #cccccc;
        padding: 0px;
        margin: 5px 10px 5px 10px;
      }
      .hb_rec_12 {
        display: inline-block;
        width: 550px;
        height: 100%;
        border-radius: 10px;
      }
      .hb_rec_13 {
    float: right;
    position: fixed;
    width: 550px;
    height: 760px;
    border-radius: 10px;
    border: 1px solid #cccccc;
    text-align: center;
    top: 170px;
    left: 50%;
  
      }

      .hb_section_total {
        width: 1100px;
        height: 100%;
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
        display: inline-block;
        width: 1100px;
        height: 60px;
        	margin-top:10px;
        
      }
      .hb_section_8 {
        display: flex;
        width: 1100px;
        height: 100%;
      }

      .margin_left_0 {
        float: left;
        margin-left: 0px;
      }

      .margin_right_0 {
        float: right;
        margin-right: 0px;
      }

      .hb_table_1 {
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
      #hb_a_main {
        text-decoration: none;
        display: block;
        height: 100%;
        margin: 0 auto;
        border-radius: 20px;
      }
      .charge-info {
        cursor: pointer !important;
        text-align: center !important;
        border: 1px solid rgb(221, 221, 221) !important;
        background-color: rgb(255, 255, 255) !important;
        outline: none !important;
        margin: 0px !important;
        color: rgb(34, 34, 34) !important;
        font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
          "Helvetica Neue", sans-serif !important;
        position: relative !important;
        transition-property: -ms-transform, -webkit-transform, transform,
          background-color, border-color !important;
        transition-duration: 0.15s !important;
        transition-timing-function: ease-in-out !important;
        padding: 10px 16px !important;
        border-radius: 30px !important;
        font-size: 12px !important;
        line-height: 16px !important;
        width: 100% !important;
      }
      
.charge-info:hover {
	cursor: pointer !important;
	text-align: center !important;
	border: 1px solid rgb(221, 221, 221) !important;
	background-color: rgb(254, 210, 223) !important;
	outline: none !important;
	margin: 0px !important;
	color: rgb(34, 34, 34) !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		"Helvetica Neue", sans-serif !important;
	position: relative !important;
	transition-property: -ms-transform, -webkit-transform, transform,
		background-color, border-color !important;
	transition-duration: 0.15s !important;
	transition-timing-function: ease-in-out !important;
	padding: 10px 16px !important;
	border-radius: 30px !important;
	font-size: 12px !important;
	line-height: 16px !important;
	width: 100% !important;
}
      .charge-box {
        display: inline-block !important;
        white-space: nowrap !important;
        padding-right: 8px !important;
        padding-top: 4px !important;
        padding-bottom: 4px !important;
      }
      .charge-text {
        font-weight: 400 !important;
        font-size: 11px !important;
        line-height: 18px !important;
        display: inline-block !important;
      }
      .charge-img {
        align-self: center !important;
        margin-left: 9.5px !important;
        float: right;
      }
      .charge-textbox {
        display: flex !important;
        place-content: center !important;
      }
      .charge-boxline {
        -webkit-box-align: center !important;
        display: flex !important;
        align-items: center !important;
      }

      .lodging-box {
      float:left;
        margin: 0;
        padding-top: 0;
        display: flex;
        -ms-flex-direction: column;
        flex-direction: column;
        grid-area: 1 / 1 / 2 / 2;
        height: 100%;
      }

      .lodging-border-top {
      
        border-bottom: 1px solid rgb(235, 235, 235) !important;
        border-bottom-width: var(--border-rule-border-width, 1px) !important;
        border-bottom-color: var(--color-divider, #ebebeb) !important;
          margin-bottom:12px;
      }
      .lodging-border-bottom {
      display:inline-block;
        width: 100%;
        border-bottom-color: var(--color-divider, #ebebeb) !important;
        border-bottom: 1px solid rgb(235, 235, 235) !important;
        margin-bottom:15px;
      }
      .lodging-box {
        overflow: hidden !important;
        height: 100% !important;
        width: 500px !important;
        position: relative !important;
        display: inline-block;
      }
      .lodging-img {
        width: 250px;
        height: 200px;
        display: flex;
        float: left;
        border-radius: 10px;
        border: 1px solid #cccccc;
      }
      .lodging-info-total {
        width: 230px;
        height: 200px;
		margin-left:10px;
        float: left;
      }
      .lodging-location {
        width: 250px;
        height: 50px;
      }
      .lodging-title {
        width: 250px;
        height: 50px;
      }
      .lodging-info {
        width: 250px;
        height: 50px;
      }
      .lodging-charge {
        width: 250px;
        height: 50px;
        display: block;
      }
      .lodging-total{
      float:left;
 width:550px;
      display:inline-block;
      margin-bottom:15px;
      height:200px;}
      
#hb_textbox_5 {
	float: left;
	padding: 0 0 0 0px;
	display: inline-block;
	width: 100%;
	height: 20px;
	margin-top: 5px;
}

#hb_textbox_6 {
	float: left;
	padding: 0 0 0 0px;
	display: inline-block;
	width: 100%;
	height: 40px;
	margin-top: 5px;
}

#hb_textbox_7 {
	float: left;
	padding: 0 0 0 0px;
	display: inline-block;
	width: 280px;
	height: 40px;
	margin-top: 5px;
}

#hb_main_p1 {
	float: left;
	width: 150px;
	font-weight: 620;
	font-size: 14px;
	text-align: left;
	color: black;
}

#hb_main_p2 {
	font-weight: 520;
	font-size: 14px;
	text-align: right;
	color: black;
}

#hb_main_p7 {

width: 280px;
	font-weight: 600;
	font-size: 16px;
	text-align: left;
	color: black;
}
#hb_main_p5 {
	float: left;
	width: 230px;
	font-weight: 530;
	font-size: 13px;
	text-align: left;
	color: rgb(77, 79, 80);
	opacity: 80%;
}

#hb_main_p4 {
	font-weight: 530;
	font-size: 14px;
	text-align: right;
	color: rgb(77, 79, 80);
	opacity: 80%;
}

#hb_main_p6 {
	float: left;
	width: 240px;
	font-weight: 620;
	font-size: 17px;
	text-align: left;
	color: black;
}




.heart {
  width: 100px;
  height: 100px;
  background: url("https://cssanimation.rocks/images/posts/steps/heart.png") no-repeat;
  background-position: 0 0;
  cursor: pointer;
  transition: background-position 1s steps(28);
  transition-duration: 0s;
  
  
  &.is-active {
    transition-duration: 1s;
    background-position: -2800px 0;
  }
}
.heart:active{
    transition-duration: 1s;
    background-position: -2800px 0;
}



    </style>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6e6e34573e04bd152c20de74d0647457&libraries=services,clusterer"></script>



  	
  <script>

  $(function() {
	  $(".heart").on("click", function() {
	    $(this).toggleClass("is-active");
	  });
	});
  
  </script>
  </head>
  <body>
    <section class="hb_section_total">
      <section class="hb_section_6">
        <div class="charge-boxline">
          <div class="charge-box">
            <button class="charge-info" aria-expanded="false" type="button">
              <div class="charge-textbox">
                <span class="charge-text">요금</span>
                <span class="charge-img">
                  <svg
                    viewBox="0 0 32 32"
                    xmlns="http://www.w3.org/2000/svg"
                    aria-hidden="true"
                    role="presentation"
                    focusable="false"
                    style="
                      display: block;
                      fill: none;
                      height: 12px;
                      width: 12px;
                      stroke: currentcolor;
                      stroke-width: 5.33333;
                      overflow: visible;
                    "
                  >
                  
                    <g fill="none">
                      <path
                        d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"
                      ></path>
                    </g>
                    
                  </svg>
                </span>
              </div>
            </button>
          </div>

          <div class="charge-boxline">
            <div class="charge-box">
              <button class="charge-info" aria-expanded="false" type="button">
                <div class="charge-textbox">
                  <span class="charge-text">숙소유형</span>
                  <span class="charge-img">
                    <svg
                      viewBox="0 0 32 32"
                      xmlns="http://www.w3.org/2000/svg"
                      aria-hidden="true"
                      role="presentation"
                      focusable="false"
                      style="
                        display: block;
                        fill: none;
                        height: 12px;
                        width: 12px;
                        stroke: currentcolor;
                        stroke-width: 5.33333;
                        overflow: visible;
                      "
                    >
                     <g fill="none">
                        <path
                          d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"
                        ></path>
                      </g>
                    </svg>
                  </span>
                  
                </div>
              </button>
              
            </div>

            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">무선인터넷</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">주방</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">에어컨</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">세탁기</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">다리미</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">주차공간</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">업무전용공간</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">건조기</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">셀프체크인</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">수영장</span>
                  </div>
                </button>
              </div>
            </div>

            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">필터</span>
                    <span class="charge-img">
                      <svg
                        viewBox="0 0 32 32"
                        xmlns="http://www.w3.org/2000/svg"
                        aria-hidden="true"
                        role="presentation"
                        focusable="false"
                        style="
                          display: block;
                          fill: none;
                          height: 12px;
                          width: 12px;
                          stroke: currentcolor;
                          stroke-width: 5.33333;
                          overflow: visible;
                        "
                      >
                        <g fill="none">
                          <path
                            d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"
                          ></path>
                        </g>
                      </svg>
                    </span>
                  </div>
                </button>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="hb_section_8">
        <div class="hb_rec_12">
        
        	<div class="lodging-border">
            	<div class="lodging-border-bottom"></div>
         	</div>
            
            
            
            <form>
            	<c:choose>
  					<c:when test="${empty hostgoodsMap}" >
    					<tr  height="10">
      						<td colspan="9">
         						<p align="center">
            						<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        						</p>
      						</td>  
    					</tr>
  					</c:when>
  					<c:when test="${!empty hostgoodsMap}" >
  						<c:forEach  var="item" items="${hostgoodsMap.goodsList }" varStatus="membersNum" >
  						
          	<div class="lodging-total" style="cursor: pointer;" >           
            	<div class="lodging-box" onclick="location.href='${contextPath}/host/goods/goodsDetail.do?room_code=${item.room_code }';">
              		<div class="lodging-img">
              			<img src="${contextPath}/thumbnails.do?room_code=${item.room_code}&fileName=${item.room_imageName}" style="width: 100%; height: 100%; border-radius: 10px;">
              		</div>
              		                            
              		<div class="lodging-info-total">
                		<div id="hb_textbox_5">
							<p id="hb_main_p5">${item.roadAddress }</p> 				
						</div>
                		<div id="hb_textbox_5">
							<p id="hb_main_p6">${item.title }</p>				
						</div>
						<div id="hb_textbox_5">
							<p style="border-bottom:1px solid #DCDCDC;float:left; width:25px; margin-top:10px;" ></p>				
						</div>
						<div id="hb_textbox_6">
							<p id="hb_main_p5">${item.content }</p>				
						</div>                
                        <div id="hb_textbox_6">			
						</div>
				       	<div id="hb_textbox_7">
							<p id="hb_main_p7">${item.room_fee } / 박</p>
						</div>          
              		</div>
            	</div>          
          		<div style=" display:inline-block;">     	
          			<input id="toggle-heart" type="checkbox" title="1"/>
					<label for="toggle-heart" aria-label="like" title="1">❤</label>
				</div>          
          	</div>
          	
          				</c:forEach>
          			</c:when>
          		</c:choose>
          	</form>




          	       
        </div>
        <div class="hb_rec_13" id="map">지도API</div>
     
	
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(36.3493, 127.3776),
			level: 2
		};

		var map = new kakao.maps.Map(container, options);
	</script>
	
      </section>
    </section>
    
  </body>
  
  
</html>
