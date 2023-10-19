<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bbobby.jsp</title>
<link rel="stylesheet" href="css/bbobby.css">
</head>
<body>
<div id="header">
<p id="mini_menu" style="margin-bottom: 0px; color: #FFFFFF;">뽀삐와칭구들 > <span style="color: #FBA720; text-decoration: underline;">전체</span></p>
<hr>
</div>
<div class="slideshow-container">
<div class="slide-container">
  <div class="slide1">
    <img src="/img(list)/kkul_Wallet1.png" alt="Kkul Image 1">
  </div>
  <div class="slide1">
    <img src="/img(list)/kkul_Wallet2.png" alt="Kkul Image 2">
  </div>
  <div class="slide1">
    <img src="/img(list)/kkul_Wallet3.png" alt="Kkul Image 3">
  </div>
  <div class="slide2">
    <img src="/img(list)/julmi1.png" alt="julmi Image 1">
  </div>
  <div class="slide2">
    <img src="/img(list)/julmi2.png" alt="julmi Image 2">
  </div>
  <div class="slide2">
    <img src="/img(list)/julmi3.png" alt="julmi Image 3">
  </div>
  <div class="slide2">
    <img src="/img(list)/julmi4.png" alt="julmi Image 4">
  </div>
  <div class="slide2">
    <img src="/img(list)/julmi5.png" alt="julmi Image 5">
  </div>
  <div class="slide3">
    <img src="/img(list)/kkul_doll1.png" alt="kkul_doll Image 1">
  </div>
  <div class="slide3">
    <img src="/img(list)/kkul_doll2.png" alt="kkul_doll Image 2">
  </div>
  <div class="slide4">
    <img src="/img(list)/bbobby_doll1.png" alt="bbobby_doll Image 1">
  </div>
  <div class="slide4">
    <img src="/img(list)/bbobby_doll2.png" alt="bbobby_doll Image 2">
  </div>
  <div class="slide4">
    <img src="/img(list)/bbobby_doll3.png" alt="bbobby_doll Image 3">
  </div>
</div> 
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<script>
//뀰지갑 슬라이드
	let slideIndex = 0;
	showSlides();

	function showSlides() {
		let slides = document.getElementsByClassName("slide1");
		for (let i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {
			slideIndex = 1;
		}
		slides[slideIndex - 1].style.display = "block";
		setTimeout(showSlides, 1000); // 1초마다 이미지 전환
	}
	
//두번째 슬라이드
  let slideIndex2 = 0;
  showSlides2();

  function showSlides2() {
    let slides = document.getElementsByClassName("slide2"); // 두 번째 슬라이드의 클래스명으로 수정
    for (let i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex2++;
    if (slideIndex2 > slides.length) {
      slideIndex2 = 1;
    }
    slides[slideIndex2 - 1].style.display = "block";
    setTimeout(showSlides2, 1000); // 1초마다 이미지 전환
  }
  
//세번째 슬라이드
  let slideIndex3 = 0;
  showSlides3();

  function showSlides3() {
    let slides = document.getElementsByClassName("slide3"); // 두 번째 슬라이드의 클래스명으로 수정
    for (let i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex3++;
    if (slideIndex3 > slides.length) {
      slideIndex3 = 1;
    }
    slides[slideIndex3 - 1].style.display = "block";
    setTimeout(showSlides3, 1000); // 1초마다 이미지 전환
  }
  
//네번째 슬라이드
  let slideIndex4 = 0;
  showSlides4();

  function showSlides4() {
    let slides = document.getElementsByClassName("slide4"); // 두 번째 슬라이드의 클래스명으로 수정
    for (let i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex4++;
    if (slideIndex4 > slides.length) {
      slideIndex4 = 1;
    }
    slides[slideIndex4 - 1].style.display = "block";
    setTimeout(showSlides4, 1000); // 1초마다 이미지 전환
  }
  function plusSlides(n) {
	    let slideContainer = document.querySelector('.slide-container');
	    let slideWidth = document.querySelector('.slide1').offsetWidth + 20; // 슬라이드 너비 + margin
	    slideContainer.style.transform = `translateX(-${slideWidth * n}px)`;
	  }
</script>
	
<h1 id="heading">이미지</h1>
</body>
</html>