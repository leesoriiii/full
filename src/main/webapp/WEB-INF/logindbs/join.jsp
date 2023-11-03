<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join.jsp</title>
<link rel="icon" href="../img/favicon.png">
<style type="text/css">
@font-face {
font-family: 'UhBeeRami';
src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_five@.2.0/UhBeeRami.woff') format('woff');
font-weight: normal;
font-style: normal;
}
body {
	align-content:center;
	display: grid;
	height: 90vh;
}
img {
	margin: 0 auto;
  display: block;
  margin-bottom: 30px;
}

hr {
	border: none; /* 기본 테두리 제거 */
	border-top: 2px solid #faa821;
	width: 250px; /* 가로 너비 */
}
div {
	text-align: center; /* 가운데 정렬 */
	margin-bottom: 20px;
	font-size: 12px;
	font-weight: bold;
}
.button {
	height:35px;
	width: 220px;
	background-color: #FCDEAB;
	border: 1px solid #FBA720;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s, border 0.3s;
	color: #FBA720;
	font-weight: bold;
	margin-bottom: 20px;
}
.button:hover {
	background-color: #FBA720;
	border: 1px solid #FBA720;
	color: #ffffff;
}

.id, .pw, .name, .email, .gender {
	height:25px;
	width: 200px;
	align-content: center;
	display: block;
	margin: auto;
	margin-bottom: -10px;
}
.container {
  text-align: center;
}
</style>
</head>
<body>
	<div class="container">
				<form method="post" action="joinAction">
				<a href="/"> <img id="full_shap_logo"
					src="../img/full_shap_logo.png" alt="가득샵 로고">
				</a>
					<div class="form-group">
						<input type="text" class="id" name="userID"
							placeholder="아이디" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="pw" name="userPassword"
							placeholder="비밀번호" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="name" name="userName"
							placeholder="이름" maxlength="20">
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="gender" data-toggle="buttons">
							<label class="btn-prymary acrive"> <input type="radio"
								name="userGender" aurocomplete="off" value="남자"
								checked="checked">남자
							</label> <label class="btn-prymary"> <input type="radio"
								name="userGender" aurocomplete="off" value="여자">여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="email" name="userEmail" placeholder="이메일" maxlength="50">
					</div>
					<input type="submit" class="button" value="회원가입">
				</form>
				</div>

</body>
</html>