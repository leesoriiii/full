<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가득샵</title>
<link rel="icon" href="favicon.png">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-eco.css" rel="stylesheet">
<style type="text/css">
@font-face {
    font-family: 'ImcreSoojin';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: '양진체';
    src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'Dovemayo_gothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'IAMAPLAYER';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/IAMAPLAYER.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'HakgyoansimWoojuR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-2@1.0/HakgyoansimWoojuR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
@font-face{
  font-family:'bitbit';
  src:url('//cdn.df.nexon.com/img/common/font/DNFBitBit-Regular.woff'),url('//cdn.df.nexon.com/img/common/font/DNFBitBit-Regular.woff2') ;
}
@font-face {
    font-family: 'Cafe24Ssurround';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'Orbit-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2310@1.0/Orbit-Regular.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'HSSaemaul-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/HSSaemaul-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
     font-family: 'locus_sangsang';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/locus_sangsang.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
@font-face {
    font-family: 'EF_cucumbersalad';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_cucumbersalad.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
.menu {
	display: flex;
	list-style: none;
	align-items: flex-start;
	position: absolute;
	width: 100%;
	top: -20px;
	left: 0px;
}

.menu-item { /*상단메뉴바*/
	padding: 5px;
	width: 130px;
	flex-shrink: 0;
	background: #ffffff;
	height: 5px;
	transition: margin-top 1s;
}
.menu-item::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color:#ffffff; /* 배경 색상을 원하는 색상으로 변경하세요 */
  z-index: -1;
}

.menu-item:hover > .sub-menu {
	display: block;
}


.menu-item:last-child {
	margin-left: auto;
	margin-right: 10px;
}

.menu-title:hover { 
	color: #83C3B5
}
.menu-title { /*상단메뉴 내용*/
     font-family: 'Dovemayo_gothic';
	padding: 15px;
	font-size: 22px;
	color: #FBA720;
	text-align: center;
	letter-spacing: -1px;
}
.menu-item:hover .menu-title,
.sub-menu-item:hover > .menu-title {
    color: #ed616f;
 }
.sub-menu {
	font-family: 'Dovemayo_gothic';
	display: none;
	list-style: none;
	padding-left: 0px;
	overflow: hidden;
	text-align: center;
}


.sub-menu-item > a {
	display: block;
	padding: 10px;
	font-size: 17px;
	text-decoration: none;
	color: #FBA720;
	
}

.sub-menu-item:hover > a {
	text-decoration: underline;
	font-weight: bold;
}
body,html {
	margin: 0px;
}
iframe {
	width: 100%;
	height: 1000px;
	margin-top: 50px;
}
#full_shap_logo {
	padding: 10px;
	width: 120px;
}
.custom-icon::before {
    content: '\f007'; /* 아이콘 유니코드 */
    font-family: FontAwesome; /* 원하는 폰트 패밀리 사용 */
}
#hello {
	font-size: 14px;
	color: white;
}
/* 아이콘 스타일링 */
.custom-icon {
    font-size: 24px; /* 크기 설정 */
}

</style>

<script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
<script type="text/javascript">
function resize() {
	let iframe = document.querySelector('iframe');
	iframe.style.height = getComputedStyle(iframe.contentDocument.documentElement).height;
}

 window.onload = function() {
	setInterval(resize, 100);
} 
/*$(document).ready(function() {
	setInterval(resize, 100);
});*/
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<!-- 로그인 정보 담기 -->

<%
	String userID = null;
	if(session.getAttribute("userID") != null) {
		userID = (String)session.getAttribute("userID");
	}
%>

	<nav style="backgroundcolor: white">
		<ul class="menu">
			<li>
				<section class="perspective">
					<article class="cube">
						<div class="base">
							<a href="/home"> <img id="full_shap_logo"
								src="../img/full_shap_logo.png" alt="가득샵 로고">
							</a>
						</div>
					</article>
				</section>
			</li>
			<li class="menu-item"><a href="/title/best" target="content"
				style="text-decoration: none;">
					<div class="menu-title">베스트</div>
			</a></li>
			<li class="menu-item"><a href="/title/bbobby" target="content"
				style="text-decoration: none;">
					<div class="menu-title">뽀삐와칭구들</div>
			</a></li>
			<li class="menu-item"><a href="/title/accessory"
				target="content" style="text-decoration: none;">
					<div class="menu-title">악세사리</div>
			</a>
			<li class="menu-item"><a href="/title/animal" target="content"
				style="text-decoration: none;">
					<div class="menu-title">반려용품</div>
			</a>
				</li>
			<li class="menu-item"><a href="cs.jsp" target="content"
				style="text-decoration: none;">
					<div class="menu-title">문의</div>
			</a></li>

			<%
			if (userID == null) {
			%>
			
			<!-- 사용자가 로그인하지 않은 경우 --> 
        <li class="menu-item">
            <div class="menu-title">
                <div class="custom-icon"></div>
            </div>
            <ol class="sub-menu">
                <li class="sub-menu-item"><a href="/login">로그인</a></li>
            </ol>
        </li>
			
			
			<%
			} else { 
			%>
			<!-- 사용자가 로그인한 경우 -->
			<li class="menu-item">
				<div class="menu-title">
					<div class="custom-icon"></div>
				</div>
				<ol class="sub-menu">
					<li><span id="hello"><%= session.getAttribute("userID") %>님<br>반가워요</span></li>
					<li class="sub-menu-item"><a target="content"
						href="/accessory/hairpin">마이페이지</a></li>
					<li class="sub-menu-item"><a target="content"
						href="/accessory/smart_tok">장바구니</a></li>
					<li class="sub-menu-item"><a href="/logout">로그아웃</a></li>
				</ol>
			</li>
        
    <% } %>
			
			<!-- <sec:authorize access="isAnonymous()">
				<li class="menu-item">
					<div class="menu-title">
						 로그인 안했을때 마이메뉴 표시 
						<div class="custom-icon"></div>
					</div>
					<ol class="sub-menu">
					<li class="sub-menu-item"><a href="/login">로그인</a></li>
				</ol>
				</li>
			</sec:authorize>
			
			<sec:authorize access="isAuthenticated()">
				<li class="menu-item">
					<div class="menu-title">
						로그인했을때 마이메뉴 표시 
							<div class="custom-icon"></div>
					</div>
					<ol class="sub-menu">
					<li><span id="hello"><sec:authentication property="name"/>님<br>반가워요</a></li></span>
					<li class="sub-menu-item"><a target="content"
						href="/accessory/hairpin">마이페이지</a></li>
					<li class="sub-menu-item"><a target="content"
						href="/accessory/smart_tok">장바구니</a></li>
					<li class="sub-menu-item"><a href="/logout">로그아웃</a></li>
				</ol>
				</li>
			</sec:authorize> -->
		</ul>
	</nav>
	<iframe src="../main.jsp"
		name="content"
		width="100%"
		scrolling="no"
		frameborder='0'
		sendbox="allow-same-origin">
i frame 태그를 지원하지 않는 브라우저는 이 글이 보입니다.
</iframe>
</body>
</html>