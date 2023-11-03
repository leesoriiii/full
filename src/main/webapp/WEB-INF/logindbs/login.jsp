<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login.jsp</title>
<link rel="icon" href="../img/favicon.png">
<style type="text/css">

section {
	width: 50%;
	margin: auto;
	
}

fieldset {
	margin: 20px 0px;
}


body {
	display: grid;
	height: 90vh;
}

h1 {
	text-align: center;
}

hr {
	border: none; /* 기본 테두리 제거 */
	border-top: 2px solid #faa821;
	width: 250px; /* 가로 너비 */
}

img {
	display: block;
	margin: 0 auto;
	margin-bottom: 20px;
}

input {
	padding: 0.5em;
	display: block;
	margin: 0 auto;
}

div {
	text-align: center; /* 가운데 정렬 */
	margin-bottom: 20px;
	font-size: 12px;
	font-weight: bold;
}

.button {
	width: 220px;
	background-color: #FCDEAB;
	border: 1px solid #FBA720;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s, border 0.3s;
	color: #FBA720;
	font-weight: bold;
}

.button:hover {
	background-color: #FBA720;
	border: 1px solid #FBA720;
	color: #ffffff;
}
span {
	display: block;
  text-align: center;
  font-size: 12px;
}
#id {
	margin-bottom: -10px;
}


#id, #pw {
	width: 200px;
}
section {
	width: 50%;
	margin: auto;
}
a:hover { 
	color : inherit;
	text-decoration: underline;
	
}
a { 
	color : inherit;
	text-decoration: none;
}
</style>
</head>
<body>
<section>
	<div class="container">
				<form method="post" action="loginAction">
				<a href="/"> <img id="full_shap_logo"
					src="../img/full_shap_logo.png" alt="가득샵 로고">
				</a>
				<div class="form-group">
					<input id=id type="text" class="form-control" name="userID"
						placeholder="아이디를 입력 해 주세요." maxlength="20">
				</div>
				<div class="form-group">
					<input id=pw type="password" class="form-control" name="userPassword"
						placeholder="비밀번호를 입력 해 주세요." maxlength="20">
				</div>
				<input type="submit" class="button" value="로그인">
				</form>
		</div>
	<hr>
	<span><a href="/logindbs/join">회원가입</a> | 아이디 찾기 | 비밀번호 찾기</span>
		</section>

</body>
</html>