//l줄

let slides;
let slideIndex = 0; // 현재 슬라이드 인덱스
const slideWidth =73; // 슬라이드버튼을 누를때 이동하는길이 (단위: px)
showSlides(slideIndex); // 페이지 로드 시 첫 번째 슬라이드 표시

function showSlides(slideIndex) {
const slideContainer = document.querySelector('.slide-container');
const slideWidth = slideContainer.offsetWidth / 6; // 슬라이드 하나의 너비 계산
 slides = document.querySelectorAll('.slide1');
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }

  slides[slideIndex].style.display = 'block';

  // 2초마다 이미지 전환
  setTimeout(function () {
    slideIndex++;
    if (slideIndex >= slides.length) {
      slideIndex = 0;
    }
    showSlides(slideIndex);
  }, 2000);
}
	
	
// 두번째 슬라이드
let slideIndex2 = 0;
showSlides2();

function showSlides2() {
  let slides = document.querySelectorAll('.slide2');
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }
  slideIndex2++;
  if (slideIndex2 >= slides.length) {
    slideIndex2 = 0;
  }
  slides[slideIndex2].style.display = 'block';
  setTimeout(showSlides2, 2000); // 2초마다 이미지 전환
}
  
// 세번째 슬라이드
let slideIndex3 = 0;
showSlides3();

function showSlides3() {
  let slides = document.querySelectorAll('.slide3');
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }
  slideIndex3++;
  if (slideIndex3 >= slides.length) {
    slideIndex3 = 0;
  }
  slides[slideIndex3].style.display = 'block';
  setTimeout(showSlides3, 2000); // 2초마다 이미지 전환
}
  


//////////////





let slides2;
twoshowSlides(slideIndex); // 페이지 로드 시 첫 번째 슬라이드 표시

function twoshowSlides(slideIndex) {
const slideContainer = document.querySelector('.slide-container2');
const slideWidth = slideContainer.offsetWidth / 6; // 슬라이드 하나의 너비 계산
 slides2 = document.querySelectorAll('.line2Slide1');
 
  for (let i = 0; i < slides2.length; i++) {
    slides2[i].style.display = 'none';
  }

  slides2[slideIndex].style.display = 'block';

  // 2초마다 이미지 전환
  setTimeout(function () {
    slideIndex++;
    if (slideIndex >= slides2.length) {
      slideIndex = 0;
    }
    twoshowSlides(slideIndex);
  }, 2000);
}
	
	
// 두번째 슬라이드
let twoSlideIndex2 = 0;
twoShowSlides2();

function twoShowSlides2() {
  let slides2 = document.querySelectorAll('.line2Slide2');
  for (let i = 0; i < slides2.length; i++) {
    slides2[i].style.display = 'none';
  }
  twoSlideIndex2++;
  if (twoSlideIndex2 >= slides2.length) {
    twoSlideIndex2 = 0;
  }
  slides2[twoSlideIndex2].style.display = 'block';
  setTimeout(twoShowSlides2, 2000); // 2초마다 이미지 전환
}
// 세번째 슬라이드
let twoSlideIndex3 = 0;
twoShowSlides3();

function twoShowSlides3() {
  let slides2 = document.querySelectorAll('.line2Slide3');
  for (let i = 0; i < slides2.length; i++) {
    slides2[i].style.display = 'none';
  }
  twoSlideIndex3++;
  if (twoSlideIndex3 >= slides2.length) {
    twoSlideIndex3 = 0;
  }
  slides2[twoSlideIndex3].style.display = 'block';
  setTimeout(twoShowSlides3, 2000); // 2초마다 이미지 전환
}