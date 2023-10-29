//1줄

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
  


//////////2번째줄
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



/////////////////////3번째줄
let slides3;
threeshowSlides(slideIndex); // 페이지 로드 시 첫 번째 슬라이드 표시

function threeshowSlides(slideIndex) {
const slideContainer = document.querySelector('.slide-container3');
const slideWidth = slideContainer.offsetWidth / 6; // 슬라이드 하나의 너비 계산
 slides3 = document.querySelectorAll('.line3Slide1');
 
  for (let i = 0; i < slides3.length; i++) {
    slides3[i].style.display = 'none';
  }

  slides3[slideIndex].style.display = 'block';

  // 2초마다 이미지 전환
  setTimeout(function () {
    slideIndex++;
    if (slideIndex >= slides3.length) {
      slideIndex = 0;
    }
    threeshowSlides(slideIndex);
  }, 2000);
}
	
	
// 두번째 슬라이드
let threeSlideIndex2 = 0;
threeShowSlides2();

function threeShowSlides2() {
  let slides3 = document.querySelectorAll('.line3Slide2');
  for (let i = 0; i < slides3.length; i++) {
    slides3[i].style.display = 'none';
  }
  threeSlideIndex2++;
  if (threeSlideIndex2 >= slides3.length) {
    threeSlideIndex2 = 0;
  }
  slides3[threeSlideIndex2].style.display = 'block';
  setTimeout(threeShowSlides2, 2000); // 2초마다 이미지 전환
}
// 세번째 슬라이드
let threeSlideIndex3 = 0;
threeShowSlides3();

function threeShowSlides3() {
  let slides3 = document.querySelectorAll('.line3Slide3');
  for (let i = 0; i < slides3.length; i++) {
    slides3[i].style.display = 'none';
  }
  threeSlideIndex3++;
  if (threeSlideIndex3 >= slides3.length) {
    threeSlideIndex3 = 0;
  }
  slides3[threeSlideIndex3].style.display = 'block';
  setTimeout(threeShowSlides3, 2000); // 2초마다 이미지 전환
}








/////////////////////4번째줄
let slides4;
fourshowSlides(slideIndex); // 페이지 로드 시 첫 번째 슬라이드 표시

function fourshowSlides(slideIndex) {
const slideContainer = document.querySelector('.slide-container4');
const slideWidth = slideContainer.offsetWidth / 6; // 슬라이드 하나의 너비 계산
 slides4 = document.querySelectorAll('.line4Slide1');
 
  for (let i = 0; i < slides4.length; i++) {
    slides4[i].style.display = 'none';
  }

  slides4[slideIndex].style.display = 'block';

  // 2초마다 이미지 전환
  setTimeout(function () {
    slideIndex++;
    if (slideIndex >= slides4.length) {
      slideIndex = 0;
    }
    fourshowSlides(slideIndex);
  }, 2000);
}
	
	
// 두번째 슬라이드
let fourSlideIndex2 = 0;
fourShowSlides2();

function fourShowSlides2() {
  let slides4 = document.querySelectorAll('.line4Slide2');
  for (let i = 0; i < slides4.length; i++) {
    slides4[i].style.display = 'none';
  }
  fourSlideIndex2++;
  if (fourSlideIndex2 >= slides4.length) {
    fourSlideIndex2 = 0;
  }
  slides4[fourSlideIndex2].style.display = 'block';
  setTimeout(fourShowSlides2, 2000); // 2초마다 이미지 전환
}
// 세번째 슬라이드
let fourSlideIndex3 = 0;
fourShowSlides3();

function fourShowSlides3() {
  let slides4 = document.querySelectorAll('.line4Slide3');
  for (let i = 0; i < slides4.length; i++) {
    slides4[i].style.display = 'none';
  }
  fourSlideIndex3++;
  if (fourSlideIndex3 >= slides4.length) {
    fourSlideIndex3 = 0;
  }
  slides4[fourSlideIndex3].style.display = 'block';
  setTimeout(fourShowSlides3, 2000); // 2초마다 이미지 전환
}





/////////////////////5번째줄
let slides5;
fiveshowSlides(slideIndex); // 페이지 로드 시 첫 번째 슬라이드 표시

function fiveshowSlides(slideIndex) {
const slideContainer = document.querySelector('.slide-container5');
const slideWidth = slideContainer.offsetWidth / 6; // 슬라이드 하나의 너비 계산
 slides5 = document.querySelectorAll('.line5Slide1');
 
  for (let i = 0; i < slides5.length; i++) {
    slides5[i].style.display = 'none';
  }

  slides5[slideIndex].style.display = 'block';

  // 2초마다 이미지 전환
  setTimeout(function () {
    slideIndex++;
    if (slideIndex >= slides5.length) {
      slideIndex = 0;
    }
    fiveshowSlides(slideIndex);
  }, 2000);
}
	
	
// 두번째 슬라이드
let fiveSlideIndex2 = 0;
fiveShowSlides2();

function fiveShowSlides2() {
  let slides5 = document.querySelectorAll('.line5Slide2');
  for (let i = 0; i < slides5.length; i++) {
    slides5[i].style.display = 'none';
  }
  fiveSlideIndex2++;
  if (fiveSlideIndex2 >= slides5.length) {
    fiveSlideIndex2 = 0;
  }
  slides5[fiveSlideIndex2].style.display = 'block';
  setTimeout(fiveShowSlides2, 2000); // 2초마다 이미지 전환
}
// 세번째 슬라이드
let fiveSlideIndex3 = 0;
fiveShowSlides3();

function fiveShowSlides3() {
  let slides5 = document.querySelectorAll('.line5Slide3');
  for (let i = 0; i < slides5.length; i++) {
    slides5[i].style.display = 'none';
  }
  fiveSlideIndex3++;
  if (fiveSlideIndex3 >= slides5.length) {
    fiveSlideIndex3 = 0;
  }
  slides5[fiveSlideIndex3].style.display = 'block';
  setTimeout(fiveShowSlides3, 2000); // 2초마다 이미지 전환
}
