<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cube.jsp</title>
<style type="text/css">
@font-face{
font-family:'DNFBitBitv2';
font-style:normal;font-weight:400;src:url('//cdn.df.nexon.com/img/common/font/DNFBitBitv2.otf')format('opentype')}
body {
	margin: 100px;
	background-color: #FCDEAB;
	display: flex;
 	flex-direction: column;
    justify-content: center;
	justify-content: center;
    align-items: center;
}


</style>
</head>
<body>
<hr>
<h1 id="heading">문의게시판</h1>

<div class="container">
		<div class="row">
			<table class="table_striped" style="text-align: center; border: 1px solid #00000; width: 500px;">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td><td>안녕하세요</td><td>홍길동</td><td>2017-05-04</td>
					</tr>
					<tr>
						<td>1</td><td>안녕하세요</td><td>홍길동</td><td>2017-05-04</td>
					</tr>
					<tr>
						<td>1</td><td>안녕하세요</td><td>홍길동</td><td>2017-05-04</td>
					</tr>
					<tr>
						<td>1</td><td>안녕하세요</td><td>홍길동</td><td>2017-05-04</td>
					</tr>
				</tbody>
			</table>
			<a href="write.jsp" class="btn-primary">글쓰기</a>
		</div>
	</div>
</body>
</html>