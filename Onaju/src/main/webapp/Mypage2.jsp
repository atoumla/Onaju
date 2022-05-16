
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<link href="${contextPath}/resources/css/heart.css" type="text/css"
	rel="stylesheet" media="all">
<style>
#toggle-heart{
	
	  position: absolute;
	width:30px;
	height:30px;
visibility:hidden;
	
}
[id='toggle-heart'] {
  position: absolute;

}
[id='toggle-heart']:checked + label {
  color: #e2264d;
  -webkit-filter: none;
          filter: none;
  will-change: font-size;
  -webkit-animation: heart 1s cubic-bezier(0.17, 0.89, 0.32, 1.49);
          animation: heart 1s cubic-bezier(0.17, 0.89, 0.32, 1.49);
}
[id='toggle-heart']:checked + label:before, [id='toggle-heart']:checked + label:after {
  -webkit-animation: inherit;
          animation: inherit;
  -webkit-animation-timing-function: ease-out;
          animation-timing-function: ease-out;
}
[id='toggle-heart']:checked + label:before {
  will-change: transform, border-width, border-color;
  -webkit-animation-name: bubble;
          animation-name: bubble;
}
[id='toggle-heart']:checked + label:after {
  will-change: opacity, box-shadow;
  -webkit-animation-name: sparkles;
          animation-name: sparkles;
}
[id='toggle-heart']:focus + label {
  text-shadow: 0 0 3px rgb(250,100,145),  0 1px 1px white, 0 -1px 1px white,  1px 0 1px white, -1px 0 1px white;
}

[for='toggle-heart'] {
  align-self: center;
  position: relative;
  color: white;
   text-shadow: 0 0 3px rgb(250,100,145),  0 1px 1px white, 0 -1px 1px white,  1px 0 1px white, -1px 0 1px white;
  font-size: 2em;
  -webkit-filter: grayscale(1);
          filter: grayscale(1);
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  cursor: pointer;
}
[for='toggle-heart']:before, [for='toggle-heart']:after {
  position: absolute;
  z-index: -1;
  top: 50%;
  left: 50%;
  border-radius: 50%;
  content: '';
}
[for='toggle-heart']:before {
  box-sizing: border-box;
  margin: -2.25rem;
  border: solid 2.25rem #e2264d;
  width: 4.5rem;
  height: 4.5rem;
  -webkit-transform: scale(0);
          transform: scale(0);
}
[for='toggle-heart']:after {
  margin: -0.1875rem;
  width: 0.375rem;
  height: 0.375rem;
  box-shadow: 0.32476rem -3rem 0 -0.1875rem #ff8080, -0.32476rem -2.625rem 0 -0.1875rem #ffed80, 2.54798rem -1.61656rem 0 -0.1875rem #ffed80, 1.84982rem -1.89057rem 0 -0.1875rem #a4ff80, 2.85252rem 0.98418rem 0 -0.1875rem #a4ff80, 2.63145rem 0.2675rem 0 -0.1875rem #80ffc8, 1.00905rem 2.84381rem 0 -0.1875rem #80ffc8, 1.43154rem 2.22414rem 0 -0.1875rem #80c8ff, -1.59425rem 2.562rem 0 -0.1875rem #80c8ff, -0.84635rem 2.50595rem 0 -0.1875rem #a480ff, -2.99705rem 0.35095rem 0 -0.1875rem #a480ff, -2.48692rem 0.90073rem 0 -0.1875rem #ff80ed, -2.14301rem -2.12438rem 0 -0.1875rem #ff80ed, -2.25479rem -1.38275rem 0 -0.1875rem #ff8080;
}

@-webkit-keyframes heart {
  0%, 17.5% {
    font-size: 0;
  }
}

@keyframes heart {
  0%, 17.5% {
    font-size: 0;
  }
}
@-webkit-keyframes bubble {
  15% {
    -webkit-transform: scale(1);
            transform: scale(1);
    border-color: #cc8ef5;
    border-width: 2.25rem;
  }
  30%, 100% {
    -webkit-transform: scale(1);
            transform: scale(1);
    border-color: #cc8ef5;
    border-width: 0;
  }
}
@keyframes bubble {
  15% {
    -webkit-transform: scale(1);
            transform: scale(1);
    border-color: #cc8ef5;
    border-width: 2.25rem;
  }
  30%, 100% {
    -webkit-transform: scale(1);
            transform: scale(1);
    border-color: #cc8ef5;
    border-width: 0;
  }
}
@-webkit-keyframes sparkles {
  0%, 20% {
    opacity: 0;
  }
  25% {
    opacity: 1;
    box-shadow: 0.32476rem -2.4375rem 0 0rem #ff8080, -0.32476rem -2.0625rem 0 0rem #ffed80, 2.1082rem -1.26585rem 0 0rem #ffed80, 1.41004rem -1.53985rem 0 0rem #a4ff80, 2.30412rem 0.85901rem 0 0rem #a4ff80, 2.08305rem 0.14233rem 0 0rem #80ffc8, 0.76499rem 2.33702rem 0 0rem #80ffc8, 1.18748rem 1.71734rem 0 0rem #80c8ff, -1.35019rem 2.0552rem 0 0rem #80c8ff, -0.60229rem 1.99916rem 0 0rem #a480ff, -2.44865rem 0.22578rem 0 0rem #a480ff, -1.93852rem 0.77557rem 0 0rem #ff80ed, -1.70323rem -1.77366rem 0 0rem #ff80ed, -1.81501rem -1.03204rem 0 0rem #ff8080;
  }
}
@keyframes sparkles {
  0%, 20% {
    opacity: 0;
  }
  25% {
    opacity: 1;
    box-shadow: 0.32476rem -2.4375rem 0 0rem #ff8080, -0.32476rem -2.0625rem 0 0rem #ffed80, 2.1082rem -1.26585rem 0 0rem #ffed80, 1.41004rem -1.53985rem 0 0rem #a4ff80, 2.30412rem 0.85901rem 0 0rem #a4ff80, 2.08305rem 0.14233rem 0 0rem #80ffc8, 0.76499rem 2.33702rem 0 0rem #80ffc8, 1.18748rem 1.71734rem 0 0rem #80c8ff, -1.35019rem 2.0552rem 0 0rem #80c8ff, -0.60229rem 1.99916rem 0 0rem #a480ff, -2.44865rem 0.22578rem 0 0rem #a480ff, -1.93852rem 0.77557rem 0 0rem #ff80ed, -1.70323rem -1.77366rem 0 0rem #ff80ed, -1.81501rem -1.03204rem 0 0rem #ff8080;
  }
}

</style>



</head>
<body>

<input id="toggle-heart" type="checkbox" title="1"/>
	<label for="toggle-heart" aria-label="like">❤</label>




</body>


</html>
