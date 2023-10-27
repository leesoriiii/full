<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>best.jsp</title>
<link rel="stylesheet" href="../css/julmi_details.css">
</head>
<body>
<h1 id="heading">절미 상세페이지</h1>
<div class="total">
<div class="details">
<h3>나만의 작은 애착인형 절미 <br>키링 스마트톡 핸드폰고리 악세사리</h3>
<hr>
8,000원(배송비 3,000원 주문시 결제)<br>
<hr>

<form action="주문처리.php" method="post">
     <select name="version" id="version" onchange="showSelection()">
        <option value="버전선택" selected>버전 선택</option>
        <option value="스마트톡">스마트톡</option>
        <option value="군번줄">군번줄</option>
        <option value="핸드폰고리">핸드폰고리</option>
    </select>
    <select name="outer" id="outer" onchange="showSelection()">
        <option value="외형선택" selected>외형 선택</option>
        <option value="기본(5cm)" data-price="0">기본(5cm)</option>
        <option value="고양이(5cm)" data-price="1000">고양이(5cm) (+1,000원)</option>
        <option value="토끼(5cm)" data-price="1000">토끼(5cm) (+1,000원)</option>
        <option value="기본(8cm)" data-price="2000">기본(8cm) (+2,000원)</option>
        <option value="고양이(8cm)" data-price="3000">고양이(8cm) (+3,000원)</option>
    </select>
    <br><br>
    
    
<div id="selected_options"></div>
 <br>
    <input type="submit" value="주문하기">
</form>
</div>
<div id="slideShow">
  <ul class="slides">
    <li>
    <div class="slide-content">
    	<a href="/details/julmi_details" target="content" style="text-decoration: none;"> 
    		<img src="../img/julmi.png" alt="Image 1" id="img">
		</a>
    </div>
    </li>
    <li>
	<div class="slide-content">
    	<img src="../img/kkul_Wallet.png" alt="Image 2" id="img">
    </div>    
    </li>
    <li>
	<div class="slide-content">
    	<img src="../img/snow_princess.png" alt="Image 3" id="img">
    </div>    
    </li>
    <li>
	<div class="slide-content">
    	<img src="../img/Tropical.png" alt="Image 4" id="img">
    </div>    
    </li>
    <li>
 	<div class="slide-content">
   		<img src="../img/tulip_wallet.png" alt="Image 5" id="img">
    </div>   
    </li>
    <li>
	<div class="slide-content">
    	<img src="../img/Romance.png" alt="Image 6" id="img">
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
  <button data-slide-index="5" class="indicator"></button>
</div>
</div>


<hr>
<img src="../img(details)/julmi.png" alt="Details Page Image" style="margin-top:50px;">



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
	
<script src="../js/julmi_details.js"></script>
</body>
</html>