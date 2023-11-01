<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login.jsp</title>
<style type="text/css">
section {
	width: 50%;
	margin: auto;
}

fieldset {
	margin: 20px 0px;
}

input {
	padding: 0.5em;
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
	margin-top: 20px;
	margin-bottom: 20px;
}

img {
	display: block;
	margin: 0 auto;
	margin-bottom: 50px;
}

input {
	display: block;
	margin: 0 auto;
}

div {
	text-align: center; /* 가운데 정렬 */
	margin-bottom: 20px;
	font-size: 12px;
	font-weight: bold;
}

#button {
	width: 220px;
	background-color: #FCDEAB;
	border: 1px solid #FBA720;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s, border 0.3s;
	color: #FBA720;
	font-weight: bold;
}

#button:hover {
	background-color: #FBA720;
	border: 1px solid #FBA720;
	color: #ffffff;
}

span {
	display: block; /* 블록 수준 요소로 변경하여 다른 요소와 독립적으로 배치 */
	text-align: center; /* 가운데 정렬 */
	margin-top: 20px; /* 원하는 여백을 지정 */
	font-size: 12px;
}

#id {
	margin-bottom: 10px;
}

#id, #pw {
	width: 200px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron">
				<form method="post" action="loginAction">
				<a href="http://localhost:8081"> <img id="full_shap_logo"
					src="../img/full_shap_logo.png" alt="가득샵 로고">
				</a>
				<div class="form-group">
					<input type="text" class="form-control" name="userID"
						placeholder="아이디를 입력 해 주세요." maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" name="userPassword"
						placeholder="비밀번호를 입력 해 주세요." maxlength="20">
				</div>
				<input type="submit" class="btn-primaty-form-control" value="로그인">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<hr>
	<span>회원가입 | 아이디 찾기 | 비밀번호 찾기</span>

</body>
</html>