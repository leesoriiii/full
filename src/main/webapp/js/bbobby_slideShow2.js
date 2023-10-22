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
	
function plusSlides(n) {
   const slideContainer = document.querySelector('.slide-container');
   let currentPosition = parseInt(slideContainer.style.transform.slice(11, -3)) || 0;

  // 슬라이드 이동
  currentPosition += n * slideWidth;

  // 슬라이드가 마지막 슬라이드를 넘어가면 처음으로 돌아가도록 설정
  if (currentPosition > 0) {
    currentPosition = -(slides.length - 1) * slideWidth;
  } else if (currentPosition < -(slides.length - 1) * slideWidth) {
    currentPosition = 0;
  }

  // 슬라이드 이동
  slideContainer.style.transform = `translateX(${currentPosition}px)`;

  // 슬라이드 인덱스 업데이트
  slideIndex = Math.abs(currentPosition / slideWidth);
   
   
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
  
//네번째 슬라이드
 let slideIndex4 = 0;
showSlides4();

function showSlides4() {
  let slides = document.querySelectorAll('.slide4');
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }
  slideIndex4++;
  if (slideIndex4 >= slides.length) {
    slideIndex4 = 0;
  }
  slides[slideIndex4].style.display = 'block';
  setTimeout(showSlides4, 2000); // 2초마다 이미지 전환
}

//다섯번째 슬라이드
 let slideIndex5 = 0;
showSlides5();

function showSlides5() {
  let slides = document.querySelectorAll('.slide5');
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }
  slideIndex5++;
  if (slideIndex5 >= slides.length) {
    slideIndex5 = 0;
  }
  slides[slideIndex5].style.display = 'block';
  setTimeout(showSlides5, 2000); // 2초마다 이미지 전환
}
//여섯번째 슬라이드
  let slideIndex6 = 0;
showSlides6();

function showSlides6() {
  let slides = document.querySelectorAll('.slide6');
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }
  slideIndex6++;
  if (slideIndex6 >= slides.length) {
    slideIndex6 = 0;
  }
  slides[slideIndex6].style.display = 'block';
  setTimeout(showSlides6, 2000); // 2초마다 이미지 전환
}