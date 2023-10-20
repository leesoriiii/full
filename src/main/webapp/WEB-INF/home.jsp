<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가득샵</title>
<link rel="icon" href="favicon.png">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-eco.css" rel="stylesheet">
<style type="text/css">
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
	font-size: 18px;
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

</style>

<script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>

</head>
<body>
<nav style="backgroundcolor: white">
<ul class="menu">
	<li>
		<section class="perspective">
		<article class="cube">
			<div class="base">
			<a href="http://localhost:8081">
			<img id="full_shap_logo" src="../img/full_shap_logo.png" alt="가득샵 로고">
			</a>
			</div>
		</article>
		</section>
	</li>
	<li class="menu-item">
		<a href="best.jsp" target="content" style="text-decoration: none;">
			<div class="menu-title">베스트</div>
		</a>
	</li>
	<li class="menu-item">
		<a href="bbobby.jsp" target="content" style="text-decoration: none;">
			<div class="menu-title">뽀삐와칭구들</div>
		</a>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/bbobby/kidult_doll">키덜트인형</a></li>
			<li class="sub-menu-item"><a target="content" href="/bbobby/julmi">절미</a></li>
			<li class="sub-menu-item"><a target="content" href="/bbobby/goods">굿즈상품</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<a href="/title/accessory" target="content" style="text-decoration: none;">
			<div class="menu-title">악세사리</div>
		</a>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/accessory/hairpin">헤어핀</a></li>
			<li class="sub-menu-item"><a target="content" href="/accessory/smart_tok">스마트톡</a></li>
			<li class="sub-menu-item"><a target="content" href="/accessory/givitz">지비츠</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<a href="/title/animal" target="content" style="text-decoration: none;">
			<div class="menu-title">반려용품</div>
		</a>
		<ol class="sub-menu">
			<li class="sub-menu-item"><a target="content" href="/animal/scarf">케이프</a></li>
			<li class="sub-menu-item"><a target="content" href="/animal/accessory">악세사리</a></li>
			<li class="sub-menu-item"><a target="content" href="/animal/season">시즌 제품</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<a href="cs.jsp" target="content" style="text-decoration: none;">
			<div class="menu-title">문의</div>
		</a>
	</li>
	<li class="menu-item">
		<div class="menu-title">Login</div>
	</li>
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