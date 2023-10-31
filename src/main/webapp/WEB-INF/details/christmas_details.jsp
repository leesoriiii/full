<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>best.jsp</title>
<link rel="stylesheet" href="../css/christmas_details.css">
</head>
<body>
<div class="total">

<div id="slideShow">
  <ul class="slides">
    <li>
    <div class="slide-content">
    		<img src="../img(details)/christmas1.png" alt="Image 1" id="img">
		</a>
    </div>
    </li>
    <li>
	<div class="slide-content">
    	<img src="../img(details)/christmas2.png" alt="Image 2" id="img">
    </div>    
    </li>
    <li>
	<div class="slide-content">
    	<img src="../img(details)/christmas3.png" alt="Image 3" id="img">
    </div>    
    </li>
    <li>
	<div class="slide-content">
    	<img src="../img(details)/christmas4.png" alt="Image 4" id="img">
    </div>    
    </li>
    <li>
 	<div class="slide-content">
   		<img src="../img(details)/christmas5.png" alt="Image 5" id="img">
    </div>   
    </li>
  </ul> 
  <p class="controller">
  <span class="prev">&lang;</span>  
  <span class="next">&rang;</span>
  </p>
</div>

<div class="indicators">
  <button data-slide-index="0" class="indicator"></button>
  <button data-slide-index="1" class="indicator"></button>
  <button data-slide-index="2" class="indicator"></button>
  <button data-slide-index="3" class="indicator"></button>
  <button data-slide-index="4" class="indicator"></button>
</div>

<div class="details">
<h3>화이트 크리스마스 케이프 강아지 고양이 뜨개 스카프 옷</h3>
<h4 style="text-align: right;">30,000원</h4>
<h5 style="text-align: right;">택배 배송 3,000원(주문시 결제)</h5>
<br>
<form action="주문처리.php" method="post">
     <select name="option1" id="option1" onchange="showSelection()">
        <option value="사이즈 선택" selected>사이즈 선택</option>
        <option value="Free(20-50cm 끈제작)" data-price="0">Free(20-50cm 끈제작)</option>
        <option value="XS(15cm)" data-price="0">XS(15cm)</option>
        <option value="S(20cm)" data-price="0">S(20cm)</option>
        <option value="M(25cm)" data-price="0">M(25cm)</option>
        <option value="L(30cm)" data-price="0">L(30cm)</option>
        <option value="XL(35cm)" data-price="2000">XL(35cm) (+2,000원)</option>
    </select>
    <br>
    <select name="option2" id="option2" onchange="showSelection()">
        <option value="색상 선택" selected>색상 선택</option>
        <option value="레드" data-price="0">레드</option>
        <option value="그린" data-price="0">그린</option>
    </select>
    <select name="option3" id="option3" onchange="showSelection2()">
        <option value="추가 옵션" selected>추가 옵션</option>
        <option value="뜨개 루돌프핀 추가(+4,000원)"  data-price="4000">뜨개 루돌프핀 추가(+4,000원)</option>
        <option value="뜨개 트리핀 추가(+4,000원)"  data-price="4000">뜨개 트리핀 추가(+4,000원)</option>
        <option value="눈꽃 리본핀(레드) 추가(+4,000원)"  data-price="4000">눈꽃 리본핀(레드) 추가(+4,000원)</option>
        <option value="눈꽃 리본핀(그린) 추가(+4,000원)"  data-price="4000">눈꽃 리본핀(그린) 추가(+4,000원)</option>
    </select>
    <hr id="optionHr">
<div id="selected_options"></div>
<br>
<p>총 상품 금액<span id="total_amount" class="total-amount">0원</span></p>

 <br>
    <input id="submit1" type="submit" value="장바구니">
    <input id="submit2" type="submit" value="구매하기">
</form>
</div>
</div>
<br>
<hr id="optionHr">
<img src="../img(details)/christmas.png" alt="Details Page Image" style="margin-top:50px;">



<div id="header">
		<hr>
		<p style="margin-left:10px; font-size: 14px; font-weight: bold; color: #FCDEAB;">가득샵<br>
		<span id="Business" style="font-size: 12px;">
		상호명: 가득샵 | 대표: 이소리<br>
		사업자등록번호: 372-05-02494 | 통신판매업 2022-인천계양-0631<br>
		주소: 인천광역시 계양구 경명대로 1058, 302-1336호(계산동)
		</span>
		</p>
	</div>
	
<script src="../js/christmas_details.js"></script>
</body>
</html>