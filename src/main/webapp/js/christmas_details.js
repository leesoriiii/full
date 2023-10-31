let slides = document.querySelector('.slides');
let slideImg = document.querySelectorAll('.slides li');
let slideTexts = document.querySelectorAll('.slides li .slide-text'); // 새로운 텍스트 컨테이너 선택
currentIdx = 0;
slideCount = slideImg.length; // 이미지 수에 따라 수정
prev = document.querySelector('.prev'); //이전 버튼
next = document.querySelector('.next'); //다음 버튼
slideWidth = 600; //슬라이드이미지 넓이
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



var options = {}; // 옵션을 담는 객체
var basicPrice = 30000;
var basicPrice2 = 30000;


// 페이지 로드 시에 <hr> 숨기기
document.getElementById('optionHr').style.display = 'none';
//옵션이 추가될때
function showSelection() {
   var option1 = document.getElementById('option1').value;
  var option2 = document.getElementById('option2').value;

  if (option1 !== '사이즈 선택' && option2 !== '색상 선택') {
    var selectedOptions = document.getElementById('selected_options');

    // 옵션을 추가
    var optionKey = option1 + '_' + option2; // 각 옵션을 식별하는 키
    options[optionKey] = options[optionKey] || { price: 0, quantity: 0 };
    options[optionKey].price = parseInt(document.getElementById('option2').options[document.getElementById('option2').selectedIndex].dataset.price);
    options[optionKey].quantity += 1;

    var newOption = document.createElement('div');
    newOption.innerHTML = '사이즈: ' + option1 + ' / 색상: ' + option2 + ' <input id="remove" type="button" value=" ✕ " onclick="removeOption(\'' + optionKey + '\')"> <br><span id="amount_' 
    						+ optionKey + '">' + ((basicPrice + options[optionKey].price) * options[optionKey].quantity) + '원 </span> <input id="minMax" type="button" value="-" onclick="changeQuantity(\'' 
    						+ optionKey + '\', -1)"> <span id="quantity_' + optionKey + '">' + options[optionKey].quantity + '</span> <input id="minMax" type="button" value="+" onclick="changeQuantity(\'' 
    						+ optionKey + '\', 1)"><hr id="optionHr">';

    newOption.style.textAlign = 'right';
    selectedOptions.appendChild(newOption);

    // 옵션 선택란 초기화
    document.getElementById('option1').value = '사이즈 선택';
    document.getElementById('option2').value = '색상 선택';
    
    // 옵션 추가 시 총 금액 업데이트
    updateTotalAmount();
    
    // <hr> 표시
    document.getElementById('optionHr').style.display = 'block';
    
    // 옵션 삭제 버튼 추가
    var deleteButton = document.createElement('button');
    deleteButton.type = 'button';
    deleteButton.onclick = function() {
      removeOption(optionKey);
    };
    newOption.appendChild(deleteButton);
    newOption.id = optionKey; // 옵션을 구별하기 위한 ID 설정

    // - 버튼 비활성화 처리
    var minusButton = newOption.querySelector('input[value="-"]');
    if (options[optionKey].quantity === 1) {
      minusButton.disabled = true;
    }
  }
}

function showSelection2() {
	var option3 = document.getElementById('option3').value;
	
	if (option3 !== '추가옵션') {
    var selectedOptions = document.getElementById('selected_options');
	
	 // 옵션을 추가
    var optionKey = 'option3_' + option3; // 각 옵션을 식별하는 키 이게뭔지잘모르겠음
    options[optionKey] = options[optionKey] || { price: 0, quantity: 0 };
    options[optionKey].price = parseInt(document.getElementById('option3').options[document.getElementById('option3').selectedIndex].dataset.price);
    options[optionKey].quantity += 1;

	 var newOption = document.createElement('div');
    newOption.innerHTML = '추가옵션: ' + option3 + ' <input id="remove" type="button" value=" ✕ " onclick="removeOption(\'' + optionKey + '\')"> <br><span id="amount_' 
    						+ optionKey + '">' + (basicPrice2 * options[optionKey].quantity) + '원 </span> <input id="minMax" type="button" value="-" onclick="changeQuantity(\'' 
    						+ optionKey + '\', -1)"> <span id="quantity_' + optionKey + '">' + options[optionKey].quantity + '</span> <input id="minMax" type="button" value="+" onclick="changeQuantity(\'' 
    						+ optionKey + '\', 1)"><hr id="optionHr">';

    newOption.style.textAlign = 'right';
    selectedOptions.appendChild(newOption);
    
	// 옵션 선택란 초기화
    document.getElementById('option3').value = '추가 옵션';
    
    // 옵션 추가 시 총 금액 업데이트
    updateTotalAmount();
    
    // <hr> 표시
    document.getElementById('optionHr').style.display = 'block';
	
	// 옵션 삭제 버튼 추가
    var deleteButton = document.createElement('button');
    deleteButton.type = 'button';
    deleteButton.onclick = function() {
      removeOption(optionKey);
    };
    newOption.appendChild(deleteButton);
    newOption.id = optionKey; // 옵션을 구별하기 위한 ID 설정

    // - 버튼 비활성화 처리
    var minusButton = newOption.querySelector('input[value="-"]');
    if (options[optionKey].quantity === 1) {
      minusButton.disabled = true;
}
}
}



function removeOption(optionKey) {
  if (options[optionKey]) {
    var optionElement = document.getElementById(optionKey);
    optionElement.parentNode.removeChild(optionElement);
    delete options[optionKey]; // 옵션 객체에서 해당 옵션 삭제
    updateTotalAmount(); // 총 금액 업데이트
  }
}

function changeQuantity(optionKey, value) {
 if (options[optionKey]) {
    options[optionKey].quantity += value;
    if (options[optionKey].quantity >= 1 && options[optionKey].quantity <= 99) {
      var quantityElement = document.getElementById('quantity_' + optionKey);
      quantityElement.innerText = options[optionKey].quantity;
      var totalPrice = (basicPrice + options[optionKey].price) * options[optionKey].quantity;
      document.getElementById('amount_' + optionKey).innerText = totalPrice + '원 ';
      updateTotalAmount(); // 총 금액 업데이트

      // - 버튼 비활성화 처리
      var minusButton = document.getElementById(optionKey).querySelector('input[value="-"]');
      minusButton.disabled = options[optionKey].quantity === 1;

    }
  }
}
function updateTotalAmount() {
  var totalAmount = 0;

  for (var optionKey in options) {
    if (options.hasOwnProperty(optionKey)) {
      totalAmount += (basicPrice + options[optionKey].price) * options[optionKey].quantity;
    }
  }

  // 총 금액 업데이트
  document.getElementById('total_amount').innerText = totalAmount + '원';
 
}




