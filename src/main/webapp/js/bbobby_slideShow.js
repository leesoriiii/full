// 두번째 슬라이드
let slideIndex1 = 0;
showSlides1();

function showSlides1() {
  let slides = document.querySelectorAll('.slide1');
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }
  slideIndex1++;
  if (slideIndex1 >= slides.length) {
    slideIndex1 = 0;
  }
  slides[slideIndex1].style.display = 'block';
  setTimeout(showSlides1, 2000); // 2초마다 이미지 전환
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