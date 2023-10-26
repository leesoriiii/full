let slides = document.querySelector('.slides');
let slideImg = document.querySelectorAll('.slides li');
let slideTexts = document.querySelectorAll('.slides li .slide-text'); // 새로운 텍스트 컨테이너 선택
currentIdx = 0;
slideCount = slideImg.length; // 이미지 수에 따라 수정
prev = document.querySelector('.prev'); //이전 버튼
next = document.querySelector('.next'); //다음 버튼
slideWidth = 500; //슬라이드이미지 넓이
slideMargin = 0; //슬라이드 끼리의 마진값
makeClone(); // 처음이미지와 마지막 이미지 복사 함수
initfunction(); //슬라이드 넓이와 위치값 초기화 함수


function makeClone() {
	let cloneSlide_first = slideImg[0].cloneNode(true);
	let cloneSlide_last = slides.lastElementChild.cloneNode(true);
	slides.append(cloneSlide_first);
	slides.insertBefore(cloneSlide_last, slides.firstElementChild);
}

function initfunction() {
	slides.style.width = (slideWidth + slideMargin) * (slideCount + 2) + 'px';
	slides.style.left = -(slideWidth + slideMargin) + 'px';
	document.querySelector('.indicator').classList.add('active');
}


function updateSlideWidth() {
  let slideItems = document.querySelectorAll('.slides li');
  slideItems.forEach(function(slideItem) {
    slideItem.style.width = slideWidth + 'px';
  });
}
// 초기에 이미지 크기 업데이트
updateSlideWidth();

// 창 크기가 변경될 때 이미지 크기를 업데이트
window.addEventListener('resize', function() {
  updateSlideWidth();
});


next.addEventListener('click', function() {
	//다음 버튼 눌렀을때
	if (currentIdx <= slideCount - 1) {
		//슬라이드이동
		slides.style.left = -(currentIdx + 2) * (slideWidth + slideMargin) + 'px';
		slides.style.transition = `${0.5}s ease-out`; //이동 속도
	}
	if (currentIdx === slideCount - 1) {
		//마지막 슬라이드 일때
		setTimeout(function() {
			//0.5초동안 복사한 첫번째 이미지에서, 진짜 첫번째 위치로 이동
			slides.style.left = -(slideWidth + slideMargin) + 'px';
			slides.style.transition = `${0}s ease-out`;
		}, 500);
		currentIdx = -1;
	}
	currentIdx += 1;
	
	let indicators = document.querySelectorAll('.indicator');
  indicators.forEach(indicator => {
    indicator.classList.remove('active');
  });
  indicators[currentIdx].classList.add('active');
});


prev.addEventListener('click', function() {
	//이전 버튼 눌렀을때
	console.log(currentIdx);
	if (currentIdx >= 0) {
		slides.style.left = -currentIdx * (slideWidth + slideMargin) + 'px';
		slides.style.transition = `${0.5}s ease-out`;
	}
	if (currentIdx === 0) {
		setTimeout(function() {
			slides.style.left = -slideCount * (slideWidth + slideMargin) + 'px';
			slides.style.transition = `${0}s ease-out`;
		}, 500);
		currentIdx = slideCount;
	}
	currentIdx -= 1;
	
	// 이미지가 클릭되었으므로, 인디케이터 활성 클래스 업데이트
  let indicators = document.querySelectorAll('.indicator');
  indicators.forEach(indicator => {
    indicator.classList.remove('active');
  });
  indicators[currentIdx].classList.add('active');
});


// 이벤트 처리기 함수를 만듭니다.
function moveSlide(index) {
  currentIdx = index; // 현재 슬라이드 인덱스를 업데이트합니다.
  slides.style.left = -(index + 1) * (slideWidth + slideMargin) + 'px';
  slides.style.transition = `${0.5}s ease-out`; // 슬라이드 이동 속도

  // 인디케이터 버튼들을 모두 선택합니다.
  let indicators = document.querySelectorAll('.indicator');

  // 모든 인디케이터에서 활성 클래스를 제거합니다.
  indicators.forEach(indicator => {
    indicator.classList.remove('active');
  });

  // 현재 인디케이터에 활성 클래스를 추가합니다.
  indicators[index].classList.add('active');
}

// 인디케이터 버튼에 이벤트 처리기를 추가합니다.
document.querySelectorAll('.indicator').forEach((indicator, index) => {
  indicator.addEventListener('click', () => {
    moveSlide(index);
  });
});



