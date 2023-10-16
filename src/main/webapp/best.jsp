<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>best.jsp</title>
<style type="text/css">
@font-face{
font-family:'DNFBitBitv2';
font-style:normal;font-weight:400;src:url('//cdn.df.nexon.com/img/common/font/DNFBitBitv2.otf')format('opentype')}
div { 
	color: #ffffff;
}
body {
	margin: 100px;
	background-color: #FCDEAB;
	display: flex;
 	flex-direction: column;
    justify-content: center;
	justify-content: center;
    align-items: center;
}


#heading{
	font-family:'DNFBitBitv2';
	margin: 150px;
	color: white;
    font-size: 80px;
    text-shadow: 2px 2px #f19292;
}
.slider {
  position: relative;
  width: 200px;
  overflow: hidden;
}

.slides {
  display: flex;
  transition: transform 0.5s;
}

.slides img {
  width: 200px;
}

button {
  cursor: pointer;
}
</style>
</head>
<body>
<hr>
<div class="slider">
  <div class="slides">
    <img src="../img/julmi.jpg" alt="Image 1">
    <img src="../img/kkul_Wallet.jpg" alt="Image 2">
    <img src="../img/snow_princess.jpg" alt="Image 3">
  </div>
  <button id="prevBtn">◀</button>
  <button id="nextBtn">▶</button>
</div>

<h1 id="heading">베스트화면</h1>

<script type="text/javascript">
	const slides = document.querySelector('.slides');
	const prevBtn = document.getElementById('prevBtn');
	const nextBtn = document.getElementById('nextBtn');
	let currentIndex = 0;

	function moveToSlide(index) {
		const slideWidth = 400; // 이미지 너비가 400px인 경우
		slides.style.transform = `translateX(-${index * slideWidth}px)`;
	}


	prevBtn.addEventListener('click', () => {
  		currentIndex = (currentIndex - 1) % 3; // 이미지 개수에 따라 순환
  		moveToSlide(currentIndex);
	});

	nextBtn.addEventListener('click', () => {
		currentIndex = (currentIndex + 1) % 3;
		moveToSlide(currentIndex);
	});
</script>
</body>
</html>