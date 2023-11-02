<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join.jsp</title>
</head>
<body>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron">
				<form method="post" action="joinAction">
					<h2>회원가입</h2>
					<div class="form-group">
						<input type="text" class="form-control" name="userID"
							placeholder="아이디" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="userPassword"
							placeholder="비밀번호" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="userName"
							placeholder="이름" maxlength="20">
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn-prymary acrive"> <input type="radio"
								name="userGender" aurocomplete="off" value="남자"
								checked="checked">남자
							</label> <label class="btn-prymary"> <input type="radio"
								name="userGender" aurocomplete="off" value="여자">여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" name="userEmail" placeholder="이메일" maxlength="50">
					</div>
					<input type="submit" class="btn-primaty-form-control" value="회원가입">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<hr>

</body>
</html>