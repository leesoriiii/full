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
  place-items: center;
  height: 100vh;

}
h1 {
	text-align: center;
}
hr {
  border: none; /* 기본 테두리 제거 */
  border-top: 1px solid  #faa821; 
  width: 81%; /* 가로 너비 */
  margin-top: 20px;
  margin-bottom: 20px;
}
img {
	display: block;
	margin: 0 auto;
}
input {
  display: block;
  margin: 0 auto;
}

</style>
 <script>
    function clearValue(inputElement, defaultValue) {
      if (inputElement.value === defaultValue) {
        inputElement.value = '';
      }
    }
    
    function restoreValue(inputElement, defaultValue) {
      if (inputElement.value === '') {
        inputElement.value = defaultValue;
      }
    }
  </script>
</head>
<body>
	<section>
		<a href="http://localhost:8081"> <img id="full_shap_logo"
			src="../img/full_shap_logo.png" alt="가득샵 로고">
		</a>
		<hr>
		<h1>로그인</h1>
		<c:if test="${param.error == ''}">
			<div>사용자 ID 또는 비밀번호를 확인 해 주세요</div>
		</c:if>
		<form action="/login" method="POST">
			<input id="id" name="username" value="아이디를 입력 해 주세요."
				onfocus="clearValue(this, '아이디를 입력 해 주세요.')"
				onblur="restoreValue(this, '아이디를 입력 해 주세요.')"><br> <input
				id="pw" name="password" value="비밀번호를 입력 해 주세요."
				onfocus="clearValue(this, '비밀번호를 입력 해 주세요.')"
				onblur="restoreValue(this, '비밀번호를 입력 해 주세요.')"><br> <input
				type="submit" />
		</form>
		<hr>
	</section>
	<span>회원가입 | 아이디 찾기 | 비밀번호 찾기</span>

</body>
</html>