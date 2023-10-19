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
//다섯번째 슬라이드
  let slideIndex5 = 0;
  showSlides5();

  function showSlides5() {
    let slides = document.getElementsByClassName("slide5"); // 두 번째 슬라이드의 클래스명으로 수정
    for (let i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex5++;
    if (slideIndex5 > slides.length) {
      slideIndex5 = 1;
    }
    slides[slideIndex5 - 1].style.display = "block";
    setTimeout(showSlides5, 1000); // 1초마다 이미지 전환
  }
//여섯번째 슬라이드
  let slideIndex6 = 0;
  showSlides6();

  function showSlides6() {
    let slides = document.getElementsByClassName("slide6"); // 두 번째 슬라이드의 클래스명으로 수정
    for (let i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex6++;
    if (slideIndex6 > slides.length) {
      slideIndex6 = 1;
    }
    slides[slideIndex6 - 1].style.display = "block";
    setTimeout(showSlides6, 1000); // 1초마다 이미지 전환
  }
  
// 전체 슬라이드
  function plusSlides(n) {
	    let slideContainer = document.querySelector('.slide-container');
	    let slideWidth = document.querySelector('.slide1').offsetWidth + 100; // 슬라이드 너비 + margin
	    slideContainer.style.transform = `translateX(${slideWidth * n}px)`;
	  }
